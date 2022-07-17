package com.AngryBirds.states
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.io.AngryBirdsServer;
   import com.AngryBirds.ui.ViewLevelLoad;
   import com.rovio.factory.Base64;
   import com.rovio.factory.Log;
   import com.rovio.factory.XMLFactory;
   import com.rovio.states.StateBase;
   
   public class StateLevelLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelLoadState";
      
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
      
      private static var smExternelLevelName:String = "";
      
      private static var smRestartLastLevel:Boolean = false;
      
      private static var smLoadLevelEditorDefaultLevel:Boolean = false;
       
      
      private var mLevelsTableBin:Class;
      
      public var mLevelsTable:XML;
      
      public var mLastLevel:XML;
      
      private var mStateTimer:Number = 0;
      
      public function StateLevelLoad(param1:Boolean = true, param2:String = "LevelLoadState")
      {
         this.mLevelsTableBin = StateLevelLoad_mLevelsTableBin;
         super(param1,param2);
      }
      
      public static function prepareToLoadLevelEditorDefaultLevel() : void
      {
         smLoadLevelEditorDefaultLevel = true;
         smRestartLastLevel = false;
         smExternelLevelName = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToRestartLastLevel() : void
      {
         smLoadLevelEditorDefaultLevel = false;
         smRestartLastLevel = true;
         smExternelLevelName = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToLoadExternalLevel(param1:String) : void
      {
         smLoadLevelEditorDefaultLevel = false;
         smRestartLastLevel = false;
         smExternelLevelName = param1;
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new ViewLevelLoad(this);
         mUIView.init(null);
         this.mLevelsTable = XMLFactory.fromOctetStreamClass(this.mLevelsTableBin);
         if(!LevelEditor.smDefaultEditorLevel)
         {
            LevelEditor.smDefaultEditorLevel = this.getDefaultEditorLevel();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         AngryBirdsSocial.smLevelMain.clearLevel();
         smLoadStateStep = LOAD_STATE_NONE;
         if(smExternelLevelName.length > 0 && !USE_ONLY_LOCAL_LEVELS)
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
         if(smLoadStateStep == LOAD_STATE_LOCAL_STEP_1)
         {
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
            this.mLastLevel = this.getDefaultEditorLevel();
            smLoadLevelEditorDefaultLevel = false;
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
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = smExternelLevelName;
            AngryBirdsServer.getLevel(smExternelLevelName,this.levelDataReceived);
            smExternelLevelName = "";
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
               mNextState = StateLevelStart.STATE_NAME;
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
         var _loc2_:String = null;
         if(smLoadStateStep == LOAD_STATE_EXTERNAL_STEP_2)
         {
            _loc2_ = escape(param1.json).split("%20").join("+");
            this.mLastLevel = new XML(Base64.decode(unescape(_loc2_)));
         }
      }
      
      private function getDefaultEditorLevel() : XML
      {
         var _loc1_:XML = null;
         for each(_loc1_ in this.mLevelsTable.Level)
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
         var _loc2_:XML = null;
         var _loc1_:int = this.mLevelsTable.@startLevel;
         if(_loc1_ >= 0)
         {
            return this.mLevelsTable.Level[this.mLevelsTable.@startLevel];
         }
         for each(_loc2_ in this.mLevelsTable.Level)
         {
            if(_loc2_.@id == "DEFAULT_LOCAL_LEVEL")
            {
               return _loc2_;
            }
         }
         Log.log("WARNING!!! StateLevelLoad::getDefaultLocalLevel could not found DEFAULT_LOCAL_LEVEL");
         return null;
      }
      
      private function initLevelMain() : void
      {
         AngryBirdsSocial.smLevelMain.init(this.mLastLevel,AngryBirdsSocial.smEditorMode);
      }
   }
}
