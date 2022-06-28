package §<!S§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §%!T§.LoadManager;
   import §6!a§.Server;
   import §=]§.PackageManager;
   
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
      
      public static function §[!6§() : void
      {
         LevelManager.§]!R§(LevelManager.§>!1§());
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function §2!k§(index:int) : void
      {
         smLevelIndex = index;
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function §7!R§() : void
      {
         if(§]!B§.§>F§.camera)
         {
            mOldManualScale = §]!B§.§>F§.camera.§^!3§;
         }
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      override public function deActivate() : void
      {
         if(sLoadManager)
         {
            sLoadManager.§%!]§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var chapter:ChapterModel = null;
         var url:String = null;
         var assetsUrl:String = null;
         var buildNumber:String = null;
         var level:LevelModel = LevelManager.§;!a§(LevelManager.§var§);
         if(level)
         {
            initLevelMain(level);
            if(!isNaN(mOldManualScale))
            {
               §]!B§.§>F§.camera.§]!`§(mOldManualScale);
               mOldManualScale = NaN;
            }
         }
         else
         {
            chapter = LevelManager.§;<§(LevelManager.§var§);
            if(chapter)
            {
               if(!sPackageManager)
               {
                  sPackageManager = new PackageManager();
               }
               if(!sLoadManager)
               {
                  sLoadManager = new LoadManager();
                  assetsUrl = §"z§.assetsUrl || "";
                  buildNumber = §"z§.buildNumber || "";
                  sLoadManager.init(Server.§&7§(),assetsUrl,buildNumber,sPackageManager);
               }
               sLoadManager.§]I§();
               url = "packages/chapter" + chapter.name + ".pak";
               sLoadManager.§`w§(<pack url="{url}"/>);
               sLoadManager.§ !L§(this.§5!1§);
            }
         }
      }
      
      protected function §5!1§() : void
      {
         var level:LevelModel = LevelManager.§;!a§(LevelManager.§var§);
         if(level)
         {
            initLevelMain(level);
            if(!isNaN(mOldManualScale))
            {
               §]!B§.§>F§.camera.§]!`§(mOldManualScale);
               mOldManualScale = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §]!B§.§>F§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §]!B§.§>F§.§#!U§;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§>!U§();
      }
      
      protected function §>!U§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = StateLevelSelection.STATE_NAME;
      }
   }
}
