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
   import flashx.textLayout.formats.TextAlign;
   
   public class AngryBirdsSocial extends BasicGame
   {
      
      public static var VERSION_NUMBER:String = "Thursday 03/24";
      
      public static var SCREEN_WIDTH:int = 700;
      
      public static var SCREEN_HEIGHT:int = 420;
      
      public static var USER:UserModel;
      
      public static var UIDATA:UIDataModel;
      
      public static var USER_STATS:UserStatisticsModel;
      
      public static var XMLDATA:XMLDataModel;
      
      public static var FRIENDS_LIST:Array;
      
      public static var USER_INFO:UserInfoModel;
      
      public static const LINE_BREAK_XML:String = "\n";
      
      public static var smLevelMain:LevelMain;
      
      public static var smEditorMode:Boolean = false;
      
      public static var smReload:Boolean = false;
      
      public static var smFpsMeter:FPSMeter;
      
      public static var mVersionNumberTextField:TextField;
       
      
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
      }
      
      public function initLevelItemsData() : void
      {
         LevelItems.loadItems();
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc3_:int = 0;
         smFpsMeter.update(param1);
         var _loc2_:int = super.updateState(param1);
         if(!getCurrentStateObject().isGenericState())
         {
            if(smReload)
            {
               smReload = false;
               this.setNextState(StateLevelLoad.STATE_NAME);
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
