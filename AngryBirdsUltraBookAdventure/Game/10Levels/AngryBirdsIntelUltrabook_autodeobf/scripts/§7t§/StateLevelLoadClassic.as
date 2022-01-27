package §7t§
{
   import § !§.LoadManager;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §?!Y§.§`S§;
   import §^!7§.Server;
   import §^F§.PackageManager;
   
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
      
      public static function §7^§() : void
      {
         LevelManager.§?h§(LevelManager.§8!I§());
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function §`L§(index:int) : void
      {
         smLevelIndex = index;
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      public static function §;!8§() : void
      {
         if(§`S§.§[o§.camera)
         {
            mOldManualScale = §`S§.§[o§.camera.§"R§;
         }
         smLoadStateStep = LOAD_STATE_NONE;
      }
      
      override public function deActivate() : void
      {
         if(sLoadManager)
         {
            sLoadManager.§<L§();
         }
      }
      
      override protected function initLevelLoad() : void
      {
         var chapter:ChapterModel = null;
         var url:String = null;
         var assetsUrl:String = null;
         var buildNumber:String = null;
         var level:LevelModel = LevelManager.§1n§(LevelManager.§1m§);
         if(level)
         {
            initLevelMain(level);
            if(!isNaN(mOldManualScale))
            {
               §`S§.§[o§.camera.§]&§(mOldManualScale);
               mOldManualScale = NaN;
            }
         }
         else
         {
            chapter = LevelManager.§6X§(LevelManager.§1m§);
            if(chapter)
            {
               if(!sPackageManager)
               {
                  sPackageManager = new PackageManager();
               }
               if(!sLoadManager)
               {
                  sLoadManager = new LoadManager();
                  assetsUrl = §9!4§.assetsUrl || "";
                  buildNumber = §9!4§.buildNumber || "";
                  sLoadManager.init(Server.§'!%§(),assetsUrl,buildNumber,sPackageManager);
               }
               sLoadManager.§ n§();
               url = "packages/chapter" + chapter.name + ".pak";
               sLoadManager.§1!=§(<pack url="{url}"/>);
               sLoadManager.§,!H§(this.§8=§);
            }
         }
      }
      
      protected function §8=§() : void
      {
         var level:LevelModel = LevelManager.§1n§(LevelManager.§1m§);
         if(level)
         {
            initLevelMain(level);
            if(!isNaN(mOldManualScale))
            {
               §`S§.§[o§.camera.§]&§(mOldManualScale);
               mOldManualScale = NaN;
            }
         }
      }
      
      override public function isReady() : Boolean
      {
         return §`S§.§[o§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §`S§.§[o§.§try §;
      }
      
      override public function onLevelLoadReady() : void
      {
         mNextState = this.§&7§();
      }
      
      protected function §&7§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         mNextState = StateLevelSelection.STATE_NAME;
      }
   }
}
