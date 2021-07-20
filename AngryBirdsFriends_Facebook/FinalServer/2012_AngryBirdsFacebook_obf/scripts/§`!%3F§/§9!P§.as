package §`!?§
{
   import §[x§.§?-§;
   
   public class §9!P§
   {
      
      public static const §9!<§:Class = §4!D§;
       
      
      private var § -§:Array;
      
      public function §9!P§()
      {
         this.§ -§ = [];
         super();
         this.§6"-§();
      }
      
      public function §2f§(param1:String) : §;!`§
      {
         var _loc2_:§;!`§ = null;
         for each(_loc2_ in this.§]O§)
         {
            if(_loc2_.§3!9§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §]O§() : Array
      {
         return this.§ -§;
      }
      
      private function §6"-§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§;!`§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §?-§.§9E§(§9!<§);
         this.§ -§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §;!`§();
            _loc3_.§3!9§ = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§ !S§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§&!Q§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§ -§.push(_loc3_);
         }
      }
   }
}
