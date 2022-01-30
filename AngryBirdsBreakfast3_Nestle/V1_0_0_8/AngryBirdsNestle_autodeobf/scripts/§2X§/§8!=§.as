package §2X§
{
   import §%f§.§ n§;
   
   public class §8!=§
   {
      
      public static const §^2§:String = "nesquik";
      
      public static const §3!V§:String = "chocapic";
      
      public static const §-!R§:String = "koko_krunch";
      
      public static const §?J§:String = "general";
      
      public static const THEME_NESQUIK:String = "THEME_NESQUIK";
      
      public static const THEME_CHOCAPIC:String = "THEME_CHOCAPIC";
      
      public static const §8!i§:String = "THEME_KOKOKRUNCH";
      
      public static const §6E§:String = "THEME_GENERIC_NESTLE";
       
      
      private var §`W§:§ n§;
      
      public function §8!=§()
      {
         super();
         this.§`!1§();
      }
      
      private function §`!1§() : void
      {
         this.§`W§ = new § n§();
         this.§`W§[§^2§] = THEME_NESQUIK;
         this.§`W§[§3!V§] = THEME_CHOCAPIC;
         this.§`W§[§-!R§] = §8!i§;
         this.§`W§[§?J§] = §6E§;
      }
      
      public function §'!n§(param1:String) : String
      {
         var _loc2_:String = this.§`W§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return §6E§;
      }
   }
}
