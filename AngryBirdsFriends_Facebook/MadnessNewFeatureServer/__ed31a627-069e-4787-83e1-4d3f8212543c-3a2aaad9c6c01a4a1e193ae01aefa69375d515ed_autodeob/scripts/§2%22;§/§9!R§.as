package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§^!z§;
   import §&!_§.§+#`§;
   import §,"v§.§ T§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §-u§.§&#+§;
   import §1L§.§;u§;
   import §`#@§.§7n§;
   
   public class §9!R§ extends §5"$§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §'!p§:§&#+§;
      
      private static var §^$+§:§^!z§;
       
      
      public function §9!R§(param1:§;"n§, param2:§4#c§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §-!i§() : void
      {
         §7"+§ = §1!&§;
      }
      
      override public function deActivate() : void
      {
         if(§'!p§)
         {
            §'!p§.§5!y§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §^!z§
      {
         return new §^!z§(mLevelManager);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:§7!J§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
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
         var _loc1_:§ T§ = mLevelManager.getEpisodeForLevel(mLevelManager.currentLevel);
         if(_loc1_)
         {
            if(!§^$+§)
            {
               §^$+§ = this.initPackageManager();
            }
            if(!§'!p§)
            {
               §'!p§ = new §&#+§();
               _loc3_ = § "U§.assetsUrl || "";
               _loc4_ = § "U§.buildNumber || "";
               §'!p§.init(§;u§.§2!,§(),_loc3_,_loc4_,§^$+§);
            }
            §'!p§.§[$6§();
            _loc2_ = "packages/episode_" + _loc1_.name + ".pak";
            §'!p§.§?"'§(<pack url="{_loc2_}"/>);
            §'!p§.§ #!§(this.§^#?§);
         }
      }
      
      protected function onLevelLoaded() : void
      {
      }
      
      protected function §^#?§() : void
      {
         var _loc1_:§7!J§ = mLevelManager.getLevelForId(mLevelManager.currentLevel);
         if(_loc1_)
         {
            initLevelMain(_loc1_);
            return;
         }
         throw new Error("Level " + mLevelManager.currentLevel + " not found in the package",§+#`§.§@P§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §7n§.§6#K§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §7n§.§6#K§.§@#P§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §1!L§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §1!L§(§9#7§.STATE_NAME);
      }
      
      public function §["m§(param1:int) : void
      {
         §7#B§ = param1;
         §7"+§ = §1!&§;
      }
   }
}
