package §+%§
{
   public class §5!O§ extends §5!F§
   {
       
      
      private var §!!C§:§#!,§ = null;
      
      private var §-P§:int = 0;
      
      public function §5!O§()
      {
         super();
      }
      
      public static function §^x§() : §5!O§
      {
         var _loc1_:§5!O§ = new §5!O§();
         _loc1_.§-P§ = 0;
         _loc1_.§!!C§ = §#!,§.§[2§("");
         _loc1_.§@!V§ = false;
         _loc1_.theme = § true§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§+D§ = new §+D§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§?!P§(_loc2_);
         var _loc3_:§+D§ = new §+D§();
         _loc3_.id = "CASTLE";
         _loc1_.§?!P§(_loc3_);
         return _loc1_;
      }
      
      public static function §+!R§(param1:String) : §5!O§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§5!O§ = new §5!O§();
         _loc3_.§`L§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§-P§ = _loc2_.rating;
         }
         _loc3_.§!!C§ = §#!,§.§="#§(_loc2_);
         return _loc3_;
      }
      
      public function get §;!V§() : §#!,§
      {
         return this.§!!C§;
      }
      
      public function get §>3§() : int
      {
         return this.§-P§;
      }
      
      public function set §>3§(param1:int) : void
      {
         this.§-P§ = param1;
      }
   }
}
