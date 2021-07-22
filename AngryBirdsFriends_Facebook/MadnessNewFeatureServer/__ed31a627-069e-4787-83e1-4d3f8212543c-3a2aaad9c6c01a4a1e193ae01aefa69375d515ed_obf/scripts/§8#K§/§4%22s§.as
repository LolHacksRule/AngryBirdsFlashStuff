package §8#K§
{
   import §3+§.§;!H§;
   import §3+§.StateTournamentResults;
   import §<!r§.§'##§;
   import §<!r§.§]_§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   
   public class §4"s§
   {
      
      public static const § $4§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §+&§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §&#`§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §+@§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §<#5§:String = "GreenDayInGame";
      
      public static const §7"f§:String = "GreenDayInGameLazyBones";
      
      public static const §[$,§:String = "GreenDayTheme";
      
      public static const §=!Z§:String = "AB_FB_Theme_Christmas";
       
      
      private var §0"o§:§ case§;
      
      public function §4"s§(param1:§ case§)
      {
         super();
         this.§0"o§ = param1;
         this.§1$@§(AngryBirdsBase.§;#+§);
      }
      
      public static function get §60§() : String
      {
         var _loc3_:String = null;
         var _loc1_:String = AngryBirdsBase.§;#+§;
         if(§'##§.§`"H§.§;!q§())
         {
            if(§7n§.§-$<§.§'!&§() != §;!H§.STATE_NAME && §7n§.§-$<§.§'!&§() != StateTournamentResults.STATE_NAME)
            {
               return _loc1_;
            }
         }
         var _loc2_:§]_§ = §'##§.§`"H§.tournamentRules;
         if(_loc2_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc2_.§3V§;
            if(§6$A§.§9"w§(_loc3_))
            {
               _loc1_ = _loc3_;
            }
         }
         return _loc1_;
      }
      
      public function get §-$A§() : § case§
      {
         return this.§0"o§;
      }
      
      public function §1$@§(param1:String) : void
      {
         var _loc2_:§&#%§ = new §&#%§(param1,AngryBirdsBase.§?#7§,0.5,1);
         this.§0"o§.§1$@§(_loc2_);
      }
   }
}
