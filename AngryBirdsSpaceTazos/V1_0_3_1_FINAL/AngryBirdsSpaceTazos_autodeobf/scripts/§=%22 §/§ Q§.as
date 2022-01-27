package §=" §
{
   import §""=§.§&!M§;
   import §'!n§.§4!=§;
   import §4",§.§,!j§;
   import §4",§.§2!S§;
   import §4",§.§3v§;
   import §5R§.§0!P§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §<[§.§#!4§;
   
   public class § Q§ extends §[5§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §#j§:§#!4§;
      
      private static var §9"0§:§0!P§;
       
      
      public function § Q§(param1:§,!j§, param2:§;l§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §]6§() : void
      {
         §8R§ = §0!u§;
      }
      
      override public function deActivate() : void
      {
         if(§#j§)
         {
            §#j§.§[!4§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §0!P§
      {
         return new §0!P§(§]m§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§2!S§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§3v§ = §]m§.getLevelForId(§]m§.currentLevel);
         if(_loc1_)
         {
            §4!F§(_loc1_);
         }
         else
         {
            _loc2_ = §]m§.getEpisodeForLevel(§]m§.currentLevel);
            if(_loc2_)
            {
               if(!§9"0§)
               {
                  §9"0§ = this.initPackageManager();
               }
               if(!§#j§)
               {
                  §#j§ = new §#!4§();
                  _loc4_ = §]%§.assetsUrl || "";
                  _loc5_ = §]%§.buildNumber || "";
                  §#j§.init(§&!M§.§5"=§(),_loc4_,_loc5_,§9"0§);
               }
               §#j§.§0!o§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §#j§.§"Q§(<pack url="{_loc3_}"/>);
               §#j§.§%L§(this.§;+§);
            }
         }
      }
      
      protected function §;+§() : void
      {
         var _loc1_:§3v§ = §]m§.getLevelForId(§]m§.currentLevel);
         if(_loc1_)
         {
            §4!F§(_loc1_);
            return;
         }
         throw new Error("Level " + §]m§.currentLevel + " not found in the package",§4!=§.§!2§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §8!w§.§5!V§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §8!w§.§5!V§.§6q§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §'Q§(this.§2q§());
      }
      
      protected function §2q§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §'Q§(§]!"§.STATE_NAME);
      }
      
      public function §+W§(param1:int) : void
      {
         §"!R§ = param1;
         §8R§ = §0!u§;
      }
   }
}
