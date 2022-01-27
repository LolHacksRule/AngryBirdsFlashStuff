package §;!0§
{
   import §'#§.§'!l§;
   import §'#§.§?u§;
   import §;"=§.§<!8§;
   
   public class §;"<§ extends §#2§
   {
       
      
      public function §;"<§()
      {
         super();
      }
      
      override protected function getEpisodeModel(param1:Array) : §]§
      {
         return new §@d§(param1);
      }
      
      override public function getLevelForId(param1:String) : §!!X§
      {
         var _loc2_:§]§ = getEpisodeForLevel(param1);
         if(!_loc2_)
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return _loc2_.§7!-§(param1);
      }
      
      public function §5Y§(param1:String, param2:§<!8§) : void
      {
         var _loc5_:* = null;
         var _loc6_:§?u§ = null;
         var _loc7_:§]§ = null;
         var _loc8_:String = null;
         var _loc9_:§?u§ = null;
         var _loc10_:§?u§ = null;
         var _loc11_:§!!X§ = null;
         var _loc3_:§?u§ = new §?u§();
         var _loc4_:Object = §'!l§.§&K§(param1);
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_.toLowerCase()] = new §?u§(_loc4_[_loc5_]);
         }
         _loc6_ = _loc3_["default"];
         for each(_loc7_ in §=z§)
         {
            for each(_loc8_ in _loc7_.§4e§())
            {
               if(_loc9_ = _loc3_[_loc8_])
               {
                  _loc10_ = _loc9_;
               }
               else
               {
                  _loc10_ = _loc6_;
               }
               if(_loc11_ = _loc7_.§7!-§(_loc8_))
               {
                  _loc11_.scoreSilver = _loc10_.silverScore;
                  _loc11_.scoreGold = _loc10_.goldScore;
               }
            }
         }
      }
   }
}
