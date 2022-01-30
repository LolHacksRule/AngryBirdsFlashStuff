package §2W§
{
   import §`!s§.§4M§;
   
   public class §!"&§
   {
      
      public static const §7!l§:String = "nesquik";
      
      public static const §]!m§:String = "chocapic";
      
      public static const §"^§:String = "koko_krunch";
      
      public static const §'"4§:String = "general";
      
      public static const THEME_NESQUIK:String = "THEME_NESQUIK";
      
      public static const THEME_CHOCAPIC:String = "THEME_CHOCAPIC";
      
      public static const §6!t§:String = "THEME_KOKOKRUNCH";
      
      public static const §21§:String = "THEME_GENERIC_NESTLE";
       
      
      private var §9x§:§4M§;
      
      public function §!"&§()
      {
         super();
         this.§4!&§();
      }
      
      private function §4!&§() : void
      {
         this.§9x§ = new §4M§();
         this.§9x§[§7!l§] = THEME_NESQUIK;
         this.§9x§[§]!m§] = THEME_CHOCAPIC;
         this.§9x§[§"^§] = §6!t§;
         this.§9x§[§'"4§] = §21§;
      }
      
      public function §`!F§(param1:String) : String
      {
         var _loc2_:String = this.§9x§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return §21§;
      }
   }
}
