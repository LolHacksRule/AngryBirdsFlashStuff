package §!!n§
{
   import § !Q§.§=!3§;
   import §!!&§.§4!7§;
   
   public class §[i§
   {
      
      private static var §!!G§:Class = §4!N§;
       
      
      private var §<T§:§4!7§;
      
      public function §[i§()
      {
         super();
         this.§#U§(§=!3§.§0I§(§!!G§));
      }
      
      private function §#U§(param1:XML) : void
      {
         var _loc2_:§#%§ = null;
         var _loc3_:§>!^§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         this.§<T§ = new §4!7§();
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §#%§();
            _loc2_.id = _loc4_.@id;
            _loc2_.name = _loc4_.@name;
            _loc2_.brand = _loc4_.@brand;
            for each(_loc5_ in _loc4_.language)
            {
               _loc3_ = new §>!^§();
               _loc3_.id = _loc5_.@id;
               _loc3_.name = _loc5_.@name;
               _loc2_.§-!0§(_loc3_);
            }
            this.§<T§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §,!x§() : Array
      {
         var _loc3_:§#%§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§<T§)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_.sortOn("name");
         return _loc2_;
      }
      
      public function §0!7§(param1:String) : Array
      {
         param1 = param1.toUpperCase();
         var _loc2_:§#%§ = this.§<T§[param1];
         var _loc3_:Array = _loc2_.§0!7§();
         _loc3_.sortOn("name");
         return _loc3_;
      }
      
      public function §3r§(param1:String) : §#%§
      {
         return this.§<T§[param1.toUpperCase()];
      }
   }
}
