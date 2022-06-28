package §9c§
{
   import § $§.Server;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §%L§.PackageManager;
   import §-!>§.§4!T§;
   import §`M§.LoadManager;
   
   public class StateLevelLoadClassic extends StateLevelLoad
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var mOldManualScale:Number;
      
      private static var sLoadManager:LoadManager;
      
      private static var sPackageManager:PackageManager;
       
      
      public function StateLevelLoadClassic(initState:Boolean = true, name:String = "LevelLoadStateClassic")
      {
         super(initState,name);
      }
      
      public static function §'8§() : void
      {
         LevelManager.§%<§(LevelManager.§`l§());
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function §>1§(index:int) : void
      {
         smLevelIndex = index;
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function §3`§() : void
      {
         if(§4!T§.§1t§.camera)
         {
            mOldManualScale = §4!T§.§1t§.camera.§+!1§;
         }
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      override public function deActivate() : void
      {
         if(sLoadManager)
         {
            sLoadManager.§[y§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var chapter:ChapterModel = null;
         var url:String = null;
         var assetsUrl:String = null;
         var buildNumber:String = null;
         var level:LevelModel = LevelManager.§<l§(LevelManager.§!=§);
         if(level)
         {
            initLevelMain(level);
            if(!isNaN(mOldManualScale))
            {
               §4!T§.§1t§.camera.§7!U§(mOldManualScale);
               mOldManualScale = NaN;
            }
         }
         else
         {
            chapter = LevelManager.§'!7§(LevelManager.§!=§);
            if(chapter)
            {
               if(!sPackageManager)
               {
                  sPackageManager = new PackageManager();
               }
               if(!sLoadManager)
               {
                  sLoadManager = new LoadManager();
                  assetsUrl = §#-§.assetsUrl || "";
                  buildNumber = §#-§.buildNumber || "";
                  sLoadManager.init(Server.§ !T§(),assetsUrl,buildNumber,sPackageManager);
               }
               sLoadManager.§?>§();
               url = "packages/chapter" + chapter.name + ".pak";
               sLoadManager.§#!T§(<pack url="{url}"/>);
               sLoadManager.§[!L§(this.§0!M§);
            }
         }
      }
      
      protected function §0!M§() : void
      {
         var level:LevelModel = LevelManager.§<l§(LevelManager.§!=§);
         if(level)
         {
            initLevelMain(level);
            if(!isNaN(mOldManualScale))
            {
               §4!T§.§1t§.camera.§7!U§(mOldManualScale);
               mOldManualScale = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §4!T§.§1t§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §4!T§.§1t§.§2§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§[!C§();
      }
      
      protected function §[!C§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = StateLevelSelection.STATE_NAME;
      }
   }
}
