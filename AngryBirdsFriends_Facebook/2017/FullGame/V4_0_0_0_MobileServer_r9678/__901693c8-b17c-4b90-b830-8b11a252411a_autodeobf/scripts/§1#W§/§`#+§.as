package §1#W§
{
   import §];§.§-!t§;
   import §];§.§;!r§;
   import com.rovio.assets.§+$#§;
   
   public class §`#+§
   {
      
      public static const §##^§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Troublemaker.mp3";
      
      public static const §]c§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Lazy_Bones.mp3";
      
      public static const §>"v§:String = AngryBirdsBase.SERVER_ROOT + "/sounds/Green_Day-Oh_Love.mp3";
      
      public static const §;#G§:String = "CHANNEL_GREENDAY_INGAME";
      
      public static const §-1§:String = "GreenDayInGame";
      
      public static const §8"k§:String = "GreenDayInGameLazyBones";
      
      public static const §7"i§:String = "GreenDayTheme";
      
      public static const §;!g§:String = "AB_FB_Theme_Christmas";
       
      
      private var §`#x§:§0#>§;
      
      public function §`#+§(param1:§0#>§)
      {
         super();
         this.§`#x§ = param1;
         this.§&k§(AngryBirdsBase.§ "N§);
      }
      
      public static function get §[#!§() : String
      {
         var _loc3_:String = null;
         var _loc1_:§;!r§ = §-!t§.§ "D§.tournamentRules;
         var _loc2_:String = AngryBirdsBase.§ "N§;
         if(_loc1_)
         {
            _loc3_ = "THEME_MUSIC_" + _loc1_.§@!l§;
            if(§+$#§.§1!X§(_loc3_))
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function get §4!?§() : §0#>§
      {
         return this.§`#x§;
      }
      
      public function §&k§(param1:String) : void
      {
         var _loc2_:§[",§ = new §[",§(param1,AngryBirdsBase.§2#a§,0.5,1);
         this.§`#x§.§&k§(_loc2_);
      }
   }
}
