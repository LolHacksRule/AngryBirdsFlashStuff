package § #s§
{
   import §9#K§.§#D§;
   
   public class §<"@§
   {
      
      public static const §2!3§:Class = §?o§;
       
      
      private var §%$6§:Array;
      
      public function §<"@§()
      {
         this.§%$6§ = [];
         super();
         this.§,8§();
      }
      
      public function §>#§(param1:String) : §`c§
      {
         var _loc2_:§`c§ = null;
         for each(_loc2_ in this.§=!+§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §=!+§() : Array
      {
         return this.§%$6§;
      }
      
      private function §,8§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§`c§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §#D§.§%"l§(§2!3§);
         this.§%$6§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §`c§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§3!s§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§1u§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§%$6§.push(_loc3_);
         }
      }
   }
}
