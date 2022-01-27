package §1z§
{
   import §3>§.§?_§;
   import §4u§.§"!+§;
   import §4u§.§5!t§;
   
   public class §+"A§ extends §^!@§
   {
       
      
      public function §+"A§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §^"6§
      {
         return new §!"@§(param1);
      }
      
      override public function getLevelForId(param1:String) : §2#§
      {
         var _loc2_:§^"6§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§<d§(param1);
      }
      
      public function §5!N§(param1:String, param2:§?_§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§5!t§ = null;
         var _loc7_:§^"6§ = null;
         var _loc8_:String = null;
         var _loc9_:§5!t§ = null;
         var _loc10_:§5!t§ = null;
         var _loc11_:§2#§ = null;
         var _loc3_:§5!t§ = new §5!t§();
         var _loc4_:Object = §"!+§.§%$§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §5!t§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §>!A§)
         {
            for each(_loc8_ in _loc7_.§@,§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§<d§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
