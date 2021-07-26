package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.io.ClassicLevelsContainer;
   import com.AngryBirds.ui.ViewLevelLoad;
   import com.rovio.factory.Base64;
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.states.StateBase;
   
   public class StateLevelLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelLoadState";
      
      public static var smLevelsTable:XML;
      
      public static const USE_ONLY_LOCAL_LEVELS:Boolean = false;
      
      public static const LOAD_STATE_NONE:int = 0;
      
      public static var smLoadStateStep:int = LOAD_STATE_NONE;
      
      public static const LOAD_STATE_LOCAL_STEP_1:int = 1;
      
      public static const LOAD_STATE_LOCAL_STEP_2:int = 2;
      
      public static const LOAD_STATE_EDITOR_STEP_1:int = 3;
      
      public static const LOAD_STATE_EDITOR_STEP_2:int = 4;
      
      public static const LOAD_STATE_RESTART_STEP_1:int = 5;
      
      public static const LOAD_STATE_RESTART_STEP_2:int = 6;
      
      public static const LOAD_STATE_EXTERNAL_STEP_1:int = 7;
      
      public static const LOAD_STATE_EXTERNAL_STEP_2:int = 8;
      
      public static const LOAD_STATE_EXTERNAL_STEP_3:int = 9;
      
      public static const LOAD_STATE_CLASSIC_HACK_1:int = 10;
      
      public static var smGetLevelOfDay:Boolean = false;
      
      public static var smExternalLevelID:String = "";
      
      private static var smRestartLastLevel:Boolean = false;
      
      private static var smLoadLevelEditorDefaultLevel:String = null;
      
      public static var smRunLevelHack:Boolean = false;
       
      
      private var mLevelsTableBin:Class;
      
      public var mLastLevel:XML;
      
      private var mStateTimer:Number = 0;
      
      public function StateLevelLoad(param1:Boolean = true, param2:String = "LevelLoadState")
      {
         this.mLevelsTableBin = StateLevelLoad_mLevelsTableBin;
         super(param1,param2);
      }
      
      private static function getLocalLevelForId(param1:String) : XML
      {
         var _loc2_:XML = null;
         for each(_loc2_ in smLevelsTable.Level)
         {
            if(_loc2_.@id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function prepareToLoadLevelEditorDefaultLevel() : void
      {
         smLoadLevelEditorDefaultLevel = "DEFAULT_EDITOR_LEVEL";
         smRestartLastLevel = false;
         smExternalLevelID = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToRestartLastLevel() : void
      {
         smLoadLevelEditorDefaultLevel = null;
         smRestartLastLevel = true;
         smExternalLevelID = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToLoadEditorTemplate(param1:String) : void
      {
         StateLevelLoad.smLoadLevelEditorDefaultLevel = param1;
         smRestartLastLevel = false;
         smExternalLevelID = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToLoadExternalLevel(param1:String) : void
      {
         Log.log("prepareToLoadExternalLevel, external:" + param1);
         smLoadLevelEditorDefaultLevel = null;
         smRestartLastLevel = false;
         smExternalLevelID = param1;
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function getTemplateLevels() : Array
      {
         var _loc3_:XML = null;
         var _loc1_:Number = 1;
         var _loc2_:Array = new Array();
         _loc2_.push(getLocalLevelForId("DEFAULT_EDITOR_LEVEL"));
         while(true)
         {
            _loc3_ = getLocalLevelForId("LEVEL_TEMPLATE_" + _loc1_++);
            if(_loc3_ == null)
            {
               break;
            }
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new ViewLevelLoad(this);
         mUIView.init(null);
         smLevelsTable = XMLFactory.fromOctetStreamClass(this.mLevelsTableBin);
      }
      
      override public function activate() : void
      {
         super.activate();
         AngryBirdsSocial.smLevelMain.clearLevel();
         smLoadStateStep = LOAD_STATE_NONE;
         smGetLevelOfDay = false;
         Log.log("StateLevelLoad, external:" + smExternalLevelID);
         if(smRunLevelHack)
         {
            smLoadStateStep = LOAD_STATE_CLASSIC_HACK_1;
         }
         else if(smExternalLevelID.length > 0 && !USE_ONLY_LOCAL_LEVELS)
         {
            smLoadStateStep = LOAD_STATE_EXTERNAL_STEP_1;
            this.mStateTimer = 1000;
         }
         else if(smRestartLastLevel && this.mLastLevel)
         {
            smLoadStateStep = LOAD_STATE_RESTART_STEP_1;
         }
         else if(smLoadLevelEditorDefaultLevel && AngryBirdsSocial.smEditorMode)
         {
            smLoadStateStep = LOAD_STATE_EDITOR_STEP_1;
         }
         else if(!USE_ONLY_LOCAL_LEVELS)
         {
            smGetLevelOfDay = true;
            smLoadStateStep = LOAD_STATE_EXTERNAL_STEP_1;
         }
         else
         {
            smLoadStateStep = LOAD_STATE_LOCAL_STEP_1;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(smLoadStateStep == LOAD_STATE_CLASSIC_HACK_1)
         {
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = null;
            this.mLastLevel = new XML(LevelEditor.createLevelFromJSON(ClassicLevelsContainer.getSingleton().getNextLevel(),false));
            smLoadStateStep = LOAD_STATE_LOCAL_STEP_2;
            this.initLevelMain();
         }
         else if(smLoadStateStep == LOAD_STATE_LOCAL_STEP_1)
         {
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = null;
            this.mLastLevel = this.getDefaultLocalLevel();
            smLoadStateStep = LOAD_STATE_LOCAL_STEP_2;
            this.initLevelMain();
         }
         else if(smLoadStateStep == LOAD_STATE_LOCAL_STEP_2)
         {
            if(AngryBirdsSocial.smLevelMain.mReadyToRun)
            {
               mNextState = StateLevelStart.STATE_NAME;
            }
         }
         else if(smLoadStateStep == LOAD_STATE_EDITOR_STEP_1)
         {
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = null;
            this.mLastLevel = getLocalLevelForId(smLoadLevelEditorDefaultLevel);
            smLoadLevelEditorDefaultLevel = null;
            smLoadStateStep = LOAD_STATE_EDITOR_STEP_2;
            this.initLevelMain();
         }
         else if(smLoadStateStep == LOAD_STATE_EDITOR_STEP_2)
         {
            if(AngryBirdsSocial.smLevelMain.mReadyToRun)
            {
               mNextState = StateLevelEditor.STATE_NAME;
            }
         }
         else if(smLoadStateStep == LOAD_STATE_RESTART_STEP_1)
         {
            smLoadStateStep = LOAD_STATE_RESTART_STEP_2;
            smRestartLastLevel = false;
            this.initLevelMain();
         }
         else if(smLoadStateStep == LOAD_STATE_RESTART_STEP_2)
         {
            if(AngryBirdsSocial.smLevelMain.mReadyToRun)
            {
               mNextState = StateLevelStart.STATE_NAME;
            }
         }
         else if(smLoadStateStep == LOAD_STATE_EXTERNAL_STEP_1)
         {
            this.mLastLevel = null;
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = smExternalLevelID;
            if(smGetLevelOfDay)
            {
               AngryBirdsServer.getLevelOfTheDay(this.levelDataReceived);
            }
            else
            {
               AngryBirdsServer.getLevel(smExternalLevelID,this.levelDataReceived);
            }
            smExternalLevelID = "";
            smLoadStateStep = LOAD_STATE_EXTERNAL_STEP_2;
         }
         else if(smLoadStateStep == LOAD_STATE_EXTERNAL_STEP_2)
         {
            if(this.mLastLevel && this.mStateTimer < 0)
            {
               this.initLevelMain();
               smLoadStateStep = LOAD_STATE_EXTERNAL_STEP_3;
            }
            else
            {
               this.mStateTimer -= param1;
            }
         }
         else if(smLoadStateStep == LOAD_STATE_EXTERNAL_STEP_3)
         {
            if(AngryBirdsSocial.smLevelMain.mReadyToRun)
            {
               if(AngryBirdsSocial.smEditorMode)
               {
                  mNextState = StateLevelEditor.STATE_NAME;
               }
               else
               {
                  mNextState = StateLevelStart.STATE_NAME;
               }
            }
         }
         if(mNextState.length > 0)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      private function levelDataReceived(param1:Object) : void
      {
         if(smLoadStateStep == LOAD_STATE_EXTERNAL_STEP_2)
         {
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = param1.levelKey;
            AngryBirdsSocial.smLevelMain.mLevelData.levelCreator = param1.username;
            AngryBirdsSocial.smLevelMain.mLevelData.levelName = param1.levelName;
            AngryBirdsSocial.smLevelMain.mLevelData.timesFavorited = param1.timesFavorited;
            AngryBirdsSocial.smLevelMain.mLevelData.timesPlayed = param1.timesPlayed;
            AngryBirdsSocial.smLevelMain.mLevelData.timesLiked = param1.timesLiked;
            if(smGetLevelOfDay)
            {
               AngryBirdsSocial.smLevelMain.mLevelOfDayId = param1.levelKey;
            }
            this.mLastLevel = new XML(Base64.decode(param1.levelData));
            smGetLevelOfDay = false;
         }
      }
      
      private function getDefaultEditorLevel() : XML
      {
         var _loc1_:XML = null;
         for each(_loc1_ in smLevelsTable.Level)
         {
            if(_loc1_.@id == "DEFAULT_EDITOR_LEVEL")
            {
               return _loc1_;
            }
         }
         Log.log("WARNING!!! StateLevelLoad::GetDefaultEditorLevel could not found DEFEULT_EDITOR_LEVEL");
         return null;
      }
      
      private function getDefaultLocalLevel() : XML
      {
         var _loc1_:int = smLevelsTable.@startLevel;
         if(_loc1_ >= 0)
         {
            return smLevelsTable.Level[smLevelsTable.@startLevel];
         }
         return getLocalLevelForId("DEFAULT_LOCAL_LEVEL");
      }
      
      private function initLevelMain() : void
      {
         try
         {
            AngryBirdsSocial.smLevelMain.init(this.mLastLevel,AngryBirdsSocial.smEditorMode);
         }
         catch(e:Error)
         {
            Log.log("Level loading failed!!");
            Log.log(e.getStackTrace());
            prepareToLoadExternalLevel("");
            AngryBirdsSocial.smEditorMode = false;
            AngryBirdsSocial.smReload = true;
            mNextState = STATE_NAME;
            throw e;
         }
      }
   }
}
