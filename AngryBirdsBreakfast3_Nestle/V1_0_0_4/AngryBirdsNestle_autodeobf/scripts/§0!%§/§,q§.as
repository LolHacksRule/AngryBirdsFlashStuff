package §0!%§
{
   import §"I§.§ !R§;
   import §`6§.§6!x§;
   
   public class §,q§
   {
      
      private static var §4p§:Class = §@!T§;
       
      
      private var §>i§:§6!x§;
      
      public function §,q§()
      {
         super();
         this.§?"0§(§ !R§.§`G§(§4p§));
      }
      
      private function §?"0§(param1:XML) : void
      {
         var _loc2_:§ X§ = null;
         var _loc3_:§+c§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§>i§ = new §6!x§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new § X§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §+c§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc2_.§,9§(_loc3_);
            }
            this.§>i§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §#!-§() : Array
      {
         var _loc3_:§ X§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§>i§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("name");
         return _loc2_;
      }
      
      public function §3w§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§ X§ = this.§>i§[param1];
         var _loc3_:Array = _loc2_.§3w§();
         _loc3_.sortOn("name");
         return _loc3_;
      }
      
      public function §8d§(param1:String) : § X§
      {
         return this.§>i§[param1.toUpperCase()];
      }
   }
}
