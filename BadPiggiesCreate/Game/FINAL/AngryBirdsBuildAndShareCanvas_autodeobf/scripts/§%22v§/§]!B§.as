package §"v§
{
   public class §]!B§ extends §9"§
   {
       
      
      private var §3f§:§%=§ = null;
      
      private var §0r§:int = 0;
      
      public function §]!B§()
      {
         super();
      }
      
      public static function §!p§() : §]!B§
      {
         var _loc1_:§]!B§ = new §]!B§();
         _loc1_.§0r§ = 0;
         _loc1_.§3f§ = §%=§.§7!`§("");
         _loc1_.§2+§ = false;
         _loc1_.theme = §4!§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§4^§ = new §4^§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§="8§(_loc2_);
         var _loc3_:§4^§ = new §4^§();
         _loc3_.id = "CASTLE";
         _loc1_.§="8§(_loc3_);
         return _loc1_;
      }
      
      public static function §+0§(param1:String) : §]!B§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§]!B§ = new §]!B§();
         _loc3_.§1!n§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§0r§ = _loc2_.rating;
         }
         _loc3_.§3f§ = §%=§.§`!S§(_loc2_);
         return _loc3_;
      }
      
      public function get §5=§() : §%=§
      {
         return this.§3f§;
      }
      
      public function get §=p§() : int
      {
         return this.§0r§;
      }
      
      public function set §=p§(param1:int) : void
      {
         this.§0r§ = param1;
      }
   }
}
