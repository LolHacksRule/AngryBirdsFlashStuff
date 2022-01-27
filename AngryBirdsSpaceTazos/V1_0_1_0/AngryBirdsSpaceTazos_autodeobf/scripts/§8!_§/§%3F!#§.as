package §8!_§
{
   import § !Y§.§4!1§;
   import §!?§.§@"C§;
   import §%!r§.§3!'§;
   import §+!h§.§#V§;
   import §,"&§.§9q§;
   import §7!%§.§[K§;
   import §`!j§.§#b§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   
   public class §?!#§ extends §%"'§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §0!l§:§[K§;
      
      private static var §#!-§:§@"C§;
       
      
      public function §?!#§(param1:§9"!§, param2:§3!'§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §90§() : void
      {
         §@'§ = §," §;
      }
      
      override public function deActivate() : void
      {
         if(§0!l§)
         {
            §0!l§.§`t§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §@"C§
      {
         return new §@"C§(§6u§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§3,§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§#b§ = §6u§.getLevelForId(§6u§.currentLevel);
         if(_loc1_)
         {
            §"Z§(_loc1_);
         }
         else
         {
            _loc2_ = §6u§.getEpisodeForLevel(§6u§.currentLevel);
            if(_loc2_)
            {
               if(!§#!-§)
               {
                  §#!-§ = this.initPackageManager();
               }
               if(!§0!l§)
               {
                  §0!l§ = new §[K§();
                  _loc4_ = §]>§.assetsUrl || "";
                  _loc5_ = §]>§.buildNumber || "";
                  §0!l§.init(§#V§.§4!+§(),_loc4_,_loc5_,§#!-§);
               }
               §0!l§.§>!#§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §0!l§.§4!=§(<pack url="{_loc3_}"/>);
               §0!l§.§#y§(this.§ !w§);
            }
         }
      }
      
      protected function § !w§() : void
      {
         var _loc1_:§#b§ = §6u§.getLevelForId(§6u§.currentLevel);
         if(_loc1_)
         {
            §"Z§(_loc1_);
            return;
         }
         throw new Error("Level " + §6u§.currentLevel + " not found in the package",§4!1§.§[j§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §9q§.§>!L§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §9q§.§>!L§.§=>§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §8!^§(this.§1!u§());
      }
      
      protected function §1!u§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         §8!^§(§]J§.STATE_NAME);
      }
      
      public function §;H§(param1:int) : void
      {
         § D§ = param1;
         §@'§ = §," §;
      }
   }
}
