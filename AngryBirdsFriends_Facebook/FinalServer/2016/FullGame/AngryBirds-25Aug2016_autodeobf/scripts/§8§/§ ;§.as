package §8§#7
{
   import §5"$§.§"#E§;
   import §5"$§.§]!m§;
   import com.rovio.assets.§@`§;
   
   public class § ;§
   {
      
      public static const §'"O§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §^"P§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §^j§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §<"c§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const § !D§:String = "GreenDayInGame";
      
      public static const §=Q§:String = "GreenDayInGameLazyBones";
      
      public static const §-#b§:String = "Channel_Theme";
      
      public static const §0!,§:String = "Channel_GreenDay";
      
      public static const §6$,§:String = "ThemeMusic";
      
      public static const override:String = "GreenDayTheme";
      
      public static const §,m§:String = "AB_FB_Theme_Christmas";
      
      public static const §6Z§:String = "HalloweenThemeMusic";
      
      public static const §&$9§:String = "XmasThemeMusic";
       
      
      private var §9!g§:§,#`§;
      
      public function § ;§(param1:§,#`§)
      {
         super();
         this.§9!g§ = param1;
         this.§7#U§();
      }
      
      public static function get §0e§() : String
      {
         var _loc3_:String = null;
         var _loc1_:§"#E§ = §]!m§.§3!]§.§,"K§;
         var _loc2_:String = §6$,§;
         if(_loc1_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc1_.§+G§;
            if(§@`§.§38§(_loc3_))
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function get §11§() : §,#`§
      {
         return this.§9!g§;
      }
      
      protected function §7#U§() : void
      {
         var _loc1_:§!#x§ = new §!#x§(§6$,§,§-#b§,0.2,1);
         this.§9!g§.§1H§(_loc1_);
      }
      
      public function §1H§(param1:String, param2:String = "Channel_Theme", param3:Number = -1, param4:int = 999, param5:String = "", param6:int = 3000) : void
      {
         var _loc7_:§!#x§ = new §!#x§(param1,param2,param3,param4,param5,param6);
         this.§9!g§.§1H§(_loc7_);
      }
   }
}
