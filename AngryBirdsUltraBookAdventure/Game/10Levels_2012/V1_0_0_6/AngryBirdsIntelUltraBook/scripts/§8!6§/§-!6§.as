package §8!6§
{
   import §"x§.§3!v§;
   
   public class §-!6§
   {
      
      public static const §#c§:Class = §"!S§;
       
      
      private var §3!P§:Array;
      
      public function §-!6§()
      {
         this.§3!P§ = [];
         super();
         this.§'w§();
      }
      
      public function get characters() : Array
      {
         return this.§3!P§;
      }
      
      private function §'w§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§&!S§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §3!v§.§;!-§(§#c§);
         this.§3!P§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §&!S§();
            _loc3_.§@H§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§;Y§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§>N§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@snapshotScale)
            {
               _loc3_.§-!o§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§-!o§ = _loc3_.§;Y§;
            }
            if(_loc4_ = _loc2_.@profileImageScale)
            {
               _loc3_.§"6§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§-!o§ = _loc3_.§;Y§;
            }
            this.§3!P§.push(_loc3_);
         }
      }
   }
}
