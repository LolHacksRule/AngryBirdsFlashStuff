package §8!K§
{
   import §"n§.§<!Z§;
   import §"n§.§<n§;
   import §&v§.§%!I§;
   
   public class §,9§ extends §5!Y§
   {
       
      
      public function §,9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      override protected function getEpisodeModel(param1:Array) : §3%§
      {
         return new §&!r§(param1);
      }
      
      override public function getLevelForId(param1:String) : §5!0§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3%§ = getEpisodeForLevel(param1);
         if(_loc4_ || _loc3_)
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  addr43:
               }
            }
            return _loc2_.§&t§(param1);
         }
         §§goto(addr43);
      }
      
      public function §&!w§(param1:String, param2:§%!I§) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
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
            if(!_loc16_)
            {
               _loc3_[_loc5_.toLowerCase()] = new §<!Z§(_loc4_[_loc5_]);
            }
         }
         _loc6_ = _loc3_["default"];
         if(!(_loc16_ && param2))
         {
            var _loc12_:int = 0;
            if(!_loc16_)
            {
               for each(_loc7_ in §``§)
               {
                  if(!(_loc17_ || this))
                  {
                     continue;
                  }
                  var _loc14_:int = 0;
                  if(!(_loc16_ && param1))
                  {
                     var _loc15_:* = _loc7_.§@!8§();
                     if(!(_loc16_ && param1))
                     {
                        for each(_loc8_ in _loc15_)
                        {
                        }
                        addr195:
                        continue;
                        addr192:
                     }
                     while(true)
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
                           if(_loc17_)
                           {
                              _loc11_.scoreSilver = _loc10_.silverScore;
                              if(_loc17_ || _loc3_)
                              {
                                 _loc11_.scoreGold = _loc10_.goldScore;
                              }
                           }
                        }
                        §§goto(addr192);
                     }
                  }
                  §§goto(addr195);
               }
            }
         }
      }
   }
}
