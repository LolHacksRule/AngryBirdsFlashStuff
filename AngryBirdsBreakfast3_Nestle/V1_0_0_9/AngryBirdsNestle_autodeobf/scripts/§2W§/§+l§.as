package §2W§
{
   import §8!$§.§1b§;
   import §`!s§.§4M§;
   
   public class §+l§
   {
      
      private static var §'E§:Class = §9"$§;
       
      
      private var §1y§:§4M§;
      
      public function §+l§()
      {
         super();
         this.§]!t§(§1b§.§?!R§(§'E§));
      }
      
      private function §]!t§(param1:XML) : void
      {
         var _loc2_:§0,§ = null;
         var _loc3_:§0!D§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§1y§ = new §4M§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §0,§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.nativeName = _loc4_.@nativeName;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §0!D§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc3_.nativeName = _loc5_.@nativeName;
               _loc2_.§continue§(_loc3_);
            }
            this.§1y§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §&g§() : Array
      {
         var _loc3_:§0,§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§1y§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("nativeName");
         return _loc2_;
      }
      
      public function §=!!§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§0,§ = this.§1y§[param1];
         var _loc3_:Array = _loc2_.§=!!§();
         _loc3_.sortOn("nativeName");
         return _loc3_;
      }
      
      public function §!"3§(param1:String) : §0,§
      {
         return this.§1y§[param1.toUpperCase()];
      }
   }
}
