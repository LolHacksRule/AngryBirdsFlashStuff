package §8!-§
{
   import §0!?§.§1!%§;
   
   public class §`"$§
   {
      
      public static const §5"5§:Class = §?!R§;
       
      
      private var §const§:Array;
      
      public function §`"$§()
      {
         this.§const§ = [];
         super();
         this.§+!x§();
      }
      
      public function §!v§(param1:String) : §["<§
      {
         var _loc2_:§["<§ = null;
         for each(_loc2_ in this.§`"-§)
         {
            if(_loc2_.§4W§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §`"-§() : Array
      {
         return this.§const§;
      }
      
      private function §+!x§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§["<§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §1!%§.§8!?§(§5"5§);
         this.§const§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §["<§();
            _loc3_.§4W§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§0"4§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§ !+§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§const§.push(_loc3_);
         }
      }
   }
}
