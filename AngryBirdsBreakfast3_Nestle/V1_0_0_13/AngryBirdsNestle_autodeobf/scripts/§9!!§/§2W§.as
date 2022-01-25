package §9!!§
{
   import §`!s§.§4M§;
   
   public class §2W§
   {
      
      public static const §`!F§:String = "nesquik";
      
      public static const §7!l§:String = "chocapic";
      
      public static const §]!m§:String = "koko_krunch";
      
      public static const §"^§:String = "general";
      
      public static const THEME_NESQUIK:String = "THEME_NESQUIK";
      
      public static const THEME_CHOCAPIC:String = "THEME_CHOCAPIC";
      
      public static const §'"4§:String = "THEME_KOKOKRUNCH";
      
      public static const §6!t§:String = "THEME_GENERIC_NESTLE";
       
      
      private var §!"&§:§4M§;
      
      public function §2W§()
      {
         super();
         this.§9x§();
      }
      
      private function §9x§() : void
      {
         this.§!"&§ = new §4M§();
         this.§!"&§[§`!F§] = THEME_NESQUIK;
         this.§!"&§[§7!l§] = THEME_CHOCAPIC;
         this.§!"&§[§]!m§] = §'"4§;
         this.§!"&§[§"^§] = §6!t§;
      }
      
      public function §4!&§(param1:String) : String
      {
         var _loc2_:String = this.§!"&§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return §6!t§;
      }
   }
}
