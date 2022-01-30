package §>!a§
{
   import §!!<§.§7!r§;
   import §-!F§.§'k§;
   import §-!F§.§^!k§;
   
   public class §5j§ extends §5l§
   {
       
      
      public function §5j§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §>"2§
      {
         return new §@M§(param1);
      }
      
      override public function getLevelForId(param1:String) : §-?§
      {
         var _loc2_:§>"2§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§9N§(param1);
      }
      
      public function §>9§(param1:String, param2:§7!r§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§^!k§ = null;
         var _loc7_:§>"2§ = null;
         var _loc8_:String = null;
         var _loc9_:§^!k§ = null;
         var _loc10_:§^!k§ = null;
         var _loc11_:§-?§ = null;
         var _loc3_:§^!k§ = new §^!k§();
         var _loc4_:Object = §'k§.§5!]§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §^!k§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §;!Y§)
         {
            for each(_loc8_ in _loc7_.§=!5§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§9N§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
