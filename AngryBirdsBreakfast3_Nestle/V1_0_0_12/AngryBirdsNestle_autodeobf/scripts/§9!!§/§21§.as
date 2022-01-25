package §9!!§
{
   import §8!$§.§1b§;
   import §`!s§.§4M§;
   
   public class §21§
   {
      
      private static var §!"3§:Class = §9"$§;
       
      
      private var §+l§:§4M§;
      
      public function §21§()
      {
         super();
         this.§1y§(§1b§.§?!R§(§!"3§));
      }
      
      private function §1y§(param1:XML) : void
      {
         var _loc2_:§+!c§ = null;
         var _loc3_:§'E§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§+l§ = new §4M§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §+!c§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.nativeName = _loc4_.@nativeName;
            _loc2_.alphabeticName = _loc4_.@alphabeticName;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §'E§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc3_.nativeName = _loc5_.@nativeName;
               _loc2_.§continue§(_loc3_);
            }
            this.§+l§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §]!t§() : Array
      {
         var _loc3_:§+!c§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§+l§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("alphabeticName");
         return _loc2_;
      }
      
      public function §&g§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§+!c§ = this.§+l§[param1];
         var _loc3_:Array = _loc2_.§&g§();
         _loc3_.sortOn("nativeName");
         return _loc3_;
      }
      
      public function §=!!§(param1:String) : §+!c§
      {
         return this.§+l§[param1.toUpperCase()];
      }
   }
}
