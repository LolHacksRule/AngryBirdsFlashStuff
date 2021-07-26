package §@!M§
{
   import §8#!§.§-"Z§;
   import §8#!§.§5`§;
   import com.rovio.assets.§!"f§;
   
   public class §<"t§
   {
      
      public static const §1;§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §<!C§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §`$'§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §'"W§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §@#^§:String = "GreenDayInGame";
      
      public static const §7#8§:String = "GreenDayInGameLazyBones";
      
      public static const §&#a§:String = "GreenDayTheme";
      
      public static const §&!"§:String = "AB_FB_Theme_Christmas";
       
      
      private var §1!1§:§8`§;
      
      public function §<"t§(param1:§8`§)
      {
         super();
         this.§1!1§ = param1;
         this.§?#V§(AngryBirdsBase.§-" §);
      }
      
      public static function get §,"_§() : String
      {
         var _loc3_:String = null;
         var _loc1_:§-"Z§ = §5`§.§6!§.tournamentRules;
         var _loc2_:String = AngryBirdsBase.§-" §;
         if(_loc1_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc1_.§7"4§;
            if(§!"f§.§?"G§(_loc3_))
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function get §7$,§() : §8`§
      {
         return this.§1!1§;
      }
      
      public function §?#V§(param1:String) : void
      {
         var _loc2_:§!$ § = new §!$ §(param1,AngryBirdsBase.§<!f§,0.5,1);
         this.§1!1§.§?#V§(_loc2_);
      }
   }
}
