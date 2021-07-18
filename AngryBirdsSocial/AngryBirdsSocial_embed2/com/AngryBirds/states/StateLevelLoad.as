package com.AngryBirds.states
{
   import com.AngryBirds.io.AngryBirdsServer;
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
      
      public static var smGetLevelOfDay:Boolean = false;
      
      public static var smExternelLevelName:String = "";
      
      private static var smRestartLastLevel:Boolean = false;
      
      private static var smLoadLevelEditorDefaultLevel:String = null;
       
      
      [Embed(source="../embedded_assets/xml/Levels.xml",mimeType="application/octet-stream")]
      private var mLevelsTableBin:Class;
      
      public var mLastLevel:XML;
      
      private var mStateTimer:Number = 0;
      
      public function StateLevelLoad(initState:Boolean = true, name:String = "LevelLoadState")
      {
         this.mLevelsTableBin = StateLevelLoad_mLevelsTableBin;
         super(initState,name);
      }
      
      private static function getLocalLevelForId(id:String) : XML
      {
         var node:XML = null;
         for each(node in smLevelsTable.Level)
         {
            if(node.@id == id)
            {
               return node;
            }
         }
         return null;
      }
      
      public static function prepareToLoadLevelEditorDefaultLevel() : void
      {
         smLoadLevelEditorDefaultLevel = "DEFAULT_EDITOR_LEVEL";
         smRestartLastLevel = false;
         smExternelLevelName = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToRestartLastLevel() : void
      {
         smLoadLevelEditorDefaultLevel = null;
         smRestartLastLevel = true;
         smExternelLevelName = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToLoadEditorTemplate(id:String) : void
      {
         StateLevelLoad.smLoadLevelEditorDefaultLevel = id;
         smRestartLastLevel = false;
         smExternelLevelName = "";
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function prepareToLoadExternalLevel(levelName:String) : void
      {
         Log.log("prepareToLoadExternalLevel, external:" + levelName);
         smLoadLevelEditorDefaultLevel = null;
         smRestartLastLevel = false;
         smExternelLevelName = levelName;
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function getTemplateLevels() : Array
      {
         var tmp:XML = null;
         var i:Number = 1;
         var a:Array = new Array();
         a.push(getLocalLevelForId("DEFAULT_EDITOR_LEVEL"));
         while(true)
         {
            tmp = getLocalLevelForId("LEVEL_TEMPLATE_" + i++);
            if(tmp == null)
            {
               break;
            }
            a.push(tmp);
         }
         return a;
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
         Log.log("StateLevelLoad, external:" + smExternelLevelName);
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
      
      override public function run(deltaTime:Number) : int
      {
         var getDefinedLevel:Boolean = false;
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(smLoadStateStep == LOAD_STATE_LOCAL_STEP_1)
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
            getDefinedLevel = false;
            if(AngryBirdsSocial.RUN_AS_EMBED_PLAYER && getApplicationParameter("embedLevelKey") != null)
            {
               smExternelLevelName = getApplicationParameter("embedLevelKey");
               getDefinedLevel = true;
            }
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = smExternelLevelName;
            if(smGetLevelOfDay && !getDefinedLevel)
            {
               AngryBirdsServer.getLevelOfTheDay(this.levelDataReceived);
            }
            else
            {
               AngryBirdsServer.getLevel(smExternelLevelName,this.levelDataReceived);
            }
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
               this.mStateTimer -= deltaTime;
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
      
      private function levelDataReceived(response:Object) : void
      {
         if(smLoadStateStep == LOAD_STATE_EXTERNAL_STEP_2)
         {
            AngryBirdsSocial.smLevelMain.mLevelData.levelID = response.levelKey;
            AngryBirdsSocial.smLevelMain.mLevelData.levelCreator = response.username;
            AngryBirdsSocial.smLevelMain.mLevelData.levelName = response.levelName;
            if(smGetLevelOfDay)
            {
               AngryBirdsSocial.smLevelMain.mLevelOfDayId = response.levelKey;
            }
            this.mLastLevel = new XML(Base64.decode(response.levelData));
            smGetLevelOfDay = false;
         }
      }
      
      private function getDefaultEditorLevel() : XML
      {
         var node:XML = null;
         for each(node in smLevelsTable.Level)
         {
            if(node.@id == "DEFAULT_EDITOR_LEVEL")
            {
               return node;
            }
         }
         Log.log("WARNING!!! StateLevelLoad::GetDefaultEditorLevel could not found DEFEULT_EDITOR_LEVEL");
         return null;
      }
      
      private function getDefaultLocalLevel() : XML
      {
         var index:int = smLevelsTable.@startLevel;
         if(index >= 0)
         {
            return smLevelsTable.Level[smLevelsTable.@startLevel];
         }
         return getLocalLevelForId("DEFAULT_LOCAL_LEVEL");
      }
      
      private function initLevelMain() : void
      {
         AngryBirdsSocial.smLevelMain.init(this.mLastLevel,AngryBirdsSocial.smEditorMode);
      }
   }
}
