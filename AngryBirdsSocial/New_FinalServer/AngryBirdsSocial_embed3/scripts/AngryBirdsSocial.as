package
{
   import com.AngryBirds.LevelItemsData.LevelItems;
   import com.AngryBirds.LevelPlayer.LevelMain;
   import com.AngryBirds.io.AngryBirdsExternalInterface;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.model.UIDataModel;
   import com.AngryBirds.model.UserInfoModel;
   import com.AngryBirds.model.UserStatisticsModel;
   import com.AngryBirds.states.StateLevelEditor;
   import com.AngryBirds.states.StateLevelEditorStart;
   import com.AngryBirds.states.StateLevelLoad;
   import com.AngryBirds.states.StateLevelOfTheDay;
   import com.AngryBirds.states.StateLevelOverFail;
   import com.AngryBirds.states.StateLevelOverVictory;
   import com.AngryBirds.states.StateLevelPause;
   import com.AngryBirds.states.StateLevelPlay;
   import com.AngryBirds.states.StateLevelStart;
   import com.AngryBirds.states.StateLoginPage;
   import com.rovio.BasicGame;
   import com.rovio.factory.FPSMeter;
   import com.rovio.factory.Log;
   import com.rovio.model.UserModel;
   import com.rovio.model.XMLDataModel;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import flash.external.ExternalInterface;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import flashx.textLayout.formats.TextAlign;
   
   [SWF(frameRate="60",backgroundColor="#505050",width="700",height="420")]
   public class AngryBirdsSocial extends BasicGame
   {
      
      public static var VERSION_NUMBER:String = "Friday 04/15";
      
      public static const RUN_AS_EMBED_PLAYER:Boolean = true;
      
      public static var SCREEN_WIDTH:int = !!RUN_AS_EMBED_PLAYER ? int(350) : int(700);
      
      public static var SCREEN_HEIGHT:int = !!RUN_AS_EMBED_PLAYER ? int(210) : int(420);
      
      public static var USER:UserModel;
      
      public static var UIDATA:UIDataModel;
      
      public static var USER_STATS:UserStatisticsModel;
      
      public static var XMLDATA:XMLDataModel;
      
      public static var FRIENDS_LIST:Array;
      
      public static var USER_INFO:UserInfoModel;
      
      public static const DEBUG_MODE_ENABLED:Boolean = true;
      
      public static const LINE_BREAK_XML:String = "\n";
      
      public static var smLevelMain:LevelMain;
      
      public static var smEditorMode:Boolean = false;
      
      public static var smReload:Boolean = false;
      
      public static var smReloadStateName:String = null;
      
      public static var smFpsMeter:FPSMeter;
      
      public static var mVersionNumberTextField:TextField;
      
      public static var mCoins:int = -1;
      
      public static var mExperience:int = -1;
      
      public static var mGoldenEggs:int = -1;
      
      public static var mLevel:int = -1;
      
      public static var loadingMetaData:Boolean = false;
       
      
      public function AngryBirdsSocial()
      {
         AngryBirdsServer.initServerConfiguration();
         super();
         addCallBackFunctionsToInitialLoadingState(this.constructLevelMain);
         addCallBackFunctionsToInitialLoadingState(this.loadLevelStates);
         addCallBackFunctionsToInitialLoadingState(this.initLevelItemsData);
         smFpsMeter = new FPSMeter(true,this);
         this.createVersionNumber();
         if(!USER)
         {
            USER = new UserModel();
         }
         if(!USER_INFO)
         {
            USER_INFO = new UserInfoModel();
         }
         USER_STATS = new UserStatisticsModel();
         AngryBirdsServer.initCommands();
         AngryBirdsExternalInterface.init();
         AngryBirdsExternalInterface.getSessionInfo();
         AngryBirdsExternalInterface.getUserFacebookInfo();
         Log.setDisplayContainer(this);
         Log.setInputEnabled(true);
      }
      
      public static function getUserInfo(username:String) : UserInfoModel
      {
         var info:UserInfoModel = null;
         if(username == AngryBirdsSocial.USER_INFO.userName)
         {
            return AngryBirdsSocial.USER_INFO;
         }
         if(FRIENDS_LIST == null)
         {
            FRIENDS_LIST = new Array();
         }
         for each(info in FRIENDS_LIST)
         {
            if(info.userName == username)
            {
               return info;
            }
         }
         return null;
      }
      
      public static function addUserInfo(info:UserInfoModel) : void
      {
         if(FRIENDS_LIST == null)
         {
            FRIENDS_LIST = new Array();
         }
         FRIENDS_LIST.push(info);
      }
      
      public static function generateTimeLeftStr(endTime:Number) : String
      {
         var timeLeft:int = endTime - getTimer();
         if(timeLeft < 0)
         {
            timeLeft = 0;
         }
         var seconds:int = timeLeft / 1000 % 60;
         var minutes:int = timeLeft / 60000 % 60;
         var hours:int = timeLeft / 3600000 % 24;
         var days:int = timeLeft / 86400000;
         var str:String = "";
         if(days > 0)
         {
            str += days + "d ";
         }
         if(hours > 0 || days > 0)
         {
            str += hours + "h ";
         }
         str += minutes + "min ";
         return str + (seconds + "s");
      }
      
      public static function setCoins(value:uint) : void
      {
         if(mCoins != value)
         {
            AngryBirdsExternalInterface.updateCoins(value);
         }
         mCoins = value;
      }
      
      public static function setExperience(value:uint) : void
      {
         if(mExperience != value)
         {
            AngryBirdsExternalInterface.updateXp(value);
         }
         mExperience = value;
      }
      
      public static function setGoldenEggs(value:uint) : void
      {
         if(mGoldenEggs != value)
         {
            AngryBirdsExternalInterface.updateGoldenEggs(value);
         }
         mGoldenEggs = value;
      }
      
      public static function setLevel(value:uint) : void
      {
         if(mLevel != value)
         {
            AngryBirdsExternalInterface.updateLevel(value);
         }
         mLevel = value;
      }
      
      public static function updateMetaGameData() : void
      {
         if(!loadingMetaData)
         {
            AngryBirdsServer.getMetaGameData(metaDataReceived);
            loadingMetaData = true;
         }
      }
      
      public static function metaDataReceived(response:Object) : void
      {
         AngryBirdsSocial.setCoins(response.coin);
         AngryBirdsSocial.setExperience(response.experience);
         AngryBirdsSocial.setGoldenEggs(response.goldenEgg);
         AngryBirdsSocial.setLevel(response.level);
         loadingMetaData = false;
      }
      
      public function constructLevelMain() : void
      {
         AngryBirdsSocial.smLevelMain = new LevelMain();
      }
      
      public function loadLevelStates() : void
      {
         addState(new StateLevelLoad(false));
         addState(new StateLevelStart(false));
         addState(new StateLevelPause(false));
         addState(new StateLevelPlay(false));
         addState(new StateLevelOverVictory(false));
         addState(new StateLevelOverFail(false));
         addState(new StateLoginPage(false));
         addState(new StateLevelEditorStart(false));
         addState(new StateLevelEditor(false));
         addState(new StateLevelOfTheDay(false));
      }
      
      public function initLevelItemsData() : void
      {
         LevelItems.loadItems();
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         var nextStateHint:int = 0;
         smFpsMeter.update(deltaTime);
         var returnValue:int = super.updateState(deltaTime);
         if(!getCurrentStateObject().isGenericState())
         {
            if(smReload)
            {
               smReload = false;
               if(smReloadStateName)
               {
                  this.setNextState(smReloadStateName);
                  smReloadStateName = null;
               }
               else
               {
                  this.setNextState(StateLevelLoad.STATE_NAME);
               }
            }
            else if(returnValue == StateBase.STATE_STATUS_COMPLETED)
            {
               Log.log("AngryBirdSocial::run() state change is about to start. Old State = " + getCurrentStateObject().mName + " New State = " + getCurrentStateObject().mNextState);
               this.setNextState(getCurrentStateObject().mNextState);
            }
         }
         return returnValue;
      }
      
      override public function setNextState(newState:String) : void
      {
         super.setNextState(newState);
         if(smFpsMeter)
         {
            smFpsMeter.reset(false);
         }
         if(newState == StateLevelPlay.STATE_NAME)
         {
            smLevelMain.mLevelBackground.playBackgroundMusic();
         }
         else if(newState == StateLevelLoad.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
         }
         else if(newState == StateLevelPause.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
         }
         else if(newState == StateLevelOverVictory.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
            SoundEngine.playSoundFromVariation("LevelCompletedBirdsMilitary2");
            SoundEngine.playSoundFromVariation("LevelCompletedTheme1");
         }
         else if(newState == StateLevelOverFail.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
            SoundEngine.playSoundFromVariation("LevelFailedPigs2");
         }
      }
      
      override public function setFirstGameState() : void
      {
         if(!ExternalInterface.available)
         {
            this.setNextState(StateLoginPage.STATE_NAME);
         }
         else
         {
            this.setNextState(StateLevelLoad.STATE_NAME);
         }
         smReload = false;
      }
      
      public function createVersionNumber() : void
      {
         mVersionNumberTextField = new TextField();
         var dft:TextFormat = mVersionNumberTextField.defaultTextFormat;
         dft.align = TextAlign.RIGHT;
         mVersionNumberTextField.defaultTextFormat = dft;
         mVersionNumberTextField.border = false;
         mVersionNumberTextField.text = VERSION_NUMBER;
         mVersionNumberTextField.height = 20;
         mVersionNumberTextField.width = 200;
         mVersionNumberTextField.textColor = 16711680;
         mVersionNumberTextField.selectable = false;
         mVersionNumberTextField.x = SCREEN_WIDTH - mVersionNumberTextField.width;
         addChild(mVersionNumberTextField);
         mVersionNumberTextField.mouseEnabled = false;
      }
   }
}
