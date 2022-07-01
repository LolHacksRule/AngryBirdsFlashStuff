package §8!e§
{
   import §!"+§.§[!Q§;
   import §%f§.§ n§;
   import §%f§.§2!'§;
   
   public class §,m§ extends §3"&§
   {
       
      
      public function §,m§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §,!M§
      {
         return new §0!H§(param1);
      }
      
      override public function getLevelForId(param1:String) : §!!E§
      {
         var _loc2_:§,!M§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§%F§(param1);
      }
      
      public function §+=§(param1:String, param2:§[!Q§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§ n§ = null;
         var _loc7_:§,!M§ = null;
         var _loc8_:String = null;
         var _loc9_:§ n§ = null;
         var _loc10_:§ n§ = null;
         var _loc11_:§!!E§ = null;
         var _loc3_:§ n§ = new § n§();
         var _loc4_:Object = §2!'§.§?!i§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new § n§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §&"-§)
         {
            for each(_loc8_ in _loc7_.§7""§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§%F§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
