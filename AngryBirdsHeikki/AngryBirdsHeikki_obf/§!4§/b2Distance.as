package §!4§
{
   import §6A§.*;
   import §7q§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §7!D§:b2Simplex;
      
      private static var §-'§:Vector.<int>;
      
      private static var §%s§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!D§ = new b2Simplex();
            while(true)
            {
               §-'§ = new Vector.<int>(3);
               while(_loc1_)
               {
                  §%s§ = new Vector.<int>(3);
                  if(_loc1_ || _loc1_)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §<t§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc28_ || param1)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(_loc28_ || param2)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc28_ || param2)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§package§;
         var _loc5_:b2DistanceProxy = param3.§@!?§;
         var _loc6_:b2Transform = param3.§@C§;
         var _loc7_:b2Transform = param3.§4m§;
         var _loc8_:b2Simplex;
         (_loc8_ = §7!D§).§1t§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§+!f§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §-'§;
         var _loc12_:Vector.<int> = §%s§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§ !M§()).§,H§());
         if(_loc28_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc28_)
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
                     if(_loc28_)
                     {
                        addr690:
                        b2_gjkMaxIters = b2Math.§9![§(b2_gjkMaxIters,_loc19_);
                        if(!(_loc29_ && param2))
                        {
                           _loc8_.§>U§(param1.§?!b§,param1.§-!-§);
                           param1.§,v§ = b2Math.§8!Y§(param1.§?!b§,param1.§-!-§).§--§();
                           addr855:
                           addr703:
                        }
                        param1.§&!?§ = _loc19_;
                        addr835:
                        if(!_loc29_)
                        {
                           _loc8_.§+M§(param2);
                           addr811:
                           addr830:
                           if(param3.§-!=§)
                           {
                              addr812:
                              if(!(_loc29_ && param2))
                              {
                                 addr824:
                                 addr819:
                                 §§push(_loc4_.§'m§);
                                 if(!_loc29_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc23_ = §§pop();
                                 addr791:
                                 addr825:
                                 §§push(Number(_loc5_.§'m§));
                                 if(_loc28_ || param3)
                                 {
                                    _loc24_ = §§pop();
                                    addr800:
                                    if(_loc28_ || param2)
                                    {
                                       addr748:
                                       §§push(param1.§,v§);
                                       if(!_loc29_)
                                       {
                                          addr764:
                                          §§push(_loc23_);
                                          if(!(_loc29_ && param3))
                                          {
                                             §§push(§§pop() + _loc24_);
                                          }
                                          §§push(§§pop() > §§pop());
                                          if(!_loc29_)
                                          {
                                             if(§§pop())
                                             {
                                                addr768:
                                                §§pop();
                                                addr769:
                                                if(_loc28_)
                                                {
                                                   if(_loc28_ || param3)
                                                   {
                                                      if(!(_loc29_ && b2Distance))
                                                      {
                                                         if(!_loc29_)
                                                         {
                                                            §§push(param1.§,v§);
                                                            if(_loc28_)
                                                            {
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(§§pop() > Number.MIN_VALUE);
                                                                  if(_loc28_)
                                                                  {
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        addr723:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 §§push(param1.§,v§);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    §§push(_loc23_);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc24_);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§pop().§,v§ = §§pop();
                                                                                 addr746:
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr748);
                                                                                 }
                                                                                 (_loc25_ = b2Math.§8!Y§(param1.§-!-§,param1.§?!b§)).Normalize();
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    addr1006:
                                                                                    param1.§?!b§.x += _loc23_ * _loc25_.x;
                                                                                    addr1007:
                                                                                    addr1001:
                                                                                    addr1002:
                                                                                    addr1005:
                                                                                    addr1004:
                                                                                    addr1000:
                                                                                    §§push(param1.§?!b§);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(param1.§?!b§);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc28_ || param1)
                                                                                          {
                                                                                             §§push(_loc23_);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(_loc25_.y);
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   addr970:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc29_ && param2))
                                                                                                      {
                                                                                                         addr985:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            if(!(_loc29_ && param1))
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               addr931:
                                                                                                               param1.§-!-§.x -= _loc24_ * _loc25_.x;
                                                                                                               addr920:
                                                                                                               addr926:
                                                                                                               addr927:
                                                                                                               addr929:
                                                                                                               addr930:
                                                                                                               addr925:
                                                                                                               addr923:
                                                                                                               if(!(_loc29_ && param2))
                                                                                                               {
                                                                                                                  §§push(param1.§-!-§);
                                                                                                                  if(!_loc29_)
                                                                                                                  {
                                                                                                                     §§push(param1.§-!-§);
                                                                                                                     if(!(_loc29_ && b2Distance))
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           if(!(_loc29_ && param3))
                                                                                                                           {
                                                                                                                              §§push(_loc24_);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc25_.y);
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       addr903:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          addr911:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr920);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1134);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1007);
                                                                                                                                             }
                                                                                                                                             §§goto(addr920);
                                                                                                                                          }
                                                                                                                                          §§goto(addr926);
                                                                                                                                       }
                                                                                                                                       §§goto(addr927);
                                                                                                                                    }
                                                                                                                                    §§goto(addr929);
                                                                                                                                 }
                                                                                                                                 §§goto(addr930);
                                                                                                                              }
                                                                                                                              §§goto(addr903);
                                                                                                                           }
                                                                                                                           §§goto(addr931);
                                                                                                                        }
                                                                                                                        §§goto(addr911);
                                                                                                                     }
                                                                                                                     §§goto(addr925);
                                                                                                                  }
                                                                                                                  §§goto(addr923);
                                                                                                                  addr939:
                                                                                                               }
                                                                                                               addr995:
                                                                                                               §§goto(addr995);
                                                                                                            }
                                                                                                            §§goto(addr1001);
                                                                                                         }
                                                                                                         §§goto(addr1006);
                                                                                                      }
                                                                                                      §§goto(addr1002);
                                                                                                   }
                                                                                                   §§goto(addr1005);
                                                                                                }
                                                                                                §§goto(addr1004);
                                                                                             }
                                                                                             §§goto(addr970);
                                                                                          }
                                                                                          §§goto(addr985);
                                                                                       }
                                                                                       §§goto(addr1000);
                                                                                    }
                                                                                    addr998:
                                                                                    §§goto(addr998);
                                                                                 }
                                                                                 §§goto(addr939);
                                                                              }
                                                                              §§goto(addr769);
                                                                           }
                                                                           §§goto(addr746);
                                                                        }
                                                                        §§push(_loc18_ = new b2Vec2());
                                                                        §§push(0.5);
                                                                        if(_loc28_ || param3)
                                                                        {
                                                                           §§push(param1.§?!b§.x);
                                                                           if(!(_loc29_ && param1))
                                                                           {
                                                                              §§push(§§pop() + param1.§-!-§.x);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(_loc18_);
                                                                           §§push(0.5);
                                                                           if(!(_loc29_ && param3))
                                                                           {
                                                                              §§push(param1.§?!b§.y);
                                                                              if(!(_loc29_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + param1.§-!-§.y);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(param1.§?!b§);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(param1.§-!-§);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(_loc18_.x);
                                                                                    if(!(_loc29_ && param2))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          _loc26_ = §§pop();
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(_loc26_);
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§goto(addr1131);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!(_loc29_ && b2Distance))
                                                                                                   {
                                                                                                      addr1131:
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr1110:
                                                                                                         param1.§-!-§.y = _loc26_ = _loc18_.y;
                                                                                                         addr1112:
                                                                                                         §§push(param1.§?!b§);
                                                                                                         §§push(_loc26_);
                                                                                                      }
                                                                                                      param1.§,v§ = 0;
                                                                                                   }
                                                                                                   §§goto(addr1134);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1112);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1110);
                                                                           }
                                                                        }
                                                                        §§goto(addr1131);
                                                                     }
                                                                     §§goto(addr764);
                                                                  }
                                                                  §§goto(addr768);
                                                               }
                                                               §§goto(addr791);
                                                            }
                                                            §§goto(addr748);
                                                         }
                                                         §§goto(addr855);
                                                      }
                                                      §§goto(addr812);
                                                   }
                                                   §§goto(addr825);
                                                }
                                                §§goto(addr800);
                                             }
                                             §§goto(addr723);
                                          }
                                          §§goto(addr811);
                                       }
                                       §§goto(addr791);
                                    }
                                    §§goto(addr830);
                                 }
                                 §§goto(addr824);
                              }
                              §§goto(addr835);
                           }
                           addr1134:
                           return;
                           addr837:
                        }
                        addr848:
                        §§goto(addr848);
                     }
                     §§goto(addr703);
                  }
                  else
                  {
                     §§push(_loc8_.§33§);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc13_ = §§pop();
                           if(_loc28_ || param3)
                           {
                              §§push(0);
                              if(!_loc29_)
                              {
                                 if(!_loc28_)
                                 {
                                    continue loop3;
                                 }
                                 _loc17_ = §§pop();
                                 if(_loc28_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(!_loc28_)
                                       {
                                          break;
                                       }
                                       if(_loc29_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(_loc13_);
                                       if(!(_loc28_ || param3))
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc8_.§33§);
                                             if(!_loc29_)
                                             {
                                                _loc26_ = §§pop();
                                                if(!(_loc29_ && param3))
                                                {
                                                   §§push(1);
                                                   if(_loc28_ || param1)
                                                   {
                                                      §§push(_loc26_);
                                                      if(_loc28_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc28_ || param1)
                                                            {
                                                               addr270:
                                                               §§push(0);
                                                               if(_loc29_ && param1)
                                                               {
                                                                  addr296:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr307:
                                                               §§push(2);
                                                               if(_loc28_ || param2)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(2);
                                                            if(!_loc29_)
                                                            {
                                                               addr282:
                                                               §§push(_loc26_);
                                                               if(_loc28_ || param2)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc28_)
                                                                        {
                                                                           §§goto(addr296);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr307);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(3);
                                                                     if(!(_loc29_ && param1))
                                                                     {
                                                                        addr306:
                                                                        if(§§pop() === _loc26_)
                                                                        {
                                                                           §§goto(addr307);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(3);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                         }
                                                         if(!_loc29_)
                                                         {
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  break;
                                                               case 1:
                                                                  _loc8_.Solve2();
                                                                  if(!(_loc29_ && param2))
                                                                  {
                                                                     addr143:
                                                                     break;
                                                                  }
                                                                  §§goto(addr837);
                                                               case 2:
                                                                  _loc8_.Solve3();
                                                                  if(_loc29_ && param3)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc29_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop5;
                                                               default:
                                                                  b2Settings.b2Assert(false);
                                                                  if(_loc28_)
                                                                  {
                                                                     if(!_loc28_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr811);
                                                            }
                                                            addr331:
                                                            §§push(_loc8_.§33§);
                                                            if(_loc28_ || param3)
                                                            {
                                                               break;
                                                            }
                                                            break loop5;
                                                         }
                                                         break loop5;
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr270);
                                             }
                                             break;
                                          }
                                          addr340:
                                          §§push(3);
                                          if(!(_loc28_ || param3))
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc29_ && b2Distance))
                                             {
                                                §§goto(addr690);
                                             }
                                             §§goto(addr855);
                                          }
                                          else
                                          {
                                             §§push((_loc18_ = _loc8_.§ !M§()).§,H§());
                                             if(_loc28_ || param1)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc29_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      _loc16_ = §§pop();
                                                      if(!(_loc29_ && param1))
                                                      {
                                                         addr390:
                                                         if(§§pop() > _loc15_)
                                                         {
                                                            if(!(_loc29_ && b2Distance))
                                                            {
                                                               addr398:
                                                               §§push(_loc16_);
                                                               if(_loc28_)
                                                               {
                                                                  addr401:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc15_ = §§pop();
                                                            }
                                                            if((_loc20_ = _loc8_.§^?§()).§,H§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                            {
                                                               §§goto(addr690);
                                                            }
                                                            else
                                                            {
                                                               (_loc21_ = _loc9_[_loc8_.§33§]).indexA = _loc4_.§-!1§(b2Math.§`q§(_loc6_.R,_loc20_.§^!b§()));
                                                               if(!_loc29_)
                                                               {
                                                                  _loc21_.§2!=§ = b2Math.§,p§(_loc6_,_loc4_.§"!Q§(_loc21_.indexA));
                                                                  _loc21_.indexB = _loc5_.§-!1§(b2Math.§`q§(_loc7_.R,_loc20_));
                                                                  addr515:
                                                                  if(!(_loc29_ && b2Distance))
                                                                  {
                                                                     _loc21_.§8!Z§ = b2Math.§,p§(_loc7_,_loc5_.§"!Q§(_loc21_.indexB));
                                                                     if(_loc28_ || param1)
                                                                     {
                                                                        addr453:
                                                                        _loc21_.§79§ = b2Math.§8!Y§(_loc21_.§8!Z§,_loc21_.§2!=§);
                                                                        if(!(_loc28_ || b2Distance))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        _loc19_++;
                                                                        if(_loc28_ || param3)
                                                                        {
                                                                           if(!(_loc29_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr453);
                                                                              }
                                                                              §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                              if(_loc28_ || param2)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              _loc27_ = §§pop();
                                                                              if(_loc28_ || b2Distance)
                                                                              {
                                                                                 _loc26_.b2_gjkIters = _loc27_;
                                                                              }
                                                                              if(!_loc28_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              addr653:
                                                                              _loc22_ = false;
                                                                              _loc17_ = 0;
                                                                              addr654:
                                                                              if(_loc28_ || param1)
                                                                              {
                                                                                 addr655:
                                                                                 if(_loc17_ < _loc13_)
                                                                                 {
                                                                                    addr628:
                                                                                    §§push(_loc21_.indexA == _loc11_[_loc17_]);
                                                                                    if(_loc21_.indexA == _loc11_[_loc17_])
                                                                                    {
                                                                                       addr630:
                                                                                       §§pop();
                                                                                       if(_loc28_ || b2Distance)
                                                                                       {
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             addr552:
                                                                                             §§push(_loc21_.indexB);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                if(!(_loc29_ && param1))
                                                                                                {
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                      if(_loc28_ || param3)
                                                                                                      {
                                                                                                         addr587:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  addr594:
                                                                                                                  if(_loc28_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc28_ || param3)
                                                                                                                     {
                                                                                                                        if(!(_loc28_ || b2Distance))
                                                                                                                        {
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                        _loc22_ = §§pop();
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           addr666:
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              §§push((_loc26_ = _loc8_).§33§);
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                              }
                                                                                                                              _loc27_ = §§pop();
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 _loc26_.§33§ = _loc27_;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           addr669:
                                                                                                                           §§goto(addr690);
                                                                                                                           addr618:
                                                                                                                        }
                                                                                                                        §§goto(addr669);
                                                                                                                     }
                                                                                                                     §§goto(addr628);
                                                                                                                  }
                                                                                                                  §§goto(addr630);
                                                                                                               }
                                                                                                               §§goto(addr666);
                                                                                                            }
                                                                                                            §§goto(addr618);
                                                                                                         }
                                                                                                         _loc17_++;
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr552);
                                                                                                            }
                                                                                                            §§goto(addr655);
                                                                                                         }
                                                                                                         §§goto(addr666);
                                                                                                      }
                                                                                                      §§goto(addr594);
                                                                                                   }
                                                                                                   §§goto(addr653);
                                                                                                }
                                                                                                §§goto(addr628);
                                                                                             }
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                          §§goto(addr654);
                                                                                       }
                                                                                       §§goto(addr669);
                                                                                    }
                                                                                    §§goto(addr587);
                                                                                 }
                                                                                 if(_loc29_ && param1)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr666);
                                                                                 addr651:
                                                                              }
                                                                              §§goto(addr669);
                                                                              addr543:
                                                                           }
                                                                           §§goto(addr515);
                                                                        }
                                                                        §§goto(addr666);
                                                                     }
                                                                     §§goto(addr669);
                                                                  }
                                                                  §§goto(addr651);
                                                               }
                                                               §§goto(addr543);
                                                            }
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                   §§goto(addr390);
                                                }
                                             }
                                             §§goto(addr390);
                                          }
                                       }
                                       else
                                       {
                                          _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          if(!_loc29_)
                                          {
                                             _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                             if(_loc28_)
                                             {
                                                _loc17_++;
                                                continue;
                                             }
                                             §§goto(addr824);
                                          }
                                       }
                                       §§goto(addr819);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr331);
                              }
                              §§goto(addr340);
                           }
                           break;
                        }
                     }
                  }
                  §§goto(addr746);
               }
            }
         }
      }
   }
}
