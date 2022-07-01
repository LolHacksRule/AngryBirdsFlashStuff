package §'<§
{
   import §5!7§.§6n§;
   import §`6§.§54§;
   import §`6§.§6!x§;
   
   public class §2y§ extends §=!o§
   {
       
      
      public function §2y§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Object) : §77§
      {
         return new §""'§(param1.levelNames);
      }
      
      override public function getLevelForId(param1:String) : §;r§
      {
         var _loc2_:§77§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§3"!§(param1);
      }
      
      public function §8""§(param1:String, param2:§6n§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§6!x§ = null;
         var _loc7_:§77§ = null;
         var _loc8_:String = null;
         var _loc9_:§6!x§ = null;
         var _loc10_:§6!x§ = null;
         var _loc11_:§;r§ = null;
         var _loc3_:§6!x§ = new §6!x§();
         var _loc4_:Object = §54§.§8!d§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §6!x§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §&a§)
         {
            for each(_loc8_ in _loc7_.§7F§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§3"!§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
