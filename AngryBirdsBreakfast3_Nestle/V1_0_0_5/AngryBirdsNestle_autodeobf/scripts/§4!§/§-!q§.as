package §4!§
{
   import §2W§.§`!v§;
   
   public class §-!q§
   {
      
      public static const §@^§:String = "nesquik";
      
      public static const §+"-§:String = "chocapic";
      
      public static const §?s§:String = "koko_krunch";
      
      public static const §=t§:String = "general";
      
      public static const THEME_NESQUIK:String = "THEME_NESQUIK";
      
      public static const THEME_CHOCAPIC:String = "THEME_CHOCAPIC";
      
      public static const §+=§:String = "THEME_KOKOKRUNCH";
      
      public static const §5'§:String = "THEME_GENERIC_NESTLE";
       
      
      private var §,n§:§`!v§;
      
      public function §-!q§()
      {
         super();
         this.§<!n§();
      }
      
      private function §<!n§() : void
      {
         this.§,n§ = new §`!v§();
         this.§,n§[§@^§] = THEME_NESQUIK;
         this.§,n§[§+"-§] = THEME_CHOCAPIC;
         this.§,n§[§?s§] = §+=§;
         this.§,n§[§=t§] = §5'§;
      }
      
      public function §&!_§(param1:String) : String
      {
         var _loc2_:String = this.§,n§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return §5'§;
      }
   }
}
