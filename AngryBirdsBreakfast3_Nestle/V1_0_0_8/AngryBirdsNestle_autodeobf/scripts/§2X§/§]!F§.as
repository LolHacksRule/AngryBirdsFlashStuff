package §2X§
{
   import §%f§.§ n§;
   import §;4§.§%@§;
   
   public class §]!F§
   {
      
      private static var §=5§:Class = §7!U§;
       
      
      private var §@&§:§ n§;
      
      public function §]!F§()
      {
         super();
         this.§>A§(§%@§.set(§=5§));
      }
      
      private function §>A§(param1:XML) : void
      {
         var _loc2_:§5L§ = null;
         var _loc3_:§3Q§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§@&§ = new § n§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §5L§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §3Q§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc2_.§4B§(_loc3_);
            }
            this.§@&§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §;'§() : Array
      {
         var _loc3_:§5L§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§@&§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("name");
         return _loc2_;
      }
      
      public function §'!k§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§5L§ = this.§@&§[param1];
         var _loc3_:Array = _loc2_.§'!k§();
         _loc3_.sortOn("name");
         return _loc3_;
      }
      
      public function §"!X§(param1:String) : §5L§
      {
         return this.§@&§[param1.toUpperCase()];
      }
   }
}
