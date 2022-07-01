package § !T§
{
   import §%z§.§6"$§;
   import §2W§.§5=§;
   import §2W§.§`!v§;
   
   public class §8!V§ extends § q§
   {
       
      
      public function §8!V§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Object) : §=!x§
      {
         return new §-j§(param1.levelNames);
      }
      
      override public function getLevelForId(param1:String) : §7@§
      {
         var _loc2_:§=!x§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§ 5§(param1);
      }
      
      public function §]8§(param1:String, param2:§6"$§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§`!v§ = null;
         var _loc7_:§=!x§ = null;
         var _loc8_:String = null;
         var _loc9_:§`!v§ = null;
         var _loc10_:§`!v§ = null;
         var _loc11_:§7@§ = null;
         var _loc3_:§`!v§ = new §`!v§();
         var _loc4_:Object = §5=§.§2!-§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §`!v§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §[!#§)
         {
            for each(_loc8_ in _loc7_.§[!r§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§ 5§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
