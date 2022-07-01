package §'!O§
{
   public class §5!v§ extends §@!l§
   {
       
      
      private var §^p§:§<a§ = null;
      
      private var §""'§:int = 0;
      
      public function §5!v§()
      {
         super();
      }
      
      public static function §"q§() : §5!v§
      {
         var _loc1_:§5!v§ = new §5!v§();
         _loc1_.§""'§ = 0;
         _loc1_.§^p§ = §<a§.§2!f§("");
         _loc1_.§`!2§ = false;
         _loc1_.theme = §1q§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§+!V§ = new §+!V§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§3$§(_loc2_);
         var _loc3_:§+!V§ = new §+!V§();
         _loc3_.id = "CASTLE";
         _loc1_.§3$§(_loc3_);
         return _loc1_;
      }
      
      public static function §?D§(param1:String) : §5!v§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§5!v§ = new §5!v§();
         _loc3_.§<!C§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§""'§ = _loc2_.rating;
         }
         _loc3_.§^p§ = §<a§.§&c§(_loc2_);
         return _loc3_;
      }
      
      public function get §>!n§() : §<a§
      {
         return this.§^p§;
      }
      
      public function get §!!J§() : int
      {
         return this.§""'§;
      }
      
      public function set §!!J§(param1:int) : void
      {
         this.§""'§ = param1;
      }
   }
}
