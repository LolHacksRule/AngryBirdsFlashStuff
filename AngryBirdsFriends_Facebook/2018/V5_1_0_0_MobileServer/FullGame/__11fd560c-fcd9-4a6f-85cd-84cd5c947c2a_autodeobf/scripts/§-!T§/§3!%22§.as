package §-!T§
{
   import §]!6§.§="p§;
   
   public class §3!"§
   {
      
      public static const §1!H§:Class = §`#S§;
       
      
      private var §-#&§:Array;
      
      public function §3!"§()
      {
         this.§-#&§ = [];
         super();
         this.§^!#§();
      }
      
      public function §0Z§(param1:String) : §6#g§
      {
         var _loc2_:§6#g§ = null;
         for each(_loc2_ in this.§["J§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §["J§() : Array
      {
         return this.§-#&§;
      }
      
      private function §^!#§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6#g§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §="p§.§+@§(§1!H§);
         this.§-#&§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §6#g§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§!i§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§&!J§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§-#&§.push(_loc3_);
         }
      }
   }
}
