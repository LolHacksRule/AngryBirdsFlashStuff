package §'9§
{
   import §-!F§.§^!k§;
   import §=!7§.§%!%§;
   
   public class §0!k§
   {
      
      private static var §4!o§:Class = §,l§;
       
      
      private var §5f§:§^!k§;
      
      public function §0!k§()
      {
         super();
         this.§2V§(§%!%§.§<!0§(§4!o§));
      }
      
      private function §2V§(param1:XML) : void
      {
         var _loc2_:§+A§ = null;
         var _loc3_:§-!4§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§5f§ = new §^!k§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §+A§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §-!4§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc2_.§5@§(_loc3_);
            }
            this.§5f§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §^!P§() : Array
      {
         var _loc3_:§+A§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§5f§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("name");
         return _loc2_;
      }
      
      public function §!!y§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§+A§ = this.§5f§[param1];
         var _loc3_:Array = _loc2_.§!!y§();
         _loc3_.sortOn("name");
         return _loc3_;
      }
      
      public function § "%§(param1:String) : §+A§
      {
         return this.§5f§[param1.toUpperCase()];
      }
   }
}
