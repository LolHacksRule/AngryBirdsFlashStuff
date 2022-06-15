package §%y§
{
   import §1#v§.§6"a§;
   
   public class §-#A§
   {
      
      public static const §0"I§:Class = §+"x§;
       
      
      private var §""e§:Array;
      
      public function §-#A§()
      {
         this.§""e§ = [];
         super();
         this.§?!$§();
      }
      
      public function §[#B§(param1:String) : §7$@§
      {
         var _loc2_:§7$@§ = null;
         for each(_loc2_ in this.§ !a§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get § !a§() : Array
      {
         return this.§""e§;
      }
      
      private function §?!$§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§7$@§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §6"a§.§&!d§(§0"I§);
         this.§""e§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §7$@§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§55§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§%!$§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§""e§.push(_loc3_);
         }
      }
   }
}
