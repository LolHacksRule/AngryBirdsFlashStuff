package §!!n§
{
   import §!!&§.§4!7§;
   
   public class §+Z§
   {
      
      public static const §7!e§:String = "nesquik";
      
      public static const §;!#§:String = "chocapic";
      
      public static const §&!z§:String = "koko_krunch";
      
      public static const §?!Q§:String = "general";
      
      public static const THEME_NESQUIK:String = "THEME_NESQUIK";
      
      public static const THEME_CHOCAPIC:String = "THEME_CHOCAPIC";
      
      public static const §,U§:String = "THEME_KOKOKRUNCH";
      
      public static const §&E§:String = "THEME_GENERIC_NESTLE";
       
      
      private var §,!F§:§4!7§;
      
      public function §+Z§()
      {
         super();
         this.§1!W§();
      }
      
      private function §1!W§() : void
      {
         this.§,!F§ = new §4!7§();
         this.§,!F§[§7!e§] = THEME_NESQUIK;
         this.§,!F§[§;!#§] = THEME_CHOCAPIC;
         this.§,!F§[§&!z§] = §,U§;
         this.§,!F§[§?!Q§] = §&E§;
      }
      
      public function §;7§(param1:String) : String
      {
         var _loc2_:String = this.§,!F§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return §&E§;
      }
   }
}
