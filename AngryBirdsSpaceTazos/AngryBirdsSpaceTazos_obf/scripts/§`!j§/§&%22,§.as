package §`!j§
{
   import § !Y§.§9k§;
   import § !Y§.§[!%§;
   import §"!&§.§!"7§;
   
   public class §&",§ extends §9"!§
   {
       
      
      public function §&",§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      override protected function getEpisodeModel(param1:Array) : §3,§
      {
         return new §4K§(param1);
      }
      
      override public function getLevelForId(param1:String) : §#b§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3,§ = getEpisodeForLevel(param1);
         if(!_loc4_)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  addr37:
               }
            }
            return _loc2_.§1!B§(param1);
         }
         §§goto(addr37);
      }
      
      public function §+!V§(param1:String, param2:§!"7§) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
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
            if(_loc17_ || param2)
            {
               _loc3_[_loc5_.toLowerCase()] = new §[!%§(_loc4_[_loc5_]);
            }
         }
         _loc6_ = _loc3_["default"];
         if(!(_loc16_ && param2))
         {
            var _loc12_:int = 0;
            if(_loc17_ || _loc3_)
            {
               for each(_loc7_ in §,<§)
               {
                  if(_loc16_ && this)
                  {
                     continue;
                  }
                  var _loc14_:int = 0;
                  if(_loc17_)
                  {
                     var _loc15_:* = _loc7_.§9"<§();
                     if(_loc17_)
                     {
                        for each(_loc8_ in _loc15_)
                        {
                        }
                        addr187:
                        continue;
                        addr187:
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
                        if(_loc11_ = _loc7_.§1!B§(_loc8_))
                        {
                           if(!_loc16_)
                           {
                              _loc11_.scoreSilver = _loc10_.silverScore;
                              if(_loc16_)
                              {
                              }
                              §§goto(addr187);
                           }
                           _loc11_.scoreGold = _loc10_.goldScore;
                        }
                        §§goto(addr187);
                     }
                  }
                  §§goto(addr187);
               }
            }
         }
      }
   }
}
