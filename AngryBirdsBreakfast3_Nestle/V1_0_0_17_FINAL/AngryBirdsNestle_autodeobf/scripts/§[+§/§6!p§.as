package §[+§
{
   import §24§.§4!H§;
   import §4!i§.§0]§;
   
   public class §6!p§
   {
      
      private static var §5"!§:Class = §3P§;
       
      
      private var §-!D§:§0]§;
      
      public function §6!p§()
      {
         super();
         this.§=!=§(§4!H§.§7o§(§5"!§));
      }
      
      private function §=!=§(param1:XML) : void
      {
         var _loc2_:§3!O§ = null;
         var _loc3_:§"!u§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§-!D§ = new §0]§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §3!O§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.nativeName = _loc4_.@nativeName;
            _loc2_.alphabeticName = _loc4_.@alphabeticName;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §"!u§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc3_.nativeName = _loc5_.@nativeName;
               _loc2_.§ 6§(_loc3_);
            }
            this.§-!D§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §;&§() : Array
      {
         var _loc3_:§3!O§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§-!D§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("alphabeticName");
         return _loc2_;
      }
      
      public function §,!$§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§3!O§ = this.§-!D§[param1];
         var _loc3_:Array = _loc2_.§,!$§();
         _loc3_.sortOn("nativeName");
         return _loc3_;
      }
      
      public function §^S§(param1:String) : §3!O§
      {
         return this.§-!D§[param1.toUpperCase()];
      }
   }
}
