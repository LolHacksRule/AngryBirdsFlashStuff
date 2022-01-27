package §%"Q§
{
   import §%!G§.§8##§;
   import §&!j§.§5#+§;
   import §+d§.§8#&§;
   import §9"U§.§9U§;
   import §@[§.§0"C§;
   import com.angrybirds.§<!J§;
   import §null §.§5!K§;
   import §null §.§5#§;
   import §null §.§>#-§;
   
   public class §7"9§ extends § "§
   {
      
      public static const §-!U§:String = "LevelLoadStateClassic";
      
      private static var §<#2§:§0"C§;
      
      private static var §8"!§:§9U§;
       
      
      public function §7"9§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §@#4§() : void
      {
         §?" § = §[!I§;
      }
      
      override public function deActivate() : void
      {
         if(§<#2§)
         {
            §<#2§.§>"h§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §9U§
      {
         return new §9U§(§'""§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§5!K§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§>#-§ = §'""§.getLevelForId(§'""§.currentLevel);
         if(_loc1_)
         {
            §[^§(_loc1_);
         }
         else
         {
            _loc2_ = §'""§.getEpisodeForLevel(§'""§.currentLevel);
            if(_loc2_)
            {
               if(!§8"!§)
               {
                  §8"!§ = this.initPackageManager();
               }
               if(!§<#2§)
               {
                  §<#2§ = new §0"C§();
                  _loc4_ = §[-§.assetsUrl || "";
                  _loc5_ = §[-§.buildNumber || "";
                  §<#2§.init(§8##§.§7m§(),_loc4_,_loc5_,§8"!§);
               }
               §<#2§.§^"@§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §<#2§.§1!'§(<pack url="{_loc3_}"/>);
               §<#2§.§1S§(this.§ "J§);
            }
         }
      }
      
      protected function § "J§() : void
      {
         var _loc1_:§>#-§ = §'""§.getLevelForId(§'""§.currentLevel);
         if(_loc1_)
         {
            §[^§(_loc1_);
            return;
         }
         throw new Error("Level " + §'""§.currentLevel + " not found in the package",§8#&§.§"##§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §<!J§.§=!%§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §<!J§.§=!%§.§%!>§;
      }
      
      override public function onLevelLoadReady() : void
      {
         §`0§(this.getPlayState());
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§-!U§;
      }
      
      override public function onLevelLoadError() : void
      {
         §`0§(§`=§.§-!U§);
      }
      
      public function §35§(param1:int) : void
      {
         §[M§ = param1;
         §?" § = §[!I§;
      }
   }
}
