package §'s§
{
   import §#!"§.*;
   import §&L§.*;
   import §+!,§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §!6§:b2Simplex;
      
      private static var §,9§:Vector.<int>;
      
      private static var §9v§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!6§ = new b2Simplex();
            while(true)
            {
               §,9§ = new Vector.<int>(3);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §9v§ = new Vector.<int>(3);
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §;!U§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(!(_loc28_ && param2))
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc28_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc29_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§5A§;
         var _loc5_:b2DistanceProxy = param3.§"T§;
         var _loc6_:b2Transform = param3.§0!a§;
         var _loc7_:b2Transform = param3.§2!A§;
         var _loc8_:b2Simplex = §!6§;
         if(_loc29_ || param3)
         {
            _loc8_.§&O§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         }
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§`V§;
         §§push(20);
         if(_loc29_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:Vector.<int> = §,9§;
         var _loc12_:Vector.<int> = §9v§;
         §§push(0);
         if(_loc29_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc13_:* = §§pop();
         var _loc14_:b2Vec2 = _loc8_.§3?§();
         §§push(_loc14_.§+!I§());
         if(!(_loc28_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(_loc15_);
         if(_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(_loc29_ || b2Distance)
         {
            §§push(int(§§pop()));
         }
         var _loc19_:* = §§pop();
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
                        §§goto(addr773);
                     }
                     §§goto(addr927);
                     addr773:
                     b2_gjkMaxIters = b2Math.§<p§(b2_gjkMaxIters,_loc19_);
                     if(!_loc28_)
                     {
                        _loc8_.§?x§(param1.§7P§,param1.§6+§);
                        param1.distance = b2Math.§;v§(param1.§7P§,param1.§6+§).§ >§();
                        addr958:
                        addr783:
                     }
                     param1.§0!j§ = _loc19_;
                     _loc8_.§"!D§(param2);
                  }
                  §§push(_loc8_.§[!U§);
                  if(_loc29_ || param2)
                  {
                     §§push(int(§§pop()));
                  }
                  loop3:
                  while(true)
                  {
                     _loc13_ = §§pop();
                     if(!_loc28_)
                     {
                        §§push(0);
                        if(_loc28_)
                        {
                           break;
                        }
                        §§push(int(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!_loc28_)
                           {
                              _loc17_ = §§pop();
                              if(_loc29_)
                              {
                                 loop5:
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
                                       if(§§pop() >= §§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc8_.§[!U§);
                                             if(!_loc28_)
                                             {
                                                while(true)
                                                {
                                                   _loc26_ = §§pop();
                                                   if(!_loc28_)
                                                   {
                                                      §§push(1);
                                                      if(_loc29_)
                                                      {
                                                         §§push(_loc26_);
                                                         if(!_loc28_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc29_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc29_)
                                                                  {
                                                                     addr337:
                                                                     addr338:
                                                                     if(§§pop() === _loc26_)
                                                                     {
                                                                        if(_loc29_ || param3)
                                                                        {
                                                                           addr346:
                                                                           §§push(2);
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr357:
                                                                              if(_loc29_)
                                                                              {
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    switch(§§pop())
                                                                                    {
                                                                                       case 0:
                                                                                          break;
                                                                                       case 1:
                                                                                          _loc8_.Solve2();
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             addr169:
                                                                                             break;
                                                                                          }
                                                                                          addr388:
                                                                                          §§goto(addr773);
                                                                                       case 2:
                                                                                          _loc8_.Solve3();
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             break loop7;
                                                                                          }
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop8;
                                                                                       default:
                                                                                          b2Settings.b2Assert(false);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr169);
                                                                                          }
                                                                                          §§goto(addr921);
                                                                                    }
                                                                                    §§push(_loc8_.§[!U§);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                    break loop3;
                                                                                 }
                                                                                 §§goto(addr860);
                                                                                 addr360:
                                                                              }
                                                                              break loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                     else if(true)
                                                                     {
                                                                        §§goto(addr357);
                                                                        §§push(3);
                                                                     }
                                                                     §§goto(addr357);
                                                                     if(_loc29_)
                                                                     {
                                                                        addr355:
                                                                     }
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            else
                                                            {
                                                               §§push(2);
                                                               if(_loc29_)
                                                               {
                                                                  §§push(_loc26_);
                                                                  if(_loc29_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(1);
                                                                           if(_loc28_ && param3)
                                                                           {
                                                                              §§goto(addr355);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr346);
                                                                        }
                                                                        §§goto(addr357);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc29_ || param1)
                                                                        {
                                                                           §§goto(addr337);
                                                                        }
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   §§goto(addr346);
                                                   continue loop8;
                                                }
                                                addr295:
                                             }
                                             §§goto(addr360);
                                          }
                                       }
                                       else
                                       {
                                          _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          if(_loc29_ || param3)
                                          {
                                             _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                             if(!(_loc28_ && param1))
                                             {
                                                §§push(_loc17_);
                                                if(!_loc29_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr388);
                                          }
                                       }
                                       §§goto(addr783);
                                    }
                                    break;
                                    addr228:
                                 }
                                 §§push(3);
                                 if(!(_loc29_ || b2Distance))
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc28_ && b2Distance))
                                    {
                                       §§goto(addr388);
                                    }
                                    §§goto(addr924);
                                 }
                                 else
                                 {
                                    _loc18_ = _loc8_.§3?§();
                                    if(_loc29_)
                                    {
                                       §§push(_loc18_.§+!I§());
                                       if(!(_loc28_ && b2Distance))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc28_ && param1))
                                          {
                                             _loc16_ = §§pop();
                                             if(!(_loc28_ && param2))
                                             {
                                                addr420:
                                                §§push(_loc16_);
                                                if(_loc29_ || param2)
                                                {
                                                   addr428:
                                                   if(§§pop() > _loc15_)
                                                   {
                                                      if(_loc28_)
                                                      {
                                                      }
                                                      addr437:
                                                      _loc20_ = _loc8_.§'2§();
                                                      if(_loc29_)
                                                      {
                                                         if(_loc20_.§+!I§() >= Number.MIN_VALUE * Number.MIN_VALUE)
                                                         {
                                                            _loc21_ = _loc9_[_loc8_.§[!U§];
                                                            if(_loc29_ || b2Distance)
                                                            {
                                                               _loc21_.indexA = _loc4_.§[-§(b2Math.§?a§(_loc6_.R,_loc20_.§[3§()));
                                                               if(_loc29_)
                                                               {
                                                                  _loc21_.§]Q§ = b2Math.§?!L§(_loc6_,_loc4_.§6!'§(_loc21_.indexA));
                                                                  if(!_loc29_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  _loc21_.indexB = _loc5_.§[-§(b2Math.§?a§(_loc7_.R,_loc20_));
                                                                  if(_loc29_)
                                                                  {
                                                                     _loc21_.§+!?§ = b2Math.§?!L§(_loc7_,_loc5_.§6!'§(_loc21_.indexB));
                                                                     if(_loc29_)
                                                                     {
                                                                        addr493:
                                                                        _loc21_.§`c§ = b2Math.§;v§(_loc21_.§+!?§,_loc21_.§]Q§);
                                                                        if(!(_loc28_ && param2))
                                                                        {
                                                                           §§push(_loc19_);
                                                                           if(_loc29_ || param2)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc28_ && param3))
                                                                                 {
                                                                                    _loc19_ = §§pop();
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr493);
                                                                                       }
                                                                                       §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                       }
                                                                                       _loc27_ = §§pop();
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          _loc26_.b2_gjkIters = _loc27_;
                                                                                       }
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr731:
                                                                                          _loc22_ = Boolean(false);
                                                                                          addr589:
                                                                                       }
                                                                                    }
                                                                                    addr718:
                                                                                    _loc17_ = int(0);
                                                                                    addr732:
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(!(_loc28_ && param1))
                                                                                    {
                                                                                       addr733:
                                                                                       if(_loc17_ < _loc13_)
                                                                                       {
                                                                                          addr690:
                                                                                          §§push(_loc21_.indexA == _loc11_[_loc17_]);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   if(_loc29_ || b2Distance)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         addr638:
                                                                                                         §§push(_loc21_.indexB);
                                                                                                         if(_loc29_ || b2Distance)
                                                                                                         {
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                     {
                                                                                                                        addr666:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                              if(_loc29_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc29_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(_loc29_)
                                                                                                                                    {
                                                                                                                                       addr619:
                                                                                                                                       if(!(_loc28_ && b2Distance))
                                                                                                                                       {
                                                                                                                                          _loc17_ = §§pop();
                                                                                                                                          if(_loc29_)
                                                                                                                                          {
                                                                                                                                             if(_loc29_ || param2)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr638);
                                                                                                                                                }
                                                                                                                                                §§goto(addr733);
                                                                                                                                             }
                                                                                                                                             addr744:
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push((_loc26_ = _loc8_).§[!U§);
                                                                                                                                                if(_loc29_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                }
                                                                                                                                                _loc27_ = §§pop();
                                                                                                                                                if(_loc29_)
                                                                                                                                                {
                                                                                                                                                   _loc26_.§[!U§ = _loc27_;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             if(_loc28_ && param3)
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             addr677:
                                                                                                                                          }
                                                                                                                                          addr752:
                                                                                                                                          §§goto(addr773);
                                                                                                                                       }
                                                                                                                                       §§goto(addr718);
                                                                                                                                    }
                                                                                                                                    §§goto(addr733);
                                                                                                                                 }
                                                                                                                                 §§goto(addr638);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr619);
                                                                                                                        }
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           addr670:
                                                                                                                           §§push(true);
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 addr676:
                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                 §§goto(addr677);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr744);
                                                                                                                        }
                                                                                                                        §§goto(addr752);
                                                                                                                     }
                                                                                                                     §§goto(addr676);
                                                                                                                  }
                                                                                                                  §§goto(addr690);
                                                                                                               }
                                                                                                               §§goto(addr744);
                                                                                                            }
                                                                                                            §§goto(addr718);
                                                                                                         }
                                                                                                         §§goto(addr690);
                                                                                                         addr714:
                                                                                                      }
                                                                                                      §§goto(addr744);
                                                                                                   }
                                                                                                   §§goto(addr731);
                                                                                                }
                                                                                                §§goto(addr744);
                                                                                             }
                                                                                             §§goto(addr666);
                                                                                          }
                                                                                          §§goto(addr731);
                                                                                       }
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          §§goto(addr744);
                                                                                       }
                                                                                       §§goto(addr752);
                                                                                       addr728:
                                                                                    }
                                                                                    §§goto(addr732);
                                                                                 }
                                                                              }
                                                                              §§goto(addr733);
                                                                           }
                                                                           §§goto(addr690);
                                                                        }
                                                                        §§goto(addr589);
                                                                     }
                                                                     §§goto(addr744);
                                                                  }
                                                                  §§goto(addr714);
                                                               }
                                                               §§goto(addr670);
                                                            }
                                                            §§goto(addr728);
                                                         }
                                                      }
                                                      §§goto(addr773);
                                                   }
                                                   §§push(_loc16_);
                                                   if(!_loc28_)
                                                   {
                                                      addr435:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                _loc15_ = §§pop();
                                             }
                                             §§goto(addr437);
                                          }
                                          §§goto(addr428);
                                       }
                                       §§goto(addr435);
                                    }
                                    §§goto(addr420);
                                 }
                              }
                              break;
                           }
                           continue loop3;
                        }
                        §§goto(addr827);
                     }
                  }
                  continue loop1;
                  addr950:
                  addr938:
                  addr933:
                  if(param3.§'!;§)
                  {
                     addr914:
                     if(!(_loc28_ && param3))
                     {
                        addr924:
                        _loc23_ = _loc4_.§5!`§;
                        addr925:
                        addr923:
                        if(_loc29_)
                        {
                           addr906:
                           _loc24_ = _loc5_.§5!`§;
                           addr905:
                           if(!_loc28_)
                           {
                              addr862:
                              §§push(param1.distance);
                              if(!_loc28_)
                              {
                                 if(_loc29_ || param1)
                                 {
                                    addr885:
                                    §§push(_loc23_);
                                    if(_loc29_ || b2Distance)
                                    {
                                       §§push(§§pop() + _loc24_);
                                    }
                                    §§push(Boolean(§§pop() > §§pop()));
                                    §§push(Boolean(§§pop() > §§pop()));
                                    if(!_loc28_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       addr891:
                                       if(_loc29_ || b2Distance)
                                       {
                                          §§pop();
                                          addr899:
                                          if(!_loc28_)
                                          {
                                             §§push(param1.distance);
                                             if(_loc29_)
                                             {
                                                if(_loc29_ || param1)
                                                {
                                                   if(_loc29_)
                                                   {
                                                      §§push(§§pop() > Number.MIN_VALUE);
                                                      if(_loc29_)
                                                      {
                                                         if(!_loc28_)
                                                         {
                                                            addr807:
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc28_)
                                                            {
                                                               if(_loc29_)
                                                               {
                                                                  addr811:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc28_ && b2Distance))
                                                                     {
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           addr827:
                                                                           §§push(param1);
                                                                           §§push(param1.distance);
                                                                           if(_loc29_ || param1)
                                                                           {
                                                                              §§push(_loc23_);
                                                                              if(_loc29_ || b2Distance)
                                                                              {
                                                                                 §§push(§§pop() + _loc24_);
                                                                              }
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           §§pop().distance = §§pop();
                                                                           addr849:
                                                                           if(_loc29_ || param2)
                                                                           {
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr860:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr862);
                                                                                    }
                                                                                    _loc25_ = b2Math.§;v§(param1.§6+§,param1.§7P§);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       _loc25_.Normalize();
                                                                                       addr1111:
                                                                                       param1.§7P§.x += _loc23_ * _loc25_.x;
                                                                                       addr1116:
                                                                                       addr1112:
                                                                                       addr1106:
                                                                                       addr1109:
                                                                                       addr1107:
                                                                                       addr1110:
                                                                                       addr1105:
                                                                                       §§push(param1.§7P§);
                                                                                       if(!(_loc28_ && b2Distance))
                                                                                       {
                                                                                          §§push(param1.§7P§);
                                                                                          if(!(_loc28_ && param2))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc29_ || b2Distance)
                                                                                             {
                                                                                                §§push(_loc23_);
                                                                                                if(_loc29_ || param3)
                                                                                                {
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc25_.y);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            addr1079:
                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               if(!(_loc28_ && param3))
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr1090:
                                                                                                                  if(!(_loc28_ && b2Distance))
                                                                                                                  {
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        addr1018:
                                                                                                                        addr1030:
                                                                                                                        addr1024:
                                                                                                                        addr1031:
                                                                                                                        addr1023:
                                                                                                                        addr1021:
                                                                                                                        §§push(param1.§6+§);
                                                                                                                        §§push(param1.§6+§.x);
                                                                                                                        §§push(_loc24_);
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           addr1029:
                                                                                                                           §§push(§§pop() * _loc25_.x);
                                                                                                                        }
                                                                                                                        §§pop().x = §§pop() - §§pop();
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           §§push(param1.§6+§);
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              §§push(param1.§6+§);
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    if(_loc29_)
                                                                                                                                    {
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc24_);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc25_.y);
                                                                                                                                             if(_loc29_ || param3)
                                                                                                                                             {
                                                                                                                                                addr1000:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc29_ || b2Distance)
                                                                                                                                                {
                                                                                                                                                   addr1008:
                                                                                                                                                   §§pop().y = §§pop() - §§pop();
                                                                                                                                                   if(_loc29_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1018);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1240);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1018);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1030);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1029);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1000);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1024);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1031);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1008);
                                                                                                                              }
                                                                                                                              §§goto(addr1023);
                                                                                                                           }
                                                                                                                           §§goto(addr1021);
                                                                                                                        }
                                                                                                                        §§goto(addr1090);
                                                                                                                        addr1099:
                                                                                                                     }
                                                                                                                     §§goto(addr1116);
                                                                                                                  }
                                                                                                                  §§goto(addr1112);
                                                                                                               }
                                                                                                               §§goto(addr1106);
                                                                                                            }
                                                                                                            §§goto(addr1111);
                                                                                                         }
                                                                                                         §§goto(addr1109);
                                                                                                      }
                                                                                                      §§goto(addr1107);
                                                                                                   }
                                                                                                   §§goto(addr1110);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1079);
                                                                                          }
                                                                                          §§goto(addr1105);
                                                                                       }
                                                                                       addr1103:
                                                                                       §§goto(addr1103);
                                                                                    }
                                                                                    §§goto(addr1099);
                                                                                 }
                                                                                 §§goto(addr958);
                                                                              }
                                                                              §§goto(addr950);
                                                                           }
                                                                           §§goto(addr925);
                                                                        }
                                                                        §§goto(addr899);
                                                                     }
                                                                     §§goto(addr849);
                                                                  }
                                                                  _loc18_ = new b2Vec2();
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(_loc18_);
                                                                     §§push(0.5);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(param1.§7P§.x);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(§§pop() + param1.§6+§.x);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        §§push(0.5);
                                                                        if(_loc29_)
                                                                        {
                                                                           §§push(param1.§7P§.y);
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(§§pop() + param1.§6+§.y);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           addr1163:
                                                                           §§push(param1.§7P§);
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(param1.§6+§);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 §§push(_loc18_.x);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       _loc26_ = §§pop();
                                                                                       if(_loc29_ || b2Distance)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          if(!(_loc28_ && b2Distance))
                                                                                          {
                                                                                             §§push(_loc26_);
                                                                                             if(_loc29_ || param3)
                                                                                             {
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      addr1231:
                                                                                                      param1.§6+§.y = _loc26_ = _loc18_.y;
                                                                                                      addr1233:
                                                                                                      §§push(param1.§7P§);
                                                                                                      §§push(_loc26_);
                                                                                                   }
                                                                                                   §§goto(addr1240);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   addr1237:
                                                                                                   param1.distance = 0;
                                                                                                }
                                                                                                §§goto(addr1240);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1233);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr1231);
                                                                        }
                                                                        §§goto(addr1237);
                                                                     }
                                                                     §§goto(addr1231);
                                                                  }
                                                                  §§goto(addr1163);
                                                               }
                                                            }
                                                            §§goto(addr885);
                                                         }
                                                         §§goto(addr891);
                                                      }
                                                      §§goto(addr807);
                                                   }
                                                   §§goto(addr923);
                                                }
                                                §§goto(addr905);
                                             }
                                             §§goto(addr862);
                                          }
                                          §§goto(addr905);
                                       }
                                       §§goto(addr950);
                                    }
                                    §§goto(addr811);
                                 }
                                 §§goto(addr924);
                              }
                              §§goto(addr906);
                           }
                           §§goto(addr914);
                           addr927:
                        }
                        §§goto(addr938);
                        addr921:
                     }
                     §§goto(addr933);
                  }
                  addr1240:
                  return;
               }
            }
         }
      }
   }
}
