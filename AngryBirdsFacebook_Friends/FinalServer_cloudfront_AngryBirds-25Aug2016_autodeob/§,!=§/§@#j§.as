package §,!=§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§=!Z§;
   import §%$!§.§2#§;
   import §'U§.§]#[§;
   import §-#z§.§0"R§;
   import §>!#§.§@"$§;
   import §?§.§>"$§;
   import §]$9§.§-!5§;
   
   public class §@#j§ extends §+!!§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §@!q§:§0"R§;
      
      private static var §;"A§:§2#§;
       
      
      public function §@#j§(param1:§#!?§, param2:§]#[§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §3!G§() : void
      {
         § @§ = §<"Z§;
      }
      
      override public function deActivate() : void
      {
         if(§@!q§)
         {
            §@!q§.§!#t§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §2#§
      {
         return new §2#§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§-"R§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
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
         var _loc1_:§=!Z§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§;"A§)
            {
               §;"A§ = this.initPackageManager();
            }
            if(!§@!q§)
            {
               §@!q§ = new §0"R§();
               _loc3_ = § !8§.assetsUrl || "";
               _loc4_ = § !8§.buildNumber || "";
               §@!q§.init(§-!5§.§1# §(),_loc3_,_loc4_,§;"A§);
            }
            §@!q§.§]"R§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §@!q§.§@!6§(<pack url="{_loc2_}"/>);
            §@!q§.§,"o§(this.§'!§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §'!§() : void
      {
         var _loc1_:§-"R§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§@"$§.§?^§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §>"$§.§3#'§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §>"$§.§3#'§.§6"@§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §7P§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §7P§(§<!B§.STATE_NAME);
      }
      
      public function §!"9§(param1:int) : void
      {
         §&!g§ = param1;
         § @§ = §<"Z§;
      }
   }
}
