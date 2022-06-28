package §&=§
{
   import §6z§.§`!<§;
   
   public class §0!>§
   {
      
      public static const §>z§:Class = §0X§;
       
      
      private var §=!u§:Array;
      
      public function §0!>§()
      {
         this.§=!u§ = [];
         super();
         this.§@!s§();
      }
      
      public function get characters() : Array
      {
         return this.§=!u§;
      }
      
      private function §@!s§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§#!5§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §`!<§.§ !0§(§>z§);
         this.§=!u§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §#!5§();
            _loc3_.§49§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§'[§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§'!%§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@snapshotScale)
            {
               _loc3_.§,!a§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§,!a§ = _loc3_.§'[§;
            }
            if(_loc4_ = _loc2_.@profileImageScale)
            {
               _loc3_.§?!l§ = Number(_loc4_);
            }
            else
            {
               _loc3_.§,!a§ = _loc3_.§'[§;
            }
            this.§=!u§.push(_loc3_);
         }
      }
   }
}
