package §"!@§
{
   import §2G§.§2!2§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §>#G§.§-!,§;
   import §@V§.§0X§;
   import §`7§.§[$-§;
   
   public class §8"o§ extends §;Q§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §1"J§:§-!,§;
      
      private static var §##h§:§2!2§;
       
      
      public function §8"o§(param1:§8=§, param2:§""C§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §""A§() : void
      {
         §^#,§ = §6!"§;
      }
      
      override public function deActivate() : void
      {
         if(§1"J§)
         {
            §1"J§.§^#2§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §2!2§
      {
         return new §2!2§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§>f§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
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
         var _loc1_:§"m§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§##h§)
            {
               §##h§ = this.initPackageManager();
            }
            if(!§1"J§)
            {
               §1"J§ = new §-!,§();
               _loc3_ = §0#k§.assetsUrl || "";
               _loc4_ = §0#k§.buildNumber || "";
               §1"J§.init(§0X§.§+!D§(),_loc3_,_loc4_,§##h§);
            }
            §1"J§.§7"0§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §1"J§.§?2§(<pack url="{_loc2_}"/>);
            §1"J§.§&",§(this.§%N§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §%N§() : void
      {
         var _loc1_:§>f§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§[$-§.§ !D§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §3#U§.§#$4§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §3#U§.§#$4§.§3#1§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §1"h§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §1"h§(§1S§.STATE_NAME);
      }
      
      public function §'#2§(param1:int) : void
      {
         §2-§ = param1;
         §^#,§ = §6!"§;
      }
   }
}
