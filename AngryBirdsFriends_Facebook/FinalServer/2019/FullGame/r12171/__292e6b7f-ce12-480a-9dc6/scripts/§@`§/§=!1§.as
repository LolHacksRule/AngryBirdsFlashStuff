package §@`§
{
   import §6"p§.§1$"§;
   
   public class §=!1§
   {
      
      public static const §0H§:Class = §8"u§;
       
      
      private var §>#S§:Array;
      
      public function §=!1§()
      {
         this.§>#S§ = [];
         super();
         this.§;#f§();
      }
      
      public function §>#6§(param1:String) : §'$8§
      {
         var _loc2_:§'$8§ = null;
         for each(_loc2_ in this.§^#,§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §^#,§() : Array
      {
         return this.§>#S§;
      }
      
      private function §;#f§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§'$8§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §1$"§.§%Z§(§0H§);
         this.§>#S§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §'$8§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§5"`§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§6F§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§>#S§.push(_loc3_);
         }
      }
   }
}
