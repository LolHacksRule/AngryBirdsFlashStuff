package §^"K§
{
   import §#"3§.§"$!§;
   
   public class §'"V§
   {
      
      public static const §@#,§:Class = §;0§;
       
      
      private var §^"e§:Array;
      
      public function §'"V§()
      {
         this.§^"e§ = [];
         super();
         this.§?$"§();
      }
      
      public function §7"G§(param1:String) : §9#%§
      {
         var _loc2_:§9#%§ = null;
         for each(_loc2_ in this.§?!-§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §?!-§() : Array
      {
         return this.§^"e§;
      }
      
      private function §?$"§() : void
      {
         var _loc2_:XML = null;
         var _loc3_:§9#%§ = null;
         var _loc4_:String = null;
         var _loc1_:XML = §"$!§.§0!T§(§@#,§);
         this.§^"e§ = [];
         for each(_loc2_ in _loc1_.characters.character)
         {
            _loc3_ = new §9#%§();
            _loc3_.mId = _loc2_.@id;
            _loc3_.sId = _loc2_.@sid;
            if(_loc4_ = _loc2_.@activeScale)
            {
               _loc3_.§4!_§ = Number(_loc4_);
            }
            if(_loc4_ = _loc2_.@inactiveScale)
            {
               _loc3_.§=!>§ = Number(_loc4_);
            }
            _loc4_ = _loc2_.@snapshotScale;
            this.§^"e§.push(_loc3_);
         }
      }
   }
}
