package §>"9§
{
   import §+"u§.§6!9§;
   import §+"u§.§^"C§;
   import com.rovio.assets.§2"O§;
   
   public class §'#M§
   {
      
      public static const §9y§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §6"C§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §%W§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §>+§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §>!7§:String = "GreenDayInGame";
      
      public static const §3+§:String = "GreenDayInGameLazyBones";
      
      public static const §+#H§:String = "GreenDayTheme";
      
      public static const §2!%§:String = "AB_FB_Theme_Christmas";
       
      
      private var §6#V§:§2"0§;
      
      public function §'#M§(param1:§2"0§)
      {
         super();
         this.§6#V§ = param1;
         this.§-"5§(AngryBirdsBase.§>$8§);
      }
      
      public static function get §"#w§() : String
      {
         var _loc3_:String = null;
         var _loc1_:§6!9§ = §^"C§.§?q§.tournamentRules;
         var _loc2_:String = AngryBirdsBase.§>$8§;
         if(_loc1_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc1_.§9d§;
            if(§2"O§.§;#m§(_loc3_))
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function get §@"?§() : §2"0§
      {
         return this.§6#V§;
      }
      
      public function §-"5§(param1:String) : void
      {
         var _loc2_:§0#h§ = new §0#h§(param1,AngryBirdsBase.§9!2§,0.5,1);
         this.§6#V§.§-"5§(_loc2_);
      }
   }
}
