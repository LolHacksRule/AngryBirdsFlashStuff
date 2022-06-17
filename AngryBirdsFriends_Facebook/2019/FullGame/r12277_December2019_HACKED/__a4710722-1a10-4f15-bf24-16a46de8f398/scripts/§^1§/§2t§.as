package §^1§
{
   import § #_§.§?!>§;
   import §%#^§.§;!g§;
   import §+!n§.§+!p§;
   import §2E§.§=$3§;
   import §7"1§.§[#U§;
   import §>#Y§.§"1§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §?o§.§79§;
   
   public class §2t§ extends §@#f§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §2!@§:§;!g§;
      
      private static var §8#`§:§"1§;
       
      
      public function §2t§(param1:§4#?§, param2:§?!>§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §8n§() : void
      {
         §[j§ = §3"i§;
      }
      
      override public function deActivate() : void
      {
         if(§2!@§)
         {
            §2!@§.§4"y§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §"1§
      {
         return new §"1§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§ ^§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
         }
         else
         {
            this.loadLevel();
         }
      }
      
      protected function loadLevel() : void
      {
         var _loc2_:* = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:§79§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§8#`§)
            {
               §8#`§ = this.initPackageManager();
            }
            if(!§2!@§)
            {
               §2!@§ = new §;!g§();
               _loc3_ = §9!k§.assetsUrl || "";
               _loc4_ = §9!k§.buildNumber || "";
               §2!@§.init(§[#U§.§ 5§(),_loc3_,_loc4_,§8#`§);
            }
            §2!@§.§'!X§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §2!@§.§?#Q§(<pack url="{_loc2_}"/>);
            §2!@§.§`#y§(this.§;#A§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §;#A§() : void
      {
         var _loc1_:§ ^§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§=$3§.§^"l§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §+!p§.§`?§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §+!p§.§`?§.§9"§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §%!?§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §%!?§(§;O§.STATE_NAME);
      }
      
      public function §>"&§(param1:int) : void
      {
         §1#c§ = param1;
         §[j§ = §3"i§;
      }
   }
}
