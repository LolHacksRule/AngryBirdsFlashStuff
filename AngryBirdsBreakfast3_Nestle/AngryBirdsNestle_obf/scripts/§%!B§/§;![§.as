package §%!B§
{
   import §%8§.§;!=§;
   import §4!i§.§0]§;
   import §4!i§.§4!S§;
   
   public class §;![§ extends §0![§
   {
       
      
      public function §;![§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override protected function getEpisodeModel(param1:Array) : §7C§
      {
         return new §!!^§(param1);
      }
      
      override public function getLevelForId(param1:String) : §5L§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7C§ = getEpisodeForLevel(param1);
         if(_loc3_)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  addr37:
               }
            }
            return _loc2_.§92§(param1);
         }
         §§goto(addr37);
      }
      
      public function §^""§(param1:String, param2:§;!=§) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc5_:* = null;
         var _loc6_:§0]§ = null;
         var _loc7_:§7C§ = null;
         var _loc8_:String = null;
         var _loc9_:§0]§ = null;
         var _loc10_:§0]§ = null;
         var _loc11_:§5L§ = null;
         var _loc3_:§0]§ = new §0]§();
         var _loc4_:Object = §4!S§.§+!5§(param1);
         for(_loc5_ in _loc4_)
         {
            if(!_loc17_)
            {
               _loc3_[_loc5_.toLowerCase()] = new §0]§(_loc4_[_loc5_]);
            }
         }
         _loc6_ = _loc3_["default"];
         if(_loc16_ || param2)
         {
            var _loc12_:int = 0;
            if(!(_loc17_ && param2))
            {
               for each(_loc7_ in §[",§)
               {
                  if(!(_loc16_ || param2))
                  {
                     continue;
                  }
                  var _loc14_:int = 0;
                  if(_loc16_ || this)
                  {
                     var _loc15_:* = _loc7_.§,!@§();
                     if(!(_loc17_ && param2))
                     {
                        for each(_loc8_ in _loc15_)
                        {
                        }
                        addr194:
                        continue;
                        addr191:
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
                        if(_loc11_ = _loc7_.§92§(_loc8_))
                        {
                           if(!_loc17_)
                           {
                              _loc11_.scoreSilver = _loc10_.silverScore;
                              if(!_loc17_)
                              {
                                 _loc11_.scoreGold = _loc10_.goldScore;
                              }
                           }
                        }
                        §§goto(addr191);
                     }
                  }
                  §§goto(addr194);
               }
            }
         }
      }
   }
}
