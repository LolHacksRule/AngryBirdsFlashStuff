package § G§
{
   import §-!C§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §5V§:b2Simplex;
      
      private static var §^O§:Vector.<int>;
      
      private static var §%?§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2Distance))
         {
            §5V§ = new b2Simplex();
            while(true)
            {
               §^O§ = new Vector.<int>(3);
               while(_loc2_ || _loc1_)
               {
                  §%?§ = new Vector.<int>(3);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §const§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc29_)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc28_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc29_ || param1)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§;!?§;
         var _loc5_:b2DistanceProxy = param3.§&z§;
         var _loc6_:b2Transform = param3.§+]§;
         var _loc7_:b2Transform = param3.§&!6§;
         var _loc8_:b2Simplex;
         (_loc8_ = §5V§).§1!B§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§3!S§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §^O§;
         var _loc12_:Vector.<int> = §%?§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§<k§()).§?a§());
         if(_loc29_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         var _loc19_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc19_);
            loop1:
            while(true)
            {
               §§push(_loc10_);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc29_)
                     {
                        addr676:
                        b2_gjkMaxIters = b2Math.§2a§(b2_gjkMaxIters,_loc19_);
                        if(!(_loc28_ && param3))
                        {
                           _loc8_.§'Y§(param1.§^N§,param1.§!B§);
                           param1.§ !@§ = b2Math.§?d§(param1.§^N§,param1.§!B§).§8!%§();
                           param1.§5j§ = _loc19_;
                           _loc8_.§3e§(param2);
                           addr849:
                           addr856:
                           addr833:
                           addr838:
                           if(param3.§0V§)
                           {
                              addr822:
                              if(_loc29_)
                              {
                                 addr827:
                                 _loc23_ = _loc4_.§=!W§;
                                 addr807:
                                 §§push(_loc5_.§=!W§);
                                 if(_loc29_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc24_ = §§pop();
                                 addr808:
                                 addr826:
                                 if(!_loc28_)
                                 {
                                    if(!(_loc28_ && param3))
                                    {
                                       addr760:
                                       §§push(param1.§ !@§);
                                       if(_loc29_ || param2)
                                       {
                                          if(!(_loc28_ && b2Distance))
                                          {
                                             §§push(_loc23_);
                                             if(!(_loc28_ && param3))
                                             {
                                                §§push(§§pop() + _loc24_);
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(_loc29_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   addr797:
                                                   §§pop();
                                                   addr798:
                                                   if(_loc29_)
                                                   {
                                                      §§push(param1.§ !@§);
                                                      if(_loc29_ || param2)
                                                      {
                                                         if(_loc29_ || param2)
                                                         {
                                                            §§push(§§pop() > Number.MIN_VALUE);
                                                            if(_loc29_)
                                                            {
                                                               if(!(_loc28_ && b2Distance))
                                                               {
                                                                  addr719:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc28_ && param3))
                                                                     {
                                                                        if(_loc29_ || b2Distance)
                                                                        {
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(param1);
                                                                              §§push(param1.§ !@§);
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(_loc23_);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc24_);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              §§pop().§ !@§ = §§pop();
                                                                              addr749:
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    addr758:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr760);
                                                                                    }
                                                                                    (_loc25_ = b2Math.§?d§(param1.§!B§,param1.§^N§)).Normalize();
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       addr1027:
                                                                                       param1.§^N§.x += _loc23_ * _loc25_.x;
                                                                                       addr1028:
                                                                                       addr1022:
                                                                                       addr1023:
                                                                                       addr1026:
                                                                                       addr1025:
                                                                                       addr1021:
                                                                                       §§push(param1.§^N§);
                                                                                       if(_loc29_ || b2Distance)
                                                                                       {
                                                                                          §§push(param1.§^N§);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§push(_loc23_);
                                                                                                   if(!(_loc28_ && b2Distance))
                                                                                                   {
                                                                                                      §§push(_loc25_.y);
                                                                                                      if(!(_loc28_ && param1))
                                                                                                      {
                                                                                                         addr993:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc28_ && param3))
                                                                                                         {
                                                                                                            if(_loc29_ || param2)
                                                                                                            {
                                                                                                               addr1008:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc29_ || b2Distance)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr927:
                                                                                                                  addr947:
                                                                                                                  addr932:
                                                                                                                  addr930:
                                                                                                                  §§push(param1.§!B§);
                                                                                                                  §§push(param1.§!B§.x);
                                                                                                                  if(_loc29_ || param1)
                                                                                                                  {
                                                                                                                     addr946:
                                                                                                                     §§push(_loc24_);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        addr945:
                                                                                                                        §§push(§§pop() * _loc25_.x);
                                                                                                                     }
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                  }
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(param1.§!B§);
                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                     {
                                                                                                                        §§push(param1.§!B§);
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(!(_loc28_ && param3))
                                                                                                                           {
                                                                                                                              if(!(_loc28_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc24_);
                                                                                                                                 if(_loc29_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc25_.y);
                                                                                                                                    if(!(_loc28_ && param1))
                                                                                                                                    {
                                                                                                                                       addr912:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          addr915:
                                                                                                                                          §§pop().y = §§pop() - §§pop();
                                                                                                                                          if(_loc29_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc29_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr927);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1160);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1028);
                                                                                                                                          }
                                                                                                                                          §§goto(addr927);
                                                                                                                                       }
                                                                                                                                       §§goto(addr946);
                                                                                                                                    }
                                                                                                                                    §§goto(addr945);
                                                                                                                                 }
                                                                                                                                 §§goto(addr912);
                                                                                                                              }
                                                                                                                              §§goto(addr947);
                                                                                                                           }
                                                                                                                           §§goto(addr915);
                                                                                                                        }
                                                                                                                        §§goto(addr932);
                                                                                                                     }
                                                                                                                     §§goto(addr930);
                                                                                                                     addr950:
                                                                                                                  }
                                                                                                                  addr1016:
                                                                                                                  §§goto(addr1016);
                                                                                                               }
                                                                                                               §§goto(addr1022);
                                                                                                            }
                                                                                                            §§goto(addr1023);
                                                                                                         }
                                                                                                         §§goto(addr1026);
                                                                                                      }
                                                                                                      §§goto(addr1025);
                                                                                                   }
                                                                                                   §§goto(addr993);
                                                                                                }
                                                                                                §§goto(addr1027);
                                                                                             }
                                                                                             §§goto(addr1008);
                                                                                          }
                                                                                          §§goto(addr1021);
                                                                                       }
                                                                                       addr1019:
                                                                                       §§goto(addr1019);
                                                                                    }
                                                                                    §§goto(addr950);
                                                                                 }
                                                                                 §§goto(addr822);
                                                                              }
                                                                              §§goto(addr798);
                                                                           }
                                                                           §§goto(addr849);
                                                                        }
                                                                        §§goto(addr808);
                                                                     }
                                                                     §§goto(addr749);
                                                                  }
                                                                  §§push(_loc18_ = new b2Vec2());
                                                                  §§push(0.5);
                                                                  if(_loc29_)
                                                                  {
                                                                     §§push(param1.§^N§.x);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(§§pop() + param1.§!B§.x);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  if(!(_loc28_ && param2))
                                                                  {
                                                                     §§push(_loc18_);
                                                                     §§push(0.5);
                                                                     if(!(_loc28_ && param2))
                                                                     {
                                                                        §§push(param1.§^N§.y);
                                                                        if(_loc29_ || b2Distance)
                                                                        {
                                                                           §§push(§§pop() + param1.§!B§.y);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(param1.§^N§);
                                                                        if(_loc29_)
                                                                        {
                                                                           §§push(param1.§!B§);
                                                                           if(!(_loc28_ && param1))
                                                                           {
                                                                              §§push(_loc18_.x);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    _loc26_ = §§pop();
                                                                                    if(!(_loc28_ && param1))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          §§push(_loc26_);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   addr1136:
                                                                                                   param1.§!B§.y = _loc26_ = _loc18_.y;
                                                                                                   addr1139:
                                                                                                   param1.§^N§.y = _loc26_;
                                                                                                   if(_loc29_ || param2)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr1160);
                                                                                                }
                                                                                                param1.§ !@§ = 0;
                                                                                                §§goto(addr1160);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1139);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1136);
                                                                     }
                                                                  }
                                                                  §§goto(addr1136);
                                                               }
                                                               §§goto(addr849);
                                                            }
                                                            §§goto(addr797);
                                                         }
                                                         §§goto(addr827);
                                                      }
                                                      §§goto(addr760);
                                                   }
                                                   §§goto(addr856);
                                                }
                                                §§goto(addr719);
                                             }
                                             §§goto(addr797);
                                          }
                                          §§goto(addr826);
                                       }
                                       §§goto(addr807);
                                    }
                                    §§goto(addr833);
                                 }
                                 addr828:
                                 §§goto(addr828);
                              }
                              §§goto(addr838);
                           }
                           addr1160:
                           return;
                           addr689:
                        }
                        §§goto(addr758);
                     }
                     §§goto(addr849);
                  }
                  else
                  {
                     §§push(_loc8_.§[B§);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc13_ = §§pop();
                           if(_loc29_ || param3)
                           {
                              §§push(0);
                              if(_loc29_)
                              {
                                 _loc17_ = §§pop();
                                 if(!_loc28_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(!_loc28_)
                                       {
                                          if(_loc29_ || param2)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       addr192:
                                    }
                                    continue loop1;
                                 }
                                 addr332:
                                 §§push(_loc8_.§[B§);
                                 if(_loc28_)
                                 {
                                    continue loop1;
                                 }
                              }
                              §§push(3);
                              if(_loc28_ && param1)
                              {
                                 continue loop2;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc28_)
                                 {
                                    §§goto(addr676);
                                 }
                                 §§goto(addr849);
                              }
                              else
                              {
                                 §§push((_loc18_ = _loc8_.§<k§()).§?a§());
                                 if(_loc29_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc28_ && param2))
                                    {
                                       §§push(§§pop());
                                       if(!(_loc28_ && param2))
                                       {
                                          _loc16_ = §§pop();
                                          addr388:
                                          if(_loc29_ || b2Distance)
                                          {
                                             §§push(_loc15_);
                                          }
                                          _loc15_ = §§pop();
                                          if((_loc20_ = _loc8_.§`!S§()).§?a§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                          {
                                             §§goto(addr676);
                                          }
                                          else
                                          {
                                             (_loc21_ = _loc9_[_loc8_.§[B§]).indexA = _loc4_.§"9§(b2Math.§1!F§(_loc6_.R,_loc20_.§<!#§()));
                                             if(!_loc28_)
                                             {
                                                _loc21_.§<j§ = b2Math.§&B§(_loc6_,_loc4_.§]!A§(_loc21_.indexA));
                                                if(!(_loc28_ && param1))
                                                {
                                                   _loc21_.indexB = _loc5_.§"9§(b2Math.§1!F§(_loc7_.R,_loc20_));
                                                   if(!(_loc29_ || param2))
                                                   {
                                                      continue loop0;
                                                   }
                                                   _loc21_.§ a§ = b2Math.§&B§(_loc7_,_loc5_.§]!A§(_loc21_.indexB));
                                                   if(_loc29_)
                                                   {
                                                      addr427:
                                                      _loc21_.§+!!§ = b2Math.§?d§(_loc21_.§ a§,_loc21_.§<j§);
                                                      if(!_loc28_)
                                                      {
                                                         _loc19_++;
                                                         if(_loc29_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr427);
                                                            }
                                                            §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                            if(_loc29_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc27_ = §§pop();
                                                            if(_loc29_ || b2Distance)
                                                            {
                                                               _loc26_.b2_gjkIters = _loc27_;
                                                            }
                                                            if(!(_loc28_ && param2))
                                                            {
                                                               §§push(false);
                                                               if(!(_loc28_ && b2Distance))
                                                               {
                                                                  _loc22_ = §§pop();
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     addr600:
                                                                     _loc17_ = 0;
                                                                     if(!(_loc29_ || param2))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr626:
                                                                     if(_loc17_ < _loc13_)
                                                                     {
                                                                        §§push(_loc21_.indexA);
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           if(!(_loc28_ && b2Distance))
                                                                           {
                                                                              addr594:
                                                                              §§push(§§pop() == _loc11_[_loc17_]);
                                                                              if(§§pop() == _loc11_[_loc17_])
                                                                              {
                                                                                 addr596:
                                                                                 §§pop();
                                                                                 addr597:
                                                                                 §§push(_loc21_.indexB);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() == _loc12_[_loc17_]);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr536:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc29_ || param2)
                                                                                             {
                                                                                                if(!(_loc28_ && param1))
                                                                                                {
                                                                                                   addr552:
                                                                                                   §§push(true);
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§goto(addr596);
                                                                                                      }
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         addr637:
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push((_loc26_ = _loc8_).§[B§);
                                                                                                            if(!(_loc28_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                            }
                                                                                                            _loc27_ = §§pop();
                                                                                                            if(_loc29_ || param2)
                                                                                                            {
                                                                                                               _loc26_.§[B§ = _loc27_;
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         if(!(_loc29_ || b2Distance))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr645:
                                                                                                         §§goto(addr676);
                                                                                                         addr560:
                                                                                                      }
                                                                                                      §§goto(addr645);
                                                                                                   }
                                                                                                   §§goto(addr637);
                                                                                                }
                                                                                                §§goto(addr597);
                                                                                             }
                                                                                             §§goto(addr637);
                                                                                          }
                                                                                          _loc17_++;
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr596);
                                                                                             }
                                                                                             §§goto(addr626);
                                                                                          }
                                                                                          §§goto(addr637);
                                                                                       }
                                                                                       §§goto(addr594);
                                                                                    }
                                                                                    §§goto(addr637);
                                                                                 }
                                                                                 §§goto(addr626);
                                                                              }
                                                                              §§goto(addr536);
                                                                           }
                                                                           §§goto(addr600);
                                                                        }
                                                                        §§goto(addr626);
                                                                     }
                                                                     if(_loc29_ || param3)
                                                                     {
                                                                     }
                                                                     §§goto(addr645);
                                                                     addr608:
                                                                  }
                                                               }
                                                               §§goto(addr637);
                                                            }
                                                            §§goto(addr645);
                                                         }
                                                         §§goto(addr560);
                                                         addr438:
                                                      }
                                                      §§goto(addr596);
                                                   }
                                                   §§goto(addr608);
                                                }
                                                §§goto(addr552);
                                             }
                                             §§goto(addr438);
                                          }
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc28_)
                                          {
                                             addr384:
                                             §§push(_loc16_);
                                             if(!_loc28_)
                                             {
                                                addr387:
                                                §§goto(addr388);
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr388);
                                       }
                                       §§goto(addr384);
                                    }
                                    §§goto(addr388);
                                 }
                                 §§goto(addr387);
                              }
                           }
                           break;
                        }
                     }
                  }
                  §§goto(addr827);
               }
            }
         }
      }
   }
}
