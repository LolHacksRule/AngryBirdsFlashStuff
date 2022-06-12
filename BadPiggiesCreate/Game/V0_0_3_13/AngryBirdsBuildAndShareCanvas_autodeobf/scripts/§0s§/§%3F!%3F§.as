package §0s§
{
   public class §?!?§ extends §];§
   {
       
      
      private var §>"1§:§@N§ = null;
      
      private var §<z§:int = 0;
      
      public function §?!?§()
      {
         super();
      }
      
      public static function §95§() : §?!?§
      {
         var _loc1_:§?!?§ = new §?!?§();
         _loc1_.§<z§ = 0;
         _loc1_.§>"1§ = §@N§.§,P§("");
         _loc1_.§[!J§ = false;
         _loc1_.theme = §!!H§;
         _loc1_.mName = "DEFAULT THEME";
         var _loc2_:§8!e§ = new §8!e§();
         _loc2_.id = "SLINGSHOT";
         _loc1_.§&e§(_loc2_);
         var _loc3_:§8!e§ = new §8!e§();
         _loc3_.id = "CASTLE";
         _loc1_.§&e§(_loc3_);
         return _loc1_;
      }
      
      public static function §>I§(param1:String) : §?!?§
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§?!?§ = new §?!?§();
         _loc3_.§4"2§(param1);
         if(_loc2_.rating)
         {
            _loc3_.§<z§ = _loc2_.rating;
         }
         _loc3_.§>"1§ = §@N§.§<'§(_loc2_);
         return _loc3_;
      }
      
      public function get §"!K§() : §@N§
      {
         return this.§>"1§;
      }
      
      public function get §'"5§() : int
      {
         return this.§<z§;
      }
      
      public function set §'"5§(param1:int) : void
      {
         this.§<z§ = param1;
      }
   }
}
