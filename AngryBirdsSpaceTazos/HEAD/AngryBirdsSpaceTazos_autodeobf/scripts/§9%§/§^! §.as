package §9%§
{
   import § !"§.§=!%§;
   import §%!P§.§;"H§;
   import §%"%§.§2Z§;
   import §1z§.§2#§;
   import §1z§.§^!@§;
   import §1z§.§^"6§;
   import §4u§.§]!c§;
   import §8!i§.§>j§;
   import §>"2§.§8k§;
   
   public class §^! § extends §!!I§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateClassic";
      
      private static var §^@§:§=!%§;
      
      private static var §'!!§:§;"H§;
       
      
      public function §^! §(param1:§^!@§, param2:§2Z§, param3:Boolean = true, param4:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4);
      }
      
      public static function §15§() : void
      {
         §3!M§ = §9"#§;
      }
      
      override public function deActivate() : void
      {
         if(§^@§)
         {
            §^@§.§%M§();
         }
         super.deActivate();
      }
      
      protected function initPackageManager() : §;"H§
      {
         return new §;"H§(§#"=§);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc2_:§^"6§ = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:§2#§ = §#"=§.getLevelForId(§#"=§.currentLevel);
         if(_loc1_)
         {
            §#"G§(_loc1_);
         }
         else
         {
            _loc2_ = §#"=§.getEpisodeForLevel(§#"=§.currentLevel);
            if(_loc2_)
            {
               if(!§'!!§)
               {
                  §'!!§ = this.initPackageManager();
               }
               if(!§^@§)
               {
                  §^@§ = new §=!%§();
                  _loc4_ = § !n§.assetsUrl || "";
                  _loc5_ = § !n§.buildNumber || "";
                  §^@§.init(§>j§.§8"%§(),_loc4_,_loc5_,§'!!§);
               }
               §^@§.§9"8§();
               _loc3_ = "packages/episode_" + _loc2_.name + ".pak";
               §^@§.§>]§(<pack url="{_loc3_}"/>);
               §^@§.§]"E§(this.§4;§);
            }
         }
      }
      
      protected function §4;§() : void
      {
         var _loc1_:§2#§ = §#"=§.getLevelForId(§#"=§.currentLevel);
         if(_loc1_)
         {
            §#"G§(_loc1_);
            return;
         }
         throw new Error("Level " + §#"=§.currentLevel + " not found in the package",§]!c§.§3$§);
      }
      
      override public function isLoadingReady() : Boolean
      {
         return §8k§.§;!]§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return §8k§.§;!]§.§0w§;
      }
      
      override public function onLevelLoadReady() : void
      {
         § !I§(this.§3P§());
      }
      
      protected function §3P§() : String
      {
         return StatePlay.STATE_NAME;
      }
      
      override public function onLevelLoadError() : void
      {
         § !I§(§ §.STATE_NAME);
      }
      
      public function §[J§(param1:int) : void
      {
         §"S§ = param1;
         §3!M§ = §9"#§;
      }
   }
}
