package §`!j§
{
   import § !Y§.§9k§;
   import § !Y§.§[!%§;
   import §"!&§.§!"7§;
   
   public class §&",§ extends §9"!§
   {
       
      
      public function §&",§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §3,§
      {
         return new §4K§(param1);
      }
      
      override public function getLevelForId(param1:String) : §#b§
      {
         var _loc2_:§3,§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§1!B§(param1);
      }
      
      public function §+!V§(param1:String, param2:§!"7§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§[!%§ = null;
         var _loc7_:§3,§ = null;
         var _loc8_:String = null;
         var _loc9_:§[!%§ = null;
         var _loc10_:§[!%§ = null;
         var _loc11_:§#b§ = null;
         var _loc3_:§[!%§ = new §[!%§();
         var _loc4_:Object = §9k§.§9"@§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §[!%§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §,<§)
         {
            for each(_loc8_ in _loc7_.§9"<§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§1!B§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
