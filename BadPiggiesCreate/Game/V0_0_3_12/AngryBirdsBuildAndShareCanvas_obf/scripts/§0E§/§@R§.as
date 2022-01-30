package §0E§
{
   public class §@R§ extends §#O§
   {
       
      
      private var §!!b§:§[[§ = null;
      
      private var §'!U§:int = 0;
      
      public function §@R§()
      {
         super();
      }
      
      public static function §'!p§() : §@R§
      {
         var _loc1_:§@R§ = new §@R§();
         _loc1_.§'!U§ = 0;
         _loc1_.§!!b§ = §[[§.§&T§("");
         _loc1_.§0x§ = false;
         _loc1_.theme = §=O§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§9!Y§ = new §9!Y§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§0!7§(_loc2_);
         var _loc3_:§9!Y§ = new §9!Y§();
         _loc3_.id = "CASTLE";
         _loc1_.§0!7§(_loc3_);
         return _loc1_;
      }
      
      public static function §;"7§(param1:String) : §@R§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§@R§ = new §@R§();
         _loc3_.§]o§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§'!U§ = _loc2_.rating;
         }
         _loc3_.§!!b§ = §[[§.§-t§(_loc2_);
         return _loc3_;
      }
      
      public function get §3W§() : §[[§
      {
         return this.§!!b§;
      }
      
      public function get § "7§() : int
      {
         return this.§'!U§;
      }
      
      public function set § "7§(param1:int) : void
      {
         this.§'!U§ = param1;
      }
   }
}
