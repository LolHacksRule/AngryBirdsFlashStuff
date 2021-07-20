package §#!o§
{
   import §1!B§.§>!s§;
   
   public class §>!M§
   {
      
      public static const §6!J§:Class = §!J§;
       
      
      private var §[!V§:Array;
      
      public function §>!M§()
      {
         this.§[!V§ = [];
         super();
         this.§^d§();
      }
      
      public function get characters() : Array
      {
         return this.§[!V§;
      }
      
      private function §^d§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§5#§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §>!s§.§;§(§6!J§);
         this.§[!V§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §5#§();
            _loc3_.§9!^§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§[x§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§#q§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@snapshotScale)
            {
               _loc3_.§4!h§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§4!h§ = _loc3_.§[x§;
            }
            if(_loc4_ = _loc2_.@profileImageScale)
            {
               _loc3_.§0m§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§4!h§ = _loc3_.§[x§;
            }
            this.§[!V§.push(_loc3_);
         }
      }
   }
}
