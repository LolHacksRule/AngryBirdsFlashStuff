package §!K§
{
   import §6o§.§5!C§;
   
   public class §<=§
   {
      
      public static const §]!=§:Class = §5",§;
       
      
      private var §?">§:Array;
      
      public function §<=§()
      {
         this.§?">§ = [];
         super();
         this.§8!k§();
      }
      
      public function §4"3§(param1:String) : §]q§
      {
         var _loc2_:§]q§ = null;
         for each(_loc2_ in this.§]!6§)
         {
            if(_loc2_.§;!Y§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]!6§() : Array
      {
         return this.§?">§;
      }
      
      private function §8!k§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§]q§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §5!C§.§9G§(§]!=§);
         this.§?">§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §]q§();
            _loc3_.§;!Y§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§;"D§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§+h§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§?">§.push(_loc3_);
         }
      }
   }
}
