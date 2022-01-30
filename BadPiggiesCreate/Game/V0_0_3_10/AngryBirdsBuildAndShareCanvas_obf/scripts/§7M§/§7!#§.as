package §7M§
{
   public class §7!#§ extends §+R§
   {
       
      
      private var §3P§:§case § = null;
      
      private var §@!E§:int = 0;
      
      public function §7!#§()
      {
         super();
      }
      
      public static function §]!^§() : §7!#§
      {
         var _loc1_:§7!#§ = new §7!#§();
         _loc1_.§@!E§ = 0;
         _loc1_.§3P§ = §case §.§;e§("");
         _loc1_.§-2§ = false;
         _loc1_.theme = §1"5§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§?!p§ = new §?!p§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§;"#§(_loc2_);
         var _loc3_:§?!p§ = new §?!p§();
         _loc3_.id = "CASTLE";
         _loc1_.§;"#§(_loc3_);
         return _loc1_;
      }
      
      public static function §>"&§(param1:String) : §7!#§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§7!#§ = new §7!#§();
         _loc3_.§%!S§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§@!E§ = _loc2_.rating;
         }
         _loc3_.§3P§ = §case §.§0o§(_loc2_);
         return _loc3_;
      }
      
      public function get §4Y§() : §case §
      {
         return this.§3P§;
      }
      
      public function get §]N§() : int
      {
         return this.§@!E§;
      }
      
      public function set §]N§(param1:int) : void
      {
         this.§@!E§ = param1;
      }
   }
}
