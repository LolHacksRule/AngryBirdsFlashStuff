package §1!c§
{
   import §"!w§.§6!E§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §%!B§.§7C§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1![§.§-"5§;
   import §2!&§.§+h§;
   import §4!i§.§9w§;
   
   public class §'8§ extends §,!d§
   {
      
      public static const §8"%§:String = "LevelLoadStateClassic";
      
      private static var §+m§:§6!E§;
      
      private static var §>O§:§-"5§;
       
      
      public function §'8§(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §@!!§() : void
      {
         §2!x§ = §8y§;
      }
      
      override public function deActivate() : void
      {
         if(§+m§)
         {
            §+m§.§#!?§();
         }
         super.deActivate();
      }
      
      protected function §<!8§() : §-"5§
      {
         return new §-"5§(§4a§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§7C§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§5L§ = §4a§.getLevelForId(§4a§.currentLevel);
         if(_loc1_)
         {
            §[!'§(_loc1_);
         }
         else
         {
            _loc2_ = §4a§.getEpisodeForLevel(§4a§.currentLevel);
            if(_loc2_)
            {
               if(!§>O§)
               {
                  §>O§ = this.§<!8§();
               }
               if(!§+m§)
               {
                  §+m§ = new §6!E§();
                  _loc4_ = §^!y§.assetsUrl || "";
                  _loc5_ = §^!y§.buildNumber || "";
                  §+m§.init(§+h§.§^!W§(),_loc4_,_loc5_,§>O§);
               }
               §+m§.§#y§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §+m§.§#X§(<pack url="{_loc3_}"/>);
               §+m§.§&!L§(this.§-o§);
            }
         }
      }
      
      protected function §-o§() : void
      {
         var _loc1_:§5L§ = §4a§.getLevelForId(§4a§.currentLevel);
         if(_loc1_)
         {
            §[!'§(_loc1_);
            return;
         }
         throw new Error("Level " + §4a§.currentLevel + " not found in the package",§9w§.§"n§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §@!S§.§2A§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §@!S§.§2A§.§3"-§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §7"6§(this.§[!w§());
      }
      
      protected function §[!w§() : String
      {
         return StatePlay.§8"%§;
      }
      
      override public function onLevelLoadError() : void
      {
         §7"6§(§^j§.§8"%§);
      }
      
      public function §8!r§(param1:int) : void
      {
         §+!'§ = param1;
         §2!x§ = §8y§;
      }
   }
}
