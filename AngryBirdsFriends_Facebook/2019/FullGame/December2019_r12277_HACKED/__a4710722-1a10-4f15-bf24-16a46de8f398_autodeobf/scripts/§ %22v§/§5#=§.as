package § "v§
{
   import §+!n§.§+!p§;
   import §4#$§.§5"L§;
   import §4#$§.§6#!§;
   import §[#v§.§4e§;
   import §[#v§.StateTournamentResults;
   import com.rovio.assets.§=@§;
   
   public class §5#=§
   {
      
      public static const § !x§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §]#^§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §#@§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §!!Q§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §&"x§:String = "GreenDayInGame";
      
      public static const §<!?§:String = "GreenDayInGameLazyBones";
      
      public static const §7#^§:String = "GreenDayTheme";
      
      public static const §&#n§:String = "AB_FB_Theme_Christmas";
       
      
      private var §"#Y§:§]#?§;
      
      public function §5#=§(param1:§]#?§)
      {
         super();
         this.§"#Y§ = param1;
         this.§;=§(AngryBirdsBase.§-##§);
      }
      
      public static function get §&"^§() : String
      {
         var _loc3_:String = null;
         var _loc1_:String = AngryBirdsBase.§-##§;
         if(§5"L§.§3"1§.§2o§())
         {
            if(§+!p§.§;"-§.§1"Z§() != §4e§.STATE_NAME && §+!p§.§;"-§.§1"Z§() != StateTournamentResults.STATE_NAME)
            {
               return _loc1_;
            }
         }
         var _loc2_:§6#!§ = §5"L§.§3"1§.tournamentRules;
         if(_loc2_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc2_.§,d§;
            if(§=@§.§8!l§(_loc3_))
            {
               _loc1_ = _loc3_;
            }
         }
         return _loc1_;
      }
      
      public function get §&=§() : §]#?§
      {
         return this.§"#Y§;
      }
      
      public function §;=§(param1:String) : void
      {
         var _loc2_:§#"<§ = new §#"<§(param1,AngryBirdsBase.§>"u§,0.5,1);
         this.§"#Y§.§;=§(_loc2_);
      }
   }
}
