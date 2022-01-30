package §<i§
{
   public class §-"?§ extends §'!e§
   {
       
      
      private var §-f§:§@!%§ = null;
      
      private var §3!S§:int = 0;
      
      public function §-"?§()
      {
         super();
      }
      
      public static function §!!B§() : §-"?§
      {
         var _loc1_:§-"?§ = new §-"?§();
         _loc1_.§3!S§ = 0;
         _loc1_.§-f§ = §@!%§.§[2§("");
         _loc1_.§-!9§ = false;
         _loc1_.theme = §>!=§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§+!S§ = new §+!S§();
         _loc2_.bottom = 50;
         _loc2_.right = 50;
         _loc2_.id = "SLINGSHOT";
         _loc1_.§ d§(_loc2_);
         var _loc3_:§+!S§ = new §+!S§();
         _loc3_.bottom = 50;
         _loc3_.right = 50;
         _loc3_.id = "CASTLE";
         _loc1_.§ d§(_loc3_);
         return _loc1_;
      }
      
      public static function § !N§(param1:String) : §-"?§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§-"?§ = new §-"?§();
         _loc3_.§[""§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§3!S§ = _loc2_.rating;
         }
         _loc3_.§-f§ = §@!%§.§,!W§(_loc2_);
         return _loc3_;
      }
      
      public function get §-C§() : §@!%§
      {
         return this.§-f§;
      }
      
      public function get §9e§() : int
      {
         return this.§3!S§;
      }
      
      public function set §9e§(param1:int) : void
      {
         this.§3!S§ = param1;
      }
   }
}
