package §4",§
{
   import §'!n§.§@B§;
   import §'!n§.§`L§;
   import §6!M§.§1",§;
   
   public class §`!1§ extends §,!j§
   {
       
      
      public function §`!1§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §2!S§
      {
         return new §"+§(param1);
      }
      
      override public function getLevelForId(param1:String) : §3v§
      {
         var _loc2_:§2!S§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§ "§(param1);
      }
      
      public function §1!A§(param1:String, param2:§1",§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§@B§ = null;
         var _loc7_:§2!S§ = null;
         var _loc8_:String = null;
         var _loc9_:§@B§ = null;
         var _loc10_:§@B§ = null;
         var _loc11_:§3v§ = null;
         var _loc3_:§@B§ = new §@B§();
         var _loc4_:Object = §`L§.§3!,§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §@B§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §]!b§)
         {
            for each(_loc8_ in _loc7_.§ "!§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§ "§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
