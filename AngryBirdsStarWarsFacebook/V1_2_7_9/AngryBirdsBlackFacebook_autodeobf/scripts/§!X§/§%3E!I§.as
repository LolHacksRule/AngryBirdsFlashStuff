package §!X§
{
   import §!"N§.§`!q§;
   import §'+§.§="B§;
   import §,!_§.§2"V§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §,#+§.§<U§;
   import §7A§.§<"M§;
   import §`"8§.§%"?§;
   import com.angrybirds.§;!e§;
   
   public class §>!I§ extends §8!M§
   {
      
      public static const §'#2§:String = "LevelLoadStateClassic";
      
      private static var §&"k§:§`!q§;
      
      private static var §-!0§:§%"?§;
       
      
      public function §>!I§(param1:§7!m§, param2:§="B§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §`"$§() : void
      {
         §4"o§ = § "q§;
      }
      
      override public function deActivate() : void
      {
         if(§&"k§)
         {
            §&"k§.§3%§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §%"?§
      {
         return new §%"?§(§ !p§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§ "0§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§<U§ = § !p§.getLevelForId(§ !p§.currentLevel);
         if(_loc1_)
         {
            §%",§(_loc1_);
         }
         else
         {
            _loc2_ = § !p§.getEpisodeForLevel(§ !p§.currentLevel);
            if(_loc2_)
            {
               if(!§-!0§)
               {
                  §-!0§ = this.initPackageManager();
               }
               if(!§&"k§)
               {
                  §&"k§ = new §`!q§();
                  _loc4_ = §&!?§.assetsUrl || "";
                  _loc5_ = §&!?§.buildNumber || "";
                  §&"k§.init(§2"V§.§=!U§(),_loc4_,_loc5_,§-!0§);
               }
               §&"k§.§@"[§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §&"k§.§!#"§(<pack url="{_loc3_}"/>);
               §&"k§.§@X§(this.§6!j§);
            }
         }
      }
      
      protected function §6!j§() : void
      {
         var _loc1_:§<U§ = § !p§.getLevelForId(§ !p§.currentLevel);
         if(_loc1_)
         {
            §%",§(_loc1_);
            return;
         }
         throw new Error("Level " + § !p§.currentLevel + " not found in the package",§<"M§.§+4§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §;!e§.§<x§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §;!e§.§<x§.§&"=§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §0"B§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'#2§;
      }
      
      override public function onLevelLoadError() : void
      {
         §0"B§(§,"p§.§'#2§);
      }
      
      public function §][§(param1:int) : void
      {
         §@!n§ = param1;
         §4"o§ = § "q§;
      }
   }
}
