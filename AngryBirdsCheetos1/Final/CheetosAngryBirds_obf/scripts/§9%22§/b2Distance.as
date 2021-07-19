package §9"§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §3f§:b2Simplex;
      
      private static var §2m§:Vector.<int>;
      
      private static var §0!C§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3f§ = new b2Simplex();
            while(true)
            {
               §2m§ = new Vector.<int>(3);
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §0!C§ = new Vector.<int>(3);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §]!H§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc28_ || param1)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!(_loc29_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!(_loc29_ && b2Distance))
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§+X§;
         var _loc5_:b2DistanceProxy = param3.§4q§;
         var _loc6_:b2Transform = param3.§&!C§;
         var _loc7_:b2Transform = param3.§,!P§;
         var _loc8_:b2Simplex;
         (_loc8_ = §3f§).§,!H§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§9Z§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §2m§;
         var _loc12_:Vector.<int> = §0!C§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§"O§()).§27§());
         if(!(_loc29_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(!_loc29_)
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
                     if(!(_loc29_ && param2))
                     {
                        break;
                     }
                     addr728:
                     §§push(param1);
                     §§push(param1.§%!P§);
                     if(!(_loc29_ && param2))
                     {
                        §§push(_loc23_);
                        if(!(_loc29_ && param1))
                        {
                           §§push(§§pop() + _loc24_);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§%!P§ = §§pop();
                     if(_loc28_ || param3)
                     {
                        if(!_loc29_)
                        {
                           if(false)
                           {
                              addr761:
                              §§push(param1.§%!P§);
                              §§push(_loc23_);
                              if(!_loc29_)
                              {
                                 §§push(§§pop() + _loc24_);
                              }
                              §§push(§§pop() > §§pop());
                              if(_loc28_ || b2Distance)
                              {
                                 if(§§pop())
                                 {
                                    addr779:
                                    if(!_loc29_)
                                    {
                                       §§pop();
                                       addr782:
                                       if(!(_loc29_ && param3))
                                       {
                                          if(_loc28_)
                                          {
                                             §§push(param1.§%!P§);
                                             if(_loc28_ || param1)
                                             {
                                                if(_loc28_ || param1)
                                                {
                                                   if(!(_loc29_ && b2Distance))
                                                   {
                                                      if(!_loc29_)
                                                      {
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() > Number.MIN_VALUE);
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               addr717:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     if(_loc28_)
                                                                     {
                                                                        §§goto(addr728);
                                                                     }
                                                                     param1.§%!P§ = b2Math.§4_§(param1.§'[§,param1.§^K§).§!Y§();
                                                                     param1.§!!P§ = _loc19_;
                                                                     addr825:
                                                                     if(_loc28_)
                                                                     {
                                                                        _loc8_.§-W§(param2);
                                                                        addr820:
                                                                        if(param3.§[!+§)
                                                                        {
                                                                           if(_loc28_)
                                                                           {
                                                                              if(!(_loc29_ && param1))
                                                                              {
                                                                                 addr814:
                                                                                 _loc23_ = _loc4_.§@s§;
                                                                                 addr796:
                                                                                 _loc24_ = _loc5_.§@s§;
                                                                                 §§goto(addr761);
                                                                                 addr815:
                                                                                 addr813:
                                                                                 addr795:
                                                                              }
                                                                              §§goto(addr820);
                                                                           }
                                                                           §§goto(addr815);
                                                                        }
                                                                        §§goto(addr1124);
                                                                     }
                                                                     addr838:
                                                                     §§goto(addr838);
                                                                     addr845:
                                                                  }
                                                                  §§goto(addr728);
                                                               }
                                                               §§push(_loc18_ = new b2Vec2());
                                                               §§push(0.5);
                                                               if(!(_loc29_ && param2))
                                                               {
                                                                  §§push(param1.§'[§.x);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(§§pop() + param1.§^K§.x);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§pop().x = §§pop();
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(_loc18_);
                                                                  §§push(0.5);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(param1.§'[§.y);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop() + param1.§^K§.y);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§pop().y = §§pop();
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(param1.§'[§);
                                                                     if(_loc28_ || param3)
                                                                     {
                                                                        §§push(param1.§^K§);
                                                                        if(_loc28_ || param1)
                                                                        {
                                                                           §§push(_loc18_.x);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 _loc26_ = §§pop();
                                                                                 if(!(_loc29_ && b2Distance))
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    if(!(_loc29_ && param1))
                                                                                    {
                                                                                       §§push(_loc26_);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          if(!(_loc29_ && param1))
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr1105:
                                                                                                param1.§^K§.y = _loc26_ = _loc18_.y;
                                                                                                addr1118:
                                                                                                param1.§'[§.y = _loc26_;
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   param1.§%!P§ = 0;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1124);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1118);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1105);
                                                                  }
                                                               }
                                                               §§goto(addr1105);
                                                            }
                                                            §§goto(addr779);
                                                         }
                                                         §§goto(addr813);
                                                      }
                                                      §§goto(addr814);
                                                   }
                                                   §§goto(addr795);
                                                }
                                                §§goto(addr796);
                                             }
                                             §§goto(addr761);
                                          }
                                          §§goto(addr825);
                                       }
                                       §§goto(addr814);
                                    }
                                    §§goto(addr820);
                                 }
                                 §§goto(addr717);
                              }
                              §§goto(addr779);
                           }
                           (_loc25_ = b2Math.§4_§(param1.§^K§,param1.§'[§)).Normalize();
                           if(!_loc29_)
                           {
                              addr991:
                              addr978:
                              addr976:
                              §§push(param1.§'[§);
                              §§push(param1.§'[§.x);
                              if(_loc28_ || param1)
                              {
                                 addr987:
                                 §§push(§§pop() + _loc23_ * _loc25_.x);
                              }
                              §§pop().x = §§pop();
                              addr992:
                              §§push(param1.§'[§);
                              if(!_loc29_)
                              {
                                 §§push(param1.§'[§);
                                 if(_loc28_)
                                 {
                                    §§push(§§pop().y);
                                    if(!_loc29_)
                                    {
                                       if(_loc28_)
                                       {
                                          §§push(_loc23_);
                                          if(_loc28_)
                                          {
                                             §§push(_loc25_.y);
                                             if(_loc28_ || b2Distance)
                                             {
                                                addr967:
                                                §§push(§§pop() * §§pop());
                                                if(_loc28_)
                                                {
                                                   if(_loc28_)
                                                   {
                                                      addr972:
                                                      §§pop().y = §§pop() + §§pop();
                                                      addr938:
                                                      param1.§^K§.x -= _loc24_ * _loc25_.x;
                                                      addr927:
                                                      addr973:
                                                      addr939:
                                                      addr934:
                                                      addr937:
                                                      addr936:
                                                      addr933:
                                                      addr932:
                                                      §§push(param1.§^K§);
                                                      if(_loc28_ || param2)
                                                      {
                                                         §§push(param1.§^K§);
                                                         if(!_loc29_)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc28_ || param1)
                                                            {
                                                               if(_loc28_ || param2)
                                                               {
                                                                  §§push(_loc24_);
                                                                  if(!(_loc29_ && param1))
                                                                  {
                                                                     §§push(_loc25_.y);
                                                                     if(!_loc29_)
                                                                     {
                                                                        addr901:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc29_ && param1))
                                                                        {
                                                                           if(_loc28_)
                                                                           {
                                                                              addr911:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc28_ || b2Distance)
                                                                                 {
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr927);
                                                                                          }
                                                                                          addr1124:
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr992);
                                                                                    }
                                                                                    §§goto(addr973);
                                                                                 }
                                                                                 §§goto(addr939);
                                                                              }
                                                                              §§goto(addr938);
                                                                           }
                                                                           §§goto(addr934);
                                                                        }
                                                                        §§goto(addr937);
                                                                     }
                                                                     §§goto(addr936);
                                                                  }
                                                                  §§goto(addr901);
                                                               }
                                                               §§goto(addr933);
                                                            }
                                                            §§goto(addr911);
                                                         }
                                                         §§goto(addr932);
                                                      }
                                                      addr930:
                                                      §§goto(addr930);
                                                   }
                                                }
                                             }
                                             §§goto(addr987);
                                          }
                                          §§goto(addr967);
                                       }
                                       §§goto(addr991);
                                    }
                                    §§goto(addr972);
                                 }
                                 §§goto(addr978);
                              }
                              §§goto(addr976);
                           }
                           §§goto(addr972);
                        }
                        §§goto(addr814);
                     }
                     §§goto(addr782);
                  }
                  else
                  {
                     §§push(_loc8_.§#!A§);
                     if(!(_loc28_ || param3))
                     {
                        continue loop1;
                     }
                     §§push(int(§§pop()));
                     if(!_loc29_)
                     {
                        _loc13_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           if(_loc28_ || b2Distance)
                           {
                              _loc17_ = §§pop();
                              if(_loc28_ || b2Distance)
                              {
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(!(_loc28_ || b2Distance))
                                    {
                                       continue loop1;
                                    }
                                    §§push(_loc13_);
                                    if(_loc29_ && param3)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                       if(!_loc28_)
                                       {
                                          break;
                                       }
                                       _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                       do
                                       {
                                          _loc17_++;
                                          if(!_loc29_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr728);
                                       }
                                       while(_loc29_ && param2);
                                       
                                       continue;
                                    }
                                    if(!_loc29_)
                                    {
                                       §§push(_loc8_.§#!A§);
                                       if(!(_loc28_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          _loc26_ = §§pop();
                                          if(_loc28_)
                                          {
                                             §§push(1);
                                             if(_loc28_)
                                             {
                                                §§push(_loc26_);
                                                if(_loc28_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc29_)
                                                      {
                                                         addr285:
                                                         §§push(0);
                                                         if(_loc29_)
                                                         {
                                                            addr311:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr317:
                                                         §§push(2);
                                                         if(_loc28_)
                                                         {
                                                            addr320:
                                                         }
                                                      }
                                                      addr325:
                                                      if(_loc29_)
                                                      {
                                                         addr331:
                                                         break;
                                                      }
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            break;
                                                         case 1:
                                                            _loc8_.Solve2();
                                                            if(_loc28_)
                                                            {
                                                               addr146:
                                                               break;
                                                            }
                                                            §§goto(addr845);
                                                         case 2:
                                                            _loc8_.Solve3();
                                                            if(_loc29_ && param1)
                                                            {
                                                               §§goto(addr814);
                                                            }
                                                            continue loop3;
                                                         default:
                                                            b2Settings.b2Assert(false);
                                                            if(!(_loc29_ && b2Distance))
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                      }
                                                      §§push(_loc8_.§#!A§);
                                                      if(_loc28_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§push(2);
                                                   if(!_loc29_)
                                                   {
                                                      §§push(_loc26_);
                                                      if(_loc28_ || param2)
                                                      {
                                                         addr300:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc28_)
                                                            {
                                                               §§push(1);
                                                               if(_loc28_ || param3)
                                                               {
                                                                  §§goto(addr311);
                                                               }
                                                               else
                                                               {
                                                                  addr315:
                                                                  if(§§pop() !== _loc26_)
                                                                  {
                                                                     §§goto(addr325);
                                                                     §§push(3);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                            }
                                                            §§goto(addr317);
                                                         }
                                                         else
                                                         {
                                                            §§push(3);
                                                            if(!_loc29_)
                                                            {
                                                               §§goto(addr315);
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr285);
                                       }
                                       §§push(3);
                                       if(!_loc28_)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc29_ && param1))
                                          {
                                             break loop2;
                                          }
                                          §§goto(addr814);
                                       }
                                       else
                                       {
                                          §§push((_loc18_ = _loc8_.§"O§()).§27§());
                                          if(!_loc29_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc28_)
                                             {
                                                addr358:
                                                §§push(§§pop());
                                                if(!(_loc29_ && b2Distance))
                                                {
                                                   _loc16_ = §§pop();
                                                   addr387:
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      §§push(_loc15_);
                                                   }
                                                   _loc15_ = §§pop();
                                                   if((_loc20_ = _loc8_.§!!M§()).§27§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                   {
                                                      break loop2;
                                                   }
                                                   (_loc21_ = _loc9_[_loc8_.§#!A§]).indexA = _loc4_.§[[§(b2Math.§6Y§(_loc6_.R,_loc20_.§0R§()));
                                                   if(_loc28_ || b2Distance)
                                                   {
                                                      _loc21_.§[`§ = b2Math.§@E§(_loc6_,_loc4_.§-&§(_loc21_.indexA));
                                                      if(!_loc29_)
                                                      {
                                                         _loc21_.indexB = _loc5_.§[[§(b2Math.§6Y§(_loc7_.R,_loc20_));
                                                         if(!_loc29_)
                                                         {
                                                            _loc21_.§<!#§ = b2Math.§@E§(_loc7_,_loc5_.§-&§(_loc21_.indexB));
                                                            if(_loc28_ || b2Distance)
                                                            {
                                                               addr436:
                                                               _loc21_.§?!Z§ = b2Math.§4_§(_loc21_.§<!#§,_loc21_.§[`§);
                                                               if(_loc28_)
                                                               {
                                                                  _loc19_++;
                                                                  if(_loc28_ || param3)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr436);
                                                                     }
                                                                     §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     _loc27_ = §§pop();
                                                                     if(!(_loc29_ && param1))
                                                                     {
                                                                        _loc26_.b2_gjkIters = _loc27_;
                                                                     }
                                                                     if(!_loc29_)
                                                                     {
                                                                        addr616:
                                                                        _loc22_ = false;
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc28_)
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              addr630:
                                                                              if(!(_loc29_ && b2Distance))
                                                                              {
                                                                                 addr620:
                                                                                 §§push(_loc17_);
                                                                                 addr614:
                                                                              }
                                                                              if(_loc22_)
                                                                              {
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr634:
                                                                                    break loop2;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push((_loc26_ = _loc8_).§#!A§);
                                                                                 if(!(_loc29_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                                 _loc27_ = §§pop();
                                                                                 if(!(_loc29_ && param3))
                                                                                 {
                                                                                    _loc26_.§#!A§ = _loc27_;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr621:
                                                                           if(§§pop() < _loc13_)
                                                                           {
                                                                              §§push(_loc21_.indexA);
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 §§push(§§pop() == _loc11_[_loc17_]);
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr598:
                                                                                          §§pop();
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             addr522:
                                                                                             §§push(_loc21_.indexB);
                                                                                             if(_loc28_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      addr545:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         _loc17_++;
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr522);
                                                                                                            }
                                                                                                            §§goto(addr620);
                                                                                                         }
                                                                                                         §§goto(addr630);
                                                                                                      }
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            _loc22_ = §§pop();
                                                                                                            if(!(_loc29_ && param1))
                                                                                                            {
                                                                                                               §§goto(addr630);
                                                                                                            }
                                                                                                            §§goto(addr634);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr630);
                                                                                                   }
                                                                                                   §§goto(addr598);
                                                                                                }
                                                                                                §§goto(addr630);
                                                                                             }
                                                                                             §§goto(addr621);
                                                                                             addr601:
                                                                                          }
                                                                                          §§goto(addr630);
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                    §§goto(addr616);
                                                                                 }
                                                                                 §§goto(addr630);
                                                                              }
                                                                              §§goto(addr621);
                                                                           }
                                                                           addr619:
                                                                           if(!(_loc29_ && b2Distance))
                                                                           {
                                                                              §§goto(addr630);
                                                                           }
                                                                           §§goto(addr634);
                                                                           addr619:
                                                                        }
                                                                        §§goto(addr630);
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  §§goto(addr614);
                                                               }
                                                            }
                                                            §§goto(addr619);
                                                            addr478:
                                                         }
                                                         §§goto(addr601);
                                                      }
                                                      §§goto(addr630);
                                                   }
                                                   §§goto(addr478);
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      addr383:
                                                      §§push(_loc16_);
                                                      if(_loc28_)
                                                      {
                                                         §§goto(addr387);
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr387);
                                                }
                                                §§goto(addr383);
                                             }
                                             §§goto(addr387);
                                          }
                                          §§goto(addr358);
                                       }
                                    }
                                    §§goto(addr825);
                                 }
                                 §§goto(addr820);
                              }
                              §§goto(addr728);
                           }
                        }
                     }
                     §§goto(addr273);
                  }
               }
               b2_gjkMaxIters = b2Math.§>e§(b2_gjkMaxIters,_loc19_);
               if(_loc28_)
               {
                  _loc8_.§&T§(param1.§'[§,param1.§^K§);
               }
               §§goto(addr825);
            }
         }
      }
   }
}
