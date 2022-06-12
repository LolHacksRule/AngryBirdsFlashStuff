package §4y§
{
   import §+!c§.§9"H§;
   
   public class §"!`§
   {
      
      public static const §4-§:Class = §3"J§;
       
      
      private var §+Y§:Array;
      
      public function §"!`§()
      {
         this.§+Y§ = [];
         super();
         this.§%"+§();
      }
      
      public function §>"!§(param1:String) : §0"H§
      {
         var _loc2_:§0"H§ = null;
         for each(_loc2_ in this.§]!z§)
         {
            if(_loc2_.§&N§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]!z§() : Array
      {
         return this.§+Y§;
      }
      
      private function §%"+§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§0"H§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §9"H§.§5!h§(§4-§);
         this.§+Y§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §0"H§();
            _loc3_.§&N§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§'&§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§`k§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§+Y§.push(_loc3_);
         }
      }
   }
}
