package §7r§
{
   import §^_§.§,>§;
   
   public class §5e§
   {
      
      public static const §'!f§:Class = §'!r§;
       
      
      private var §"!c§:Array;
      
      public function §5e§()
      {
         this.§"!c§ = [];
         super();
         this.§`!J§();
      }
      
      public function get characters() : Array
      {
         return this.§"!c§;
      }
      
      private function §`!J§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§#!q§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §,>§.§%2§(§'!f§);
         this.§"!c§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §#!q§();
            _loc3_.§&!X§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§7!6§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§2!V§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@snapshotScale)
            {
               _loc3_.§"`§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§"`§ = _loc3_.§7!6§;
            }
            if(_loc4_ = _loc2_.@profileImageScale)
            {
               _loc3_.§+!i§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§"`§ = _loc3_.§7!6§;
            }
            this.§"!c§.push(_loc3_);
         }
      }
   }
}
