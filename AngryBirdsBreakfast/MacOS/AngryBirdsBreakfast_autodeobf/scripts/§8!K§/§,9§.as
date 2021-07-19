package §8!K§
{
   import §"n§.§<!Z§;
   import §"n§.§<n§;
   import §&v§.§%!I§;
   
   public class §,9§ extends §5!Y§
   {
       
      
      public function §,9§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §3%§
      {
         return new §&!r§(param1);
      }
      
      override public function getLevelForId(param1:String) : §5!0§
      {
         var _loc2_:§3%§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§&t§(param1);
      }
      
      public function §&!w§(param1:String, param2:§%!I§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§<!Z§ = null;
         var _loc7_:§3%§ = null;
         var _loc8_:String = null;
         var _loc9_:§<!Z§ = null;
         var _loc10_:§<!Z§ = null;
         var _loc11_:§5!0§ = null;
         var _loc3_:§<!Z§ = new §<!Z§();
         var _loc4_:Object = §<n§.§%d§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §<!Z§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §``§)
         {
            for each(_loc8_ in _loc7_.§@!8§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§&t§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
