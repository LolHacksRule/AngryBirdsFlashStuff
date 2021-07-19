package §3"5§
{
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §-"z§:b2Simplex;
      
      private static var §4S§:Vector.<int>;
      
      private static var §%!F§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §-"z§ = new b2Simplex();
            while(true)
            {
               §4S§ = new Vector.<int>(3);
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §%!F§ = new Vector.<int>(3);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §?"2§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc29_ || b2Distance)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc28_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!_loc28_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§<!b§;
         var _loc5_:b2DistanceProxy = param3.§#!]§;
         var _loc6_:b2Transform = param3.§##=§;
         var _loc7_:b2Transform = param3.§&#L§;
         var _loc8_:b2Simplex;
         (_loc8_ = §-"z§).§&!J§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§=#S§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §4S§;
         var _loc12_:Vector.<int> = §%!F§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§8#H§()).§1"t§());
         if(!(_loc28_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!(_loc28_ && param2))
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
                     if(!(_loc28_ && b2Distance))
                     {
                        break;
                     }
                     addr775:
                     if(false)
                     {
                        addr777:
                        §§push(param1.distance);
                        if(!_loc28_)
                        {
                           if(_loc29_)
                           {
                              §§push(_loc23_);
                              if(!_loc28_)
                              {
                                 §§push(§§pop() + _loc24_);
                              }
                              §§push(§§pop() > §§pop());
                              if(_loc29_ || param3)
                              {
                                 if(§§pop())
                                 {
                                    addr799:
                                    if(_loc29_)
                                    {
                                       §§pop();
                                       addr802:
                                       §§push(param1.distance);
                                       if(!(_loc28_ && param2))
                                       {
                                          if(_loc29_ || param2)
                                          {
                                             §§push(§§pop() > Number.MIN_VALUE);
                                             if(_loc29_ || param3)
                                             {
                                                addr717:
                                                if(§§pop())
                                                {
                                                   if(!(_loc28_ && param3))
                                                   {
                                                      if(_loc29_ || param1)
                                                      {
                                                         if(!_loc28_)
                                                         {
                                                            if(!_loc28_)
                                                            {
                                                               §§push(param1);
                                                               §§push(param1.distance);
                                                               if(_loc29_ || param3)
                                                               {
                                                                  §§push(_loc23_);
                                                                  if(!(_loc28_ && b2Distance))
                                                                  {
                                                                     §§push(§§pop() + _loc24_);
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§pop().distance = §§pop();
                                                               addr759:
                                                               if(_loc29_ || param2)
                                                               {
                                                                  if(!_loc28_)
                                                                  {
                                                                     if(_loc29_ || param1)
                                                                     {
                                                                        §§goto(addr775);
                                                                     }
                                                                     addr820:
                                                                     if(_loc29_ || param1)
                                                                     {
                                                                        addr830:
                                                                        _loc23_ = _loc4_.§ "^§;
                                                                        §§push(_loc5_.§ "^§);
                                                                        if(_loc29_ || b2Distance)
                                                                        {
                                                                           addr814:
                                                                           _loc24_ = §§pop();
                                                                           addr815:
                                                                           §§goto(addr777);
                                                                        }
                                                                        §§goto(addr830);
                                                                        addr831:
                                                                        addr829:
                                                                        addr827:
                                                                     }
                                                                     if(_loc29_)
                                                                     {
                                                                        param1.§0"b§ = _loc19_;
                                                                        _loc8_.§"!f§(param2);
                                                                        addr819:
                                                                        if(param3.§@"k§)
                                                                        {
                                                                           §§goto(addr820);
                                                                        }
                                                                        addr1165:
                                                                        return;
                                                                        addr841:
                                                                        addr836:
                                                                        addr854:
                                                                     }
                                                                     param1.distance = b2Math.§8!3§(param1.§0!,§,param1.§##C§).Length();
                                                                     addr861:
                                                                     §§goto(addr820);
                                                                     addr861:
                                                                  }
                                                                  §§goto(addr831);
                                                               }
                                                               §§goto(addr815);
                                                            }
                                                            §§goto(addr841);
                                                         }
                                                         §§goto(addr836);
                                                      }
                                                      §§goto(addr802);
                                                   }
                                                   §§goto(addr759);
                                                }
                                                §§push(_loc18_ = new b2Vec2());
                                                §§push(0.5);
                                                if(!(_loc28_ && param3))
                                                {
                                                   §§push(param1.§0!,§.x);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() + param1.§##C§.x);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                if(!(_loc28_ && param2))
                                                {
                                                   §§push(_loc18_);
                                                   §§push(0.5);
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      §§push(param1.§0!,§.y);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(§§pop() + param1.§##C§.y);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§pop().y = §§pop();
                                                   if(_loc29_)
                                                   {
                                                      §§push(param1.§0!,§);
                                                      if(!(_loc28_ && b2Distance))
                                                      {
                                                         §§push(param1.§##C§);
                                                         if(!_loc28_)
                                                         {
                                                            §§push(_loc18_.x);
                                                            if(_loc29_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc28_)
                                                               {
                                                                  _loc26_ = §§pop();
                                                                  if(_loc29_ || b2Distance)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(_loc26_);
                                                                        if(!_loc28_)
                                                                        {
                                                                           if(!(_loc28_ && b2Distance))
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr1162:
                                                                              if(_loc29_ || b2Distance)
                                                                              {
                                                                                 addr1141:
                                                                                 param1.§##C§.y = _loc26_ = _loc18_.y;
                                                                                 addr1143:
                                                                                 §§push(param1.§0!,§);
                                                                                 §§push(_loc26_);
                                                                              }
                                                                              param1.distance = 0;
                                                                              §§goto(addr1165);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              §§goto(addr1162);
                                                                           }
                                                                           §§goto(addr1165);
                                                                        }
                                                                     }
                                                                     §§goto(addr1143);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1141);
                                                   }
                                                }
                                                §§goto(addr1162);
                                             }
                                             §§goto(addr799);
                                          }
                                          §§goto(addr814);
                                       }
                                       §§goto(addr777);
                                    }
                                    §§goto(addr819);
                                 }
                                 §§goto(addr717);
                              }
                              §§goto(addr799);
                           }
                           §§goto(addr829);
                        }
                        §§goto(addr830);
                     }
                     (_loc25_ = b2Math.§8!3§(param1.§##C§,param1.§0!,§)).Normalize();
                     if(_loc29_ || param3)
                     {
                        addr1027:
                        param1.§0!,§.x += _loc23_ * _loc25_.x;
                        addr1028:
                        addr1023:
                        addr1025:
                        addr1026:
                        addr1022:
                        addr1021:
                        §§push(param1.§0!,§);
                        if(!_loc28_)
                        {
                           §§push(param1.§0!,§);
                           if(_loc29_)
                           {
                              §§push(§§pop().y);
                              if(!_loc28_)
                              {
                                 if(!(_loc28_ && param1))
                                 {
                                    if(_loc29_)
                                    {
                                       §§push(_loc23_);
                                       if(!(_loc28_ && b2Distance))
                                       {
                                          if(!_loc28_)
                                          {
                                             §§push(_loc25_.y);
                                             if(!(_loc28_ && param1))
                                             {
                                                addr1007:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc28_ && param2))
                                                {
                                                   addr1015:
                                                   §§pop().y = §§pop() + §§pop();
                                                   addr957:
                                                   param1.§##C§.x -= _loc24_ * _loc25_.x;
                                                   addr946:
                                                   addr953:
                                                   addr955:
                                                   addr956:
                                                   addr952:
                                                   addr951:
                                                   addr949:
                                                   if(_loc29_ || param2)
                                                   {
                                                      §§push(param1.§##C§);
                                                      if(_loc29_)
                                                      {
                                                         §§push(param1.§##C§);
                                                         if(!_loc28_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  §§push(_loc24_);
                                                                  if(!_loc28_)
                                                                  {
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc25_.y);
                                                                        if(_loc29_ || param3)
                                                                        {
                                                                           addr919:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              addr927:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc29_ || b2Distance)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc29_ || b2Distance)
                                                                                 {
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr946);
                                                                                       }
                                                                                       §§goto(addr819);
                                                                                    }
                                                                                    §§goto(addr1028);
                                                                                 }
                                                                                 §§goto(addr946);
                                                                              }
                                                                              §§goto(addr957);
                                                                           }
                                                                           §§goto(addr953);
                                                                        }
                                                                        §§goto(addr955);
                                                                     }
                                                                     §§goto(addr956);
                                                                  }
                                                                  §§goto(addr919);
                                                               }
                                                               §§goto(addr952);
                                                            }
                                                            §§goto(addr927);
                                                         }
                                                         §§goto(addr951);
                                                      }
                                                      §§goto(addr949);
                                                      addr965:
                                                   }
                                                   addr1016:
                                                   §§goto(addr1016);
                                                }
                                                §§goto(addr1023);
                                             }
                                             §§goto(addr1025);
                                          }
                                          §§goto(addr1026);
                                       }
                                       §§goto(addr1007);
                                    }
                                    §§goto(addr1022);
                                 }
                                 §§goto(addr1027);
                              }
                              §§goto(addr1015);
                           }
                           §§goto(addr1021);
                        }
                        addr1019:
                        §§goto(addr1019);
                     }
                     §§goto(addr965);
                  }
                  else
                  {
                     §§push(_loc8_.§@"K§);
                     if(!_loc28_)
                     {
                        §§push(int(§§pop()));
                        if(_loc29_ || b2Distance)
                        {
                           _loc13_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              if(_loc29_ || b2Distance)
                              {
                                 _loc17_ = §§pop();
                                 if(!_loc28_)
                                 {
                                    addr254:
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(!_loc28_)
                                       {
                                          §§push(_loc13_);
                                          if(!_loc29_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                             continue loop3;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc8_.§@"K§);
                                             if(_loc29_)
                                             {
                                                break loop4;
                                             }
                                             addr334:
                                             loop7:
                                             while(true)
                                             {
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      break;
                                                   case 1:
                                                      _loc8_.Solve2();
                                                      if(_loc29_ || param2)
                                                      {
                                                         addr144:
                                                         break;
                                                      }
                                                      §§goto(addr854);
                                                   case 2:
                                                      _loc8_.Solve3();
                                                      if(_loc29_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr861);
                                                   default:
                                                      b2Settings.b2Assert(false);
                                                      if(!_loc29_)
                                                      {
                                                         break loop7;
                                                      }
                                                      continue loop6;
                                                }
                                                addr337:
                                                §§push(_loc8_.§@"K§);
                                                if(!_loc29_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(3);
                                                if(_loc28_)
                                                {
                                                   continue loop2;
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc29_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr802);
                                                }
                                                else
                                                {
                                                   §§push((_loc18_ = _loc8_.§8#H§()).§1"t§());
                                                   if(_loc29_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc29_ || param3)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            _loc16_ = §§pop();
                                                            addr388:
                                                            if(_loc29_)
                                                            {
                                                               addr380:
                                                               §§push(_loc15_);
                                                            }
                                                            _loc15_ = §§pop();
                                                            if((_loc20_ = _loc8_.§`"7§()).§1"t§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                            {
                                                               break loop2;
                                                            }
                                                            (_loc21_ = _loc9_[_loc8_.§@"K§]).indexA = _loc4_.§5!y§(b2Math.§9#A§(_loc6_.R,_loc20_.§5!]§()));
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               _loc21_.§5#1§ = b2Math.§""$§(_loc6_,_loc4_.§-",§(_loc21_.indexA));
                                                               if(!(_loc28_ && b2Distance))
                                                               {
                                                                  _loc21_.indexB = _loc5_.§5!y§(b2Math.§9#A§(_loc7_.R,_loc20_));
                                                                  if(!(_loc28_ && param2))
                                                                  {
                                                                     _loc21_.§6!V§ = b2Math.§""$§(_loc7_,_loc5_.§-",§(_loc21_.indexB));
                                                                     if(!(_loc28_ && param2))
                                                                     {
                                                                        addr432:
                                                                        _loc21_.w = b2Math.§8!3§(_loc21_.§6!V§,_loc21_.§5#1§);
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           _loc19_++;
                                                                           if(_loc29_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr432);
                                                                              }
                                                                              §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              _loc27_ = §§pop();
                                                                              if(_loc29_)
                                                                              {
                                                                                 _loc26_.b2_gjkIters = _loc27_;
                                                                              }
                                                                              if(_loc29_ || param2)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    _loc22_ = §§pop();
                                                                                    if(_loc28_ && param3)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr625:
                                                                                    _loc17_ = 0;
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr641:
                                                                                    if(_loc17_ < _loc13_)
                                                                                    {
                                                                                       §§push(_loc21_.indexA);
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() == _loc11_[_loc17_]);
                                                                                          if(_loc29_ || param3)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr621:
                                                                                                §§pop();
                                                                                                addr545:
                                                                                                addr622:
                                                                                                §§push(_loc21_.indexB);
                                                                                                if(_loc29_ || b2Distance)
                                                                                                {
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                      if(!(_loc28_ && param3))
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            addr570:
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               _loc17_++;
                                                                                                               if(!(_loc29_ || param3))
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(!(_loc28_ && param2))
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     §§goto(addr545);
                                                                                                                  }
                                                                                                                  §§goto(addr641);
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                            if(_loc29_ || param1)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  addr592:
                                                                                                                  _loc22_ = §§pop();
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     addr595:
                                                                                                                  }
                                                                                                                  addr650:
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               addr647:
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push((_loc26_ = _loc8_).§@"K§);
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                  }
                                                                                                                  _loc27_ = §§pop();
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     _loc26_.§@"K§ = _loc27_;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr650);
                                                                                                            }
                                                                                                            §§goto(addr647);
                                                                                                            §§push(_loc22_);
                                                                                                         }
                                                                                                         §§goto(addr621);
                                                                                                      }
                                                                                                      §§goto(addr592);
                                                                                                   }
                                                                                                   §§goto(addr625);
                                                                                                }
                                                                                                §§goto(addr641);
                                                                                             }
                                                                                             §§goto(addr570);
                                                                                          }
                                                                                          §§goto(addr621);
                                                                                       }
                                                                                       §§goto(addr641);
                                                                                    }
                                                                                    addr628:
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§goto(addr570);
                                                                                    }
                                                                                    §§goto(addr592);
                                                                                    addr628:
                                                                                    addr640:
                                                                                 }
                                                                                 §§goto(addr647);
                                                                              }
                                                                              §§goto(addr628);
                                                                           }
                                                                           §§goto(addr595);
                                                                        }
                                                                     }
                                                                     §§goto(addr621);
                                                                  }
                                                                  §§goto(addr640);
                                                               }
                                                               §§goto(addr592);
                                                            }
                                                            §§goto(addr628);
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc29_)
                                                            {
                                                               addr384:
                                                               §§push(_loc16_);
                                                               if(_loc29_)
                                                               {
                                                                  §§goto(addr388);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      §§goto(addr380);
                                                   }
                                                   §§goto(addr388);
                                                }
                                             }
                                             break loop2;
                                          }
                                       }
                                       break;
                                       addr190:
                                    }
                                    while(true)
                                    {
                                       _loc26_ = §§pop();
                                       if(_loc29_ || b2Distance)
                                       {
                                          §§push(1);
                                          if(!_loc28_)
                                          {
                                             §§push(_loc26_);
                                             if(_loc29_ || param2)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      addr276:
                                                      §§push(0);
                                                      if(_loc29_ || param3)
                                                      {
                                                         addr331:
                                                         if(!_loc29_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      else
                                                      {
                                                         addr293:
                                                         §§push(_loc26_);
                                                         if(_loc29_ || b2Distance)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  §§push(1);
                                                                  if(_loc28_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr318:
                                                                  §§push(2);
                                                                  if(_loc29_ || param3)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            else
                                                            {
                                                               §§push(3);
                                                               if(!_loc28_)
                                                               {
                                                                  addr317:
                                                                  if(§§pop() === _loc26_)
                                                                  {
                                                                     §§goto(addr318);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr331);
                                                                     §§push(3);
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   §§goto(addr318);
                                                }
                                                else
                                                {
                                                   §§push(2);
                                                   if(!(_loc28_ && b2Distance))
                                                   {
                                                      §§goto(addr293);
                                                   }
                                                }
                                             }
                                             §§goto(addr317);
                                          }
                                          §§goto(addr331);
                                       }
                                       §§goto(addr276);
                                    }
                                    addr254:
                                 }
                                 §§goto(addr819);
                              }
                              §§goto(addr254);
                           }
                        }
                        §§goto(addr334);
                     }
                     §§goto(addr254);
                  }
               }
               b2_gjkMaxIters = b2Math.§<#N§(b2_gjkMaxIters,_loc19_);
               if(_loc29_)
               {
                  _loc8_.§4`§(param1.§0!,§,param1.§##C§);
                  §§goto(addr861);
               }
               §§goto(addr814);
            }
         }
      }
   }
}
