package §%#!§
{
   import §<"p§.§8N§;
   
   public class §;V§
   {
      
      public static const §!!0§:Class = §;?§;
       
      
      private var §!"c§:Array;
      
      public function §;V§()
      {
         this.§!"c§ = [];
         super();
         this.§9"W§();
      }
      
      public function §6"J§(param1:String) : §4,§
      {
         var _loc2_:§4,§ = null;
         for each(_loc2_ in this.§ !z§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get § !z§() : Array
      {
         return this.§!"c§;
      }
      
      private function §9"W§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§4,§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §8N§.§1F§(§!!0§);
         this.§!"c§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §4,§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§>"Q§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§&!j§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§!"c§.push(_loc3_);
         }
      }
   }
}
