package §_-4§
{
   import §_-0BH§.§_-ZE§;
   
   public class §_-4H§
   {
      
      public static const §_-mf§:Class = §_-04M§;
       
      
      private var §_-x§:Array;
      
      public function §_-4H§()
      {
         this.§_-x§ = [];
         super();
         this.§_-09O§();
      }
      
      public function get characters() : Array
      {
         return this.§_-x§;
      }
      
      private function §_-09O§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§_-nq§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §_-ZE§.§_-ve§(§_-mf§);
         this.§_-x§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §_-nq§();
            _loc3_.§_-1h§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§_-P9§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§_-RG§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@snapshotScale)
            {
               _loc3_.§_-ws§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§_-ws§ = _loc3_.§_-P9§;
            }
            if(_loc4_ = _loc2_.@profileImageScale)
            {
               _loc3_.§_-wO§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§_-ws§ = _loc3_.§_-P9§;
            }
            this.§_-x§.push(_loc3_);
         }
      }
   }
}
