package §55§
{
   import §#]§.*;
   import §4!!§.*;
   import §<!`§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §+G§:b2Simplex;
      
      private static var §3!6§:Vector.<int>;
      
      private static var §[s§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+G§ = new b2Simplex();
         }
         do
         {
            §3!6§ = new Vector.<int>(3);
            do
            {
               §[s§ = new Vector.<int>(3);
            }
            while(_loc1_ && b2Distance);
            
         }
         while(_loc1_);
         
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §;!h§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(_loc29_ || param3)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!(_loc28_ && param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc29_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§7!p§;
         var _loc5_:b2DistanceProxy = param3.§["@§;
         var _loc6_:b2Transform = param3.§'!3§;
         var _loc7_:b2Transform = param3.§@!4§;
         var _loc8_:b2Simplex;
         (_loc8_ = §+G§).§7!1§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§@"2§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §3!6§;
         var _loc12_:Vector.<int> = §[s§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§?!]§()).§`p§());
         if(_loc29_ || b2Distance)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc29_ || param3)
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
                     if(!(_loc28_ && param2))
                     {
                        addr696:
                        b2_gjkMaxIters = b2Math.§2Y§(b2_gjkMaxIters,_loc19_);
                        if(_loc29_)
                        {
                           _loc8_.§6?§(param1.§,!Z§,param1.§2&§);
                           param1.§0!e§ = b2Math.§0!1§(param1.§,!Z§,param1.§2&§).§ !O§();
                           addr852:
                           if(!_loc28_)
                           {
                              param1.§-H§ = _loc19_;
                              addr854:
                              break;
                              addr854:
                           }
                           addr861:
                           §§goto(addr861);
                        }
                        §§goto(addr854);
                     }
                     addr731:
                     §§push(param1);
                     §§push(param1.§0!e§);
                     if(_loc29_ || param2)
                     {
                        §§push(_loc23_);
                        if(!(_loc28_ && b2Distance))
                        {
                           §§push(§§pop() + _loc24_);
                        }
                        §§push(§§pop() - §§pop());
                     }
                     §§pop().§0!e§ = §§pop();
                     if(!_loc28_)
                     {
                        if(!_loc28_)
                        {
                           if(!_loc28_)
                           {
                              if(false)
                              {
                                 addr761:
                                 §§push(param1.§0!e§);
                                 if(!(_loc28_ && b2Distance))
                                 {
                                    if(!(_loc28_ && param2))
                                    {
                                       if(_loc29_)
                                       {
                                          if(!(_loc28_ && b2Distance))
                                          {
                                             §§push(_loc23_);
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop() + _loc24_);
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(!_loc28_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr797);
                                                }
                                                §§goto(addr720);
                                             }
                                             addr797:
                                             if(!(_loc28_ && param1))
                                             {
                                                §§pop();
                                                addr805:
                                                if(_loc29_ || param3)
                                                {
                                                   addr812:
                                                   §§push(param1.§0!e§);
                                                   if(!(_loc28_ && param3))
                                                   {
                                                      §§push(§§pop() > Number.MIN_VALUE);
                                                      if(!_loc28_)
                                                      {
                                                         addr720:
                                                         if(§§pop())
                                                         {
                                                            if(_loc29_)
                                                            {
                                                               if(_loc29_ || param2)
                                                               {
                                                                  §§goto(addr731);
                                                               }
                                                               addr818:
                                                               §§goto(addr761);
                                                            }
                                                            §§goto(addr731);
                                                         }
                                                         §§push(_loc18_ = new b2Vec2());
                                                         §§push(0.5);
                                                         if(_loc29_ || param1)
                                                         {
                                                            §§push(param1.§,!Z§.x);
                                                            if(!_loc28_)
                                                            {
                                                               §§push(§§pop() + param1.§2&§.x);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc29_)
                                                         {
                                                            §§push(_loc18_);
                                                            §§push(0.5);
                                                            if(_loc29_ || b2Distance)
                                                            {
                                                               §§push(param1.§,!Z§.y);
                                                               if(_loc29_)
                                                               {
                                                                  §§push(§§pop() + param1.§2&§.y);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§pop().y = §§pop();
                                                            if(_loc29_)
                                                            {
                                                               addr1068:
                                                               §§push(param1.§,!Z§);
                                                               if(_loc29_)
                                                               {
                                                                  §§push(param1.§2&§);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(_loc18_.x);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc29_)
                                                                        {
                                                                           _loc26_ = §§pop();
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 §§push(_loc26_);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    if(!(_loc28_ && param1))
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       if(_loc29_ || param1)
                                                                                       {
                                                                                          addr1136:
                                                                                          param1.§2&§.y = _loc26_ = _loc18_.y;
                                                                                          addr1139:
                                                                                          param1.§,!Z§.y = _loc26_;
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             addr1142:
                                                                                             param1.§0!e§ = 0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1145);
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
                                                            §§goto(addr1142);
                                                         }
                                                         §§goto(addr1068);
                                                      }
                                                      §§goto(addr797);
                                                   }
                                                   §§goto(addr761);
                                                   addr812:
                                                }
                                                addr817:
                                                _loc24_ = _loc5_.§%I§;
                                                addr831:
                                                §§goto(addr818);
                                                addr831:
                                             }
                                             addr822:
                                             if(§§pop())
                                             {
                                                if(!_loc28_)
                                                {
                                                   if(!_loc28_)
                                                   {
                                                      addr830:
                                                      _loc23_ = _loc4_.§%I§;
                                                      addr829:
                                                      §§goto(addr831);
                                                   }
                                                   §§goto(addr822);
                                                   §§push(param3.§1k§);
                                                   addr836:
                                                }
                                                §§goto(addr831);
                                             }
                                             §§goto(addr1145);
                                          }
                                          §§goto(addr829);
                                       }
                                       §§goto(addr830);
                                    }
                                    §§goto(addr831);
                                 }
                                 §§goto(addr817);
                              }
                              (_loc25_ = b2Math.§0!1§(param1.§2&§,param1.§,!Z§)).Normalize();
                              if(!(_loc28_ && param2))
                              {
                                 addr1017:
                                 param1.§,!Z§.x += _loc23_ * _loc25_.x;
                              }
                              addr1018:
                              §§push(param1.§,!Z§);
                              if(_loc29_)
                              {
                                 §§push(param1.§,!Z§);
                                 if(_loc29_ || param1)
                                 {
                                    §§push(§§pop().y);
                                    if(_loc29_)
                                    {
                                       if(!(_loc28_ && param3))
                                       {
                                          §§push(_loc23_);
                                          if(!(_loc28_ && param2))
                                          {
                                             if(!_loc28_)
                                             {
                                                if(_loc29_)
                                                {
                                                   §§push(_loc25_.y);
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      addr1002:
                                                      §§push(§§pop() + §§pop() * §§pop());
                                                      if(_loc29_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         addr952:
                                                         param1.§2&§.x -= _loc24_ * _loc25_.x;
                                                         addr941:
                                                         addr1006:
                                                         addr948:
                                                         addr950:
                                                         addr951:
                                                         addr947:
                                                         addr946:
                                                         addr944:
                                                         if(_loc29_)
                                                         {
                                                            §§push(param1.§2&§);
                                                            if(!_loc28_)
                                                            {
                                                               §§push(param1.§2&§);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc28_ && param3))
                                                                  {
                                                                     if(_loc29_)
                                                                     {
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           §§push(_loc24_);
                                                                           if(!_loc28_)
                                                                           {
                                                                              if(!(_loc28_ && param3))
                                                                              {
                                                                                 §§push(_loc25_.y);
                                                                                 if(_loc29_ || param1)
                                                                                 {
                                                                                    addr926:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc29_ || b2Distance)
                                                                                    {
                                                                                       addr934:
                                                                                       §§pop().y = §§pop() - §§pop();
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr941);
                                                                                             }
                                                                                             addr1145:
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr1006);
                                                                                       }
                                                                                       §§goto(addr941);
                                                                                    }
                                                                                    §§goto(addr948);
                                                                                 }
                                                                                 §§goto(addr950);
                                                                              }
                                                                              §§goto(addr951);
                                                                           }
                                                                           §§goto(addr926);
                                                                        }
                                                                        §§goto(addr947);
                                                                     }
                                                                     §§goto(addr952);
                                                                  }
                                                                  §§goto(addr934);
                                                               }
                                                               §§goto(addr946);
                                                            }
                                                            §§goto(addr944);
                                                         }
                                                         §§goto(addr1018);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1017);
                                          }
                                          §§goto(addr1002);
                                       }
                                       §§goto(addr1017);
                                    }
                                    §§goto(addr1002);
                                 }
                              }
                              §§goto(addr1017);
                           }
                           §§goto(addr852);
                        }
                        break;
                     }
                     §§goto(addr805);
                  }
                  else
                  {
                     §§push(_loc8_.§,v§);
                     if(_loc29_)
                     {
                        §§push(int(§§pop()));
                        if(_loc28_ && param2)
                        {
                           continue loop1;
                        }
                        _loc13_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           if(_loc29_ || param1)
                           {
                              _loc17_ = §§pop();
                              if(_loc29_ || b2Distance)
                              {
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(_loc28_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(_loc13_);
                                    if(!(_loc29_ || b2Distance))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc28_ && param1))
                                       {
                                          §§push(_loc8_.§,v§);
                                          if(!(_loc28_ && param2))
                                          {
                                             break loop3;
                                          }
                                          addr339:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                break;
                                             case 1:
                                                _loc8_.Solve2();
                                                addr149:
                                                break;
                                                addr188:
                                             case 2:
                                                _loc8_.Solve3();
                                                if(!(_loc28_ && param3))
                                                {
                                                   break;
                                                }
                                                §§goto(addr812);
                                             default:
                                                b2Settings.b2Assert(false);
                                                if(_loc29_ || b2Distance)
                                                {
                                                   if(_loc29_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr149);
                                                }
                                          }
                                       }
                                       §§push(_loc8_.§,v§);
                                       if(_loc28_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(3);
                                       if(_loc28_ && param3)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc28_)
                                          {
                                             break;
                                          }
                                          §§goto(addr805);
                                       }
                                       else
                                       {
                                          §§push((_loc18_ = _loc8_.§?!]§()).§`p§());
                                          if(_loc29_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc28_)
                                                {
                                                   _loc16_ = §§pop();
                                                   addr407:
                                                   addr408:
                                                   if(_loc29_ || param1)
                                                   {
                                                      addr390:
                                                      §§push(_loc15_);
                                                   }
                                                   _loc15_ = Number(§§pop());
                                                   if((_loc20_ = _loc8_.§[P§()).§`p§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                   {
                                                      §§goto(addr696);
                                                   }
                                                   else
                                                   {
                                                      (_loc21_ = _loc9_[_loc8_.§,v§]).indexA = _loc4_.§8!@§(b2Math.§%o§(_loc6_.R,_loc20_.§2!R§()));
                                                      if(_loc28_ && param3)
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc21_.§?"&§ = b2Math.§2C§(_loc6_,_loc4_.§0!C§(_loc21_.indexA));
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         _loc21_.indexB = _loc5_.§8!@§(b2Math.§%o§(_loc7_.R,_loc20_));
                                                         if(_loc29_ || param2)
                                                         {
                                                            _loc21_.§^!3§ = b2Math.§2C§(_loc7_,_loc5_.§0!C§(_loc21_.indexB));
                                                            if(!_loc28_)
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  _loc21_.§=!h§ = b2Math.§0!1§(_loc21_.§^!3§,_loc21_.§?"&§);
                                                                  if(!_loc28_)
                                                                  {
                                                                     _loc19_++;
                                                                     if(!_loc28_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                        if(_loc29_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        _loc27_ = §§pop();
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           _loc26_.b2_gjkIters = _loc27_;
                                                                        }
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           §§push(false);
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              _loc22_ = §§pop();
                                                                              addr650:
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    addr647:
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       addr651:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= _loc13_)
                                                                                             {
                                                                                                if(!(_loc28_ && b2Distance))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc21_.indexA);
                                                                                                if(!(_loc29_ || param3))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                if(!(_loc28_ && b2Distance))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc28_ && param1))
                                                                                                      {
                                                                                                         addr633:
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         if(!(_loc29_ || param1))
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc21_.indexB);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(_loc28_ && param1)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(_loc28_ && param2)
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        §§push(true);
                                                                                                                        if(_loc29_ || param2)
                                                                                                                        {
                                                                                                                           _loc22_ = §§pop();
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§push((_loc26_ = _loc8_).§,v§);
                                                                                                                           if(_loc29_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                           }
                                                                                                                           _loc27_ = §§pop();
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              _loc26_.§,v§ = _loc27_;
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        §§goto(addr696);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  _loc17_++;
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        break loop5;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               break loop11;
                                                                                                               addr578:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr662);
                                                                                                   }
                                                                                                   §§goto(addr578);
                                                                                                }
                                                                                                §§goto(addr633);
                                                                                             }
                                                                                             §§goto(addr665);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr662);
                                                                        §§push(_loc22_);
                                                                     }
                                                                     §§goto(addr591);
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr550);
                                                                  }
                                                                  §§goto(addr651);
                                                               }
                                                            }
                                                            §§goto(addr647);
                                                         }
                                                         §§goto(addr591);
                                                      }
                                                      §§goto(addr650);
                                                   }
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc29_ || param1)
                                                   {
                                                      addr399:
                                                      §§push(_loc16_);
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr407);
                                                }
                                                §§goto(addr399);
                                             }
                                             §§goto(addr407);
                                          }
                                          §§goto(addr390);
                                       }
                                    }
                                    else
                                    {
                                       _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                       if(!_loc29_)
                                       {
                                          break;
                                       }
                                       _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                       if(!(_loc28_ && param2))
                                       {
                                          if(!_loc29_)
                                          {
                                             continue loop3;
                                          }
                                          _loc17_++;
                                          if(_loc29_ || param3)
                                          {
                                             continue;
                                          }
                                          §§goto(addr805);
                                       }
                                    }
                                    §§goto(addr818);
                                 }
                                 §§goto(addr696);
                              }
                              §§goto(addr812);
                           }
                           break;
                        }
                        _loc26_ = §§pop();
                        if(!(_loc28_ && param1))
                        {
                           §§push(1);
                           if(_loc29_)
                           {
                              §§push(_loc26_);
                              if(!_loc28_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc29_ || b2Distance)
                                    {
                                       addr296:
                                       §§push(0);
                                       if(_loc28_)
                                       {
                                          addr308:
                                          §§push(_loc26_);
                                          if(!(_loc28_ && param1))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc28_)
                                                {
                                                   addr319:
                                                   §§push(1);
                                                   if(_loc29_)
                                                   {
                                                      addr336:
                                                      if(!_loc29_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§goto(addr339);
                                                      addr322:
                                                   }
                                                   else
                                                   {
                                                      addr326:
                                                      if(§§pop() !== _loc26_)
                                                      {
                                                         §§goto(addr336);
                                                         §§push(3);
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                §§push(2);
                                                if(_loc28_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push(3);
                                                if(_loc29_)
                                                {
                                                   §§goto(addr326);
                                                }
                                             }
                                          }
                                          §§goto(addr326);
                                       }
                                       §§goto(addr336);
                                    }
                                    §§goto(addr319);
                                 }
                                 else
                                 {
                                    §§push(2);
                                    if(!(_loc28_ && param2))
                                    {
                                       §§goto(addr308);
                                    }
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr308);
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr339);
                  }
               }
               _loc8_.§<!N§(param2);
               §§goto(addr836);
            }
         }
      }
   }
}
