package §-!0§
{
   public class §=J§ extends §2! §
   {
       
      
      private var §>'§:§0!k§ = null;
      
      private var §<e§:int = 0;
      
      public function §=J§()
      {
         super();
      }
      
      public static function §%!G§(param1:String) : §=J§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§=J§ = new §=J§();
         _loc3_.§,!0§(_loc2_.data as String);
         if(_loc2_.rating)
         {
            _loc3_.§<e§ = _loc2_.rating;
         }
         _loc3_.§>'§ = §0!k§.§7!`§(_loc2_);
         return _loc3_;
      }
      
      public function get info() : §0!k§
      {
         return this.§>'§;
      }
      
      public function get §'!t§() : int
      {
         return this.§<e§;
      }
      
      public function set §'!t§(param1:int) : void
      {
         this.§<e§ = param1;
      }
   }
}
