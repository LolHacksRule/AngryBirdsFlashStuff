package §3"V§
{
   import §!!L§.§ !8§;
   import §!!L§.StateTournamentResults;
   import §?#z§.§]$?§;
   import §`,§.§'#t§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   
   public class §;"-§
   {
      
      public static const §%B§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §,"O§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §8$A§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §"V§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §=E§:String = "GreenDayInGame";
      
      public static const §]C§:String = "GreenDayInGameLazyBones";
      
      public static const §1$E§:String = "GreenDayTheme";
      
      public static const §9!"§:String = "AB_FB_Theme_Christmas";
       
      
      private var §-"d§:§^!7§;
      
      public function §;"-§(param1:§^!7§)
      {
         super();
         this.§-"d§ = param1;
         this.§4"@§(AngryBirdsBase.§>"D§);
      }
      
      public static function get §,#[§() : String
      {
         var _loc3_:String = null;
         var _loc1_:String = AngryBirdsBase.§>"D§;
         if(§7!$§.§+!,§.§!$#§())
         {
            if(§]$?§.§;u§.§%#7§() != § !8§.STATE_NAME && §]$?§.§;u§.§%#7§() != StateTournamentResults.STATE_NAME)
            {
               return _loc1_;
            }
         }
         var _loc2_:§'#t§ = §7!$§.§+!,§.tournamentRules;
         if(_loc2_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc2_.§"">§;
            if(§[a§.§]$'§(_loc3_))
            {
               _loc1_ = _loc3_;
            }
         }
         return _loc1_;
      }
      
      public function get §8$9§() : §^!7§
      {
         return this.§-"d§;
      }
      
      public function §4"@§(param1:String) : void
      {
         var _loc2_:§%o§ = new §%o§(param1,AngryBirdsBase.§6#f§,0.5,1);
         this.§-"d§.§4"@§(_loc2_);
      }
   }
}
