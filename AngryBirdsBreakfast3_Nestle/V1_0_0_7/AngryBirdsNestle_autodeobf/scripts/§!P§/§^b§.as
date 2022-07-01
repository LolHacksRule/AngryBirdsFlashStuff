package §!P§
{
   import §!!&§.§%9§;
   import §!!&§.§4!7§;
   import §[^§.§@!U§;
   
   public class §^b§ extends §5!1§
   {
       
      
      public function §^b§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Object) : §4K§
      {
         return new §[3§(param1.levelNames);
      }
      
      override public function getLevelForId(param1:String) : §2"4§
      {
         var _loc2_:§4K§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§5!M§(param1);
      }
      
      public function §%!q§(param1:String, param2:§@!U§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§4!7§ = null;
         var _loc7_:§4K§ = null;
         var _loc8_:String = null;
         var _loc9_:§4!7§ = null;
         var _loc10_:§4!7§ = null;
         var _loc11_:§2"4§ = null;
         var _loc3_:§4!7§ = new §4!7§();
         var _loc4_:Object = §%9§.§&"#§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §4!7§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §^!C§)
         {
            for each(_loc8_ in _loc7_.§6!O§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§5!M§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
