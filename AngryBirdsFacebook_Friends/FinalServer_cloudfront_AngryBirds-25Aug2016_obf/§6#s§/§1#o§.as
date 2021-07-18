package §6#s§
{
   import §!x§.§?!Q§;
   
   public class §1#o§
   {
      
      public static const § !U§:Class = §6!"§;
       
      
      private var §@O§:Array;
      
      public function §1#o§()
      {
         this.§@O§ = [];
         super();
         this.§1!C§();
      }
      
      public function §]"T§(param1:String) : §8#?§
      {
         var _loc2_:§8#?§ = null;
         for each(_loc2_ in this.§1"L§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §1"L§() : Array
      {
         return this.§@O§;
      }
      
      private function §1!C§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§8#?§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §?!Q§.§<1§(§ !U§);
         this.§@O§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §8#?§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§ #!§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§6##§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§@O§.push(_loc3_);
         }
      }
   }
}
