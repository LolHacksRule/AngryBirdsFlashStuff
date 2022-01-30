package §6!&§
{
   public class §",§ extends §0!b§
   {
       
      
      private var §;!§:§6V§ = null;
      
      private var §4!!§:int = 0;
      
      public function §",§()
      {
         super();
      }
      
      public static function §&Q§() : §",§
      {
         var _loc1_:§",§ = new §",§();
         _loc1_.§4!!§ = 0;
         _loc1_.§;!§ = §6V§.§9O§("");
         _loc1_.§0G§ = false;
         _loc1_.theme = §30§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§2!O§ = new §2!O§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§%5§(_loc2_);
         var _loc3_:§2!O§ = new §2!O§();
         _loc3_.id = "CASTLE";
         _loc1_.§%5§(_loc3_);
         return _loc1_;
      }
      
      public static function §4!S§(param1:String) : §",§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§",§ = new §",§();
         _loc3_.§93§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§4!!§ = _loc2_.rating;
         }
         _loc3_.§;!§ = §6V§.§6h§(_loc2_);
         return _loc3_;
      }
      
      public function get §6j§() : §6V§
      {
         return this.§;!§;
      }
      
      public function get §@!e§() : int
      {
         return this.§4!!§;
      }
      
      public function set §@!e§(param1:int) : void
      {
         this.§4!!§ = param1;
      }
   }
}
