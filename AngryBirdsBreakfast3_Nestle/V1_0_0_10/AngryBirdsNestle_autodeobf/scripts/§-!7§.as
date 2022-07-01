package
{
   import §2!s§.§9#§;
   import §`!s§.§ D§;
   import §`!s§.§4M§;
   
   public class §-!7§ extends §-g§
   {
       
      
      public function §-!7§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §4<§
      {
         return new §]!!§(param1);
      }
      
      override public function getLevelForId(param1:String) : §[d§
      {
         var _loc2_:§4<§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§?!,§(param1);
      }
      
      public function §#!v§(param1:String, param2:§9#§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§4M§ = null;
         var _loc7_:§4<§ = null;
         var _loc8_:String = null;
         var _loc9_:§4M§ = null;
         var _loc10_:§4M§ = null;
         var _loc11_:§[d§ = null;
         var _loc3_:§4M§ = new §4M§();
         var _loc4_:Object = § D§.§2<§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §4M§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §@!x§)
         {
            for each(_loc8_ in _loc7_.§4!+§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§?!,§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
