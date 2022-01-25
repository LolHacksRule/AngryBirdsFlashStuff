package §#!]§
{
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   import §<v§.§=v§;
   import §=j§.§^!J§;
   import §?u§.§6!R§;
   import §`!s§.§!!o§;
   
   public class §6U§ extends §!![§
   {
      
      public static const §]!y§:String = "LevelLoadStateClassic";
      
      private static var §@!b§:§=v§;
      
      private static var §]X§:§6!R§;
       
      
      public function §6U§(param1:§-g§, param2:§^!_§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §2!2§() : void
      {
         §8`§ = §;6§;
      }
      
      override public function deActivate() : void
      {
         if(§@!b§)
         {
            §@!b§.§1!Q§();
         }
         super.deActivate();
      }
      
      protected function §'3§() : §6!R§
      {
         return new §6!R§(§#n§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§4<§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§[d§ = §#n§.getLevelForId(§#n§.currentLevel);
         if(_loc1_)
         {
            §[1§(_loc1_);
         }
         else
         {
            _loc2_ = §#n§.getEpisodeForLevel(§#n§.currentLevel);
            if(_loc2_)
            {
               if(!§]X§)
               {
                  §]X§ = this.§'3§();
               }
               if(!§@!b§)
               {
                  §@!b§ = new §=v§();
                  _loc4_ = §2k§.assetsUrl || "";
                  _loc5_ = §2k§.buildNumber || "";
                  §@!b§.init(§^!J§.§14§(),_loc4_,_loc5_,§]X§);
               }
               §@!b§.§break§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §@!b§.§4"-§(<pack url="{_loc3_}"/>);
               §@!b§.§,"2§(this.§-#§);
            }
         }
      }
      
      protected function §-#§() : void
      {
         var _loc1_:§[d§ = §#n§.getLevelForId(§#n§.currentLevel);
         if(_loc1_)
         {
            §[1§(_loc1_);
            return;
         }
         throw new Error("Level " + §#n§.currentLevel + " not found in the package",§!!o§.§[!8§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §`i§.§&!L§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §`i§.§&!L§.§7F§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §]a§(this.§-!<§());
      }
      
      protected function §-!<§() : String
      {
         return StatePlay.§]!y§;
      }
      
      override public function onLevelLoadError() : void
      {
         §]a§(§=A§.§]!y§);
      }
      
      public function §9!G§(param1:int) : void
      {
         §[;§ = param1;
         §8`§ = §;6§;
      }
   }
}
