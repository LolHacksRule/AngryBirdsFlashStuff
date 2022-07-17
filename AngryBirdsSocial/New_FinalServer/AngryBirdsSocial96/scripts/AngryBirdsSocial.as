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
   
   public class AngryBirdsSocial extends BasicGame
   {
      
      public static var VERSION_NUMBER:String = "Friday 04/15";
      
      public static const RUN_AS_EMBED_PLAYER:Boolean = false;
      
      public static var SCREEN_WIDTH:int = !!RUN_AS_EMBED_PLAYER ? 350 : 700;
      
      public static var SCREEN_HEIGHT:int = !!RUN_AS_EMBED_PLAYER ? 210 : 420;
      
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
      
      public static var smSoundsEnabled:Boolean = true;
      
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
      
      public static function getUserInfo(param1:String) : UserInfoModel
      {
         var _loc2_:UserInfoModel = null;
         if(param1 == AngryBirdsSocial.USER_INFO.userName)
         {
            return AngryBirdsSocial.USER_INFO;
         }
         if(FRIENDS_LIST == null)
         {
            FRIENDS_LIST = new Array();
         }
         for each(_loc2_ in FRIENDS_LIST)
         {
            if(_loc2_.userName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function addUserInfo(param1:UserInfoModel) : void
      {
         if(FRIENDS_LIST == null)
         {
            FRIENDS_LIST = new Array();
         }
         FRIENDS_LIST.push(param1);
      }
      
      public static function generateTimeLeftStr(param1:Number) : String
      {
         var _loc2_:int = param1 - getTimer();
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         var _loc3_:int = _loc2_ / 1000 % 60;
         var _loc4_:int = _loc2_ / 60000 % 60;
         var _loc5_:int = _loc2_ / 3600000 % 24;
         var _loc6_:int = _loc2_ / 86400000;
         var _loc7_:String = "";
         if(_loc6_ > 0)
         {
            _loc7_ += _loc6_ + "d ";
         }
         if(_loc5_ > 0 || _loc6_ > 0)
         {
            _loc7_ += _loc5_ + "h ";
         }
         return (_loc7_ += _loc4_ + "min ") + (_loc3_ + "s");
      }
      
      public static function setCoins(param1:uint) : void
      {
         if(mCoins != param1)
         {
            AngryBirdsExternalInterface.updateCoins(param1);
         }
         mCoins = param1;
      }
      
      public static function setExperience(param1:uint) : void
      {
         if(mExperience != param1)
         {
            AngryBirdsExternalInterface.updateXp(param1);
         }
         mExperience = param1;
      }
      
      public static function setGoldenEggs(param1:uint) : void
      {
         if(mGoldenEggs != param1)
         {
            AngryBirdsExternalInterface.updateGoldenEggs(param1);
         }
         mGoldenEggs = param1;
      }
      
      public static function setLevel(param1:uint) : void
      {
         if(mLevel != param1)
         {
            AngryBirdsExternalInterface.updateLevel(param1);
         }
         mLevel = param1;
      }
      
      public static function updateMetaGameData() : void
      {
         if(!loadingMetaData)
         {
            AngryBirdsServer.getMetaGameData(metaDataReceived);
            loadingMetaData = true;
         }
      }
      
      public static function metaDataReceived(param1:Object) : void
      {
         AngryBirdsSocial.setCoins(param1.coin);
         AngryBirdsSocial.setExperience(param1.experience);
         AngryBirdsSocial.setGoldenEggs(param1.goldenEgg);
         AngryBirdsSocial.setLevel(param1.level);
         loadingMetaData = false;
      }
      
      public static function setHiddenMode(param1:Boolean) : void
      {
         if(param1)
         {
            SoundEngine.setSounds(false);
         }
         else
         {
            SoundEngine.setSounds(smSoundsEnabled);
         }
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         smSoundsEnabled = param1;
         SoundEngine.setSounds(smSoundsEnabled);
         if(USER.loggedIn)
         {
            AngryBirdsServer.setUserSetting("soundsEnabled",param1.toString());
         }
      }
      
      public static function handleGetUserSettingsResponse(param1:Object) : void
      {
         if(param1.soundsEnabled)
         {
            setSoundsEnabled(!param1.soundsEnabled == "false");
         }
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
      
      override public function updateState(param1:Number) : int
      {
         smFpsMeter.update(param1);
         var _loc2_:int = super.updateState(param1);
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
            else if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               Log.log("AngryBirdSocial::run() state change is about to start. Old State = " + getCurrentStateObject().mName + " New State = " + getCurrentStateObject().mNextState);
               this.setNextState(getCurrentStateObject().mNextState);
            }
         }
         return _loc2_;
      }
      
      override public function setNextState(param1:String) : void
      {
         super.setNextState(param1);
         if(smFpsMeter)
         {
            smFpsMeter.reset(false);
         }
         if(param1 == StateLevelPlay.STATE_NAME)
         {
            smLevelMain.mLevelBackground.playBackgroundMusic();
         }
         else if(param1 == StateLevelLoad.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
         }
         else if(param1 == StateLevelPause.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
         }
         else if(param1 == StateLevelOverVictory.STATE_NAME)
         {
            SoundEngine.turnOffSounds();
            SoundEngine.playSoundFromVariation("LevelCompletedBirdsMilitary2");
            SoundEngine.playSoundFromVariation("LevelCompletedTheme1");
         }
         else if(param1 == StateLevelOverFail.STATE_NAME)
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
         var _loc1_:TextFormat = mVersionNumberTextField.defaultTextFormat;
         _loc1_.align = TextAlign.RIGHT;
         mVersionNumberTextField.defaultTextFormat = _loc1_;
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
