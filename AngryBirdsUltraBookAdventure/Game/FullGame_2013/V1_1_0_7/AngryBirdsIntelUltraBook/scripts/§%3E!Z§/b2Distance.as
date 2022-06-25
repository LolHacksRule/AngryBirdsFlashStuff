package §>!Z§
{
   import §&H§.*;
   import §3b§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §>!!§:b2Simplex;
      
      private static var §3g§:Vector.<int>;
      
      private static var §<!f§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>!!§ = new b2Simplex();
            do
            {
               §3g§ = new Vector.<int>(3);
               do
               {
                  §<!f§ = new Vector.<int>(3);
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §65§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         if(!_loc29_)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(_loc28_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(_loc28_ || param1)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§,N§;
         var _loc5_:b2DistanceProxy = param3.§#y§;
         var _loc6_:b2Transform = param3.§ !f§;
         var _loc7_:b2Transform = param3.§!@§;
         var _loc8_:b2Simplex;
         (_loc8_ = §>!!§).§@!i§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§0!k§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §3g§;
         var _loc12_:Vector.<int> = §<!f§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§`!'§()).§%!]§());
         if(!_loc29_)
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
                  if(§§pop() < §§pop())
                  {
                     §§push(_loc8_.§;!4§);
                     while(true)
                     {
                        §§push(int(§§pop()));
                        if(_loc28_)
                        {
                           _loc13_ = §§pop();
                           if(!_loc29_)
                           {
                              §§push(0);
                              if(!_loc29_)
                              {
                                 continue;
                              }
                              loop4:
                              while(true)
                              {
                                 loop18:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       break loop4;
                                    case 1:
                                       _loc8_.Solve2();
                                       if(_loc28_ || param2)
                                       {
                                          addr133:
                                          break loop4;
                                       }
                                       §§goto(addr835);
                                    case 2:
                                       _loc8_.Solve3();
                                       if(!(_loc29_ && b2Distance))
                                       {
                                          break loop4;
                                       }
                                       break;
                                    default:
                                       b2Settings.b2Assert(false);
                                       if(!(_loc29_ && param1))
                                       {
                                          if(!_loc29_)
                                          {
                                             if(true)
                                             {
                                                break loop4;
                                             }
                                             §§goto(addr133);
                                          }
                                          else
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                if(!(_loc29_ && param3))
                                                {
                                                   _loc17_++;
                                                   if(_loc28_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc17_);
                                                         if(!_loc29_)
                                                         {
                                                            §§push(_loc13_);
                                                            if(_loc29_ && b2Distance)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(§§pop() < §§pop())
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc29_ && param2))
                                                            {
                                                               §§push(_loc8_.§;!4§);
                                                               if(_loc28_ || b2Distance)
                                                               {
                                                                  _loc26_ = §§pop();
                                                                  if(!(_loc29_ && param1))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc28_ || param3)
                                                                     {
                                                                        §§push(_loc26_);
                                                                        if(!(_loc29_ && param1))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr308:
                                                                                 §§push(1);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr325:
                                                                                 }
                                                                              }
                                                                              addr330:
                                                                              if(_loc29_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§push(2);
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              §§push(_loc26_);
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr317:
                                                                                       §§push(2);
                                                                                       if(!(_loc29_ && param3))
                                                                                       {
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr330);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(3);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       addr316:
                                                                                       if(§§pop() === _loc26_)
                                                                                       {
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(3);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr325);
                                                                        }
                                                                     }
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr812);
                                                         }
                                                         break;
                                                      }
                                                      addr340:
                                                      §§push(3);
                                                      if(!_loc28_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!_loc29_)
                                                         {
                                                            break loop18;
                                                         }
                                                         §§goto(addr753);
                                                      }
                                                      else
                                                      {
                                                         §§push((_loc18_ = _loc8_.§`!'§()).§%!]§());
                                                         if(_loc28_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc28_ || param1)
                                                            {
                                                               addr363:
                                                               §§push(§§pop());
                                                               if(_loc28_)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  if(!_loc29_)
                                                                  {
                                                                     addr370:
                                                                     if(§§pop() > _loc15_)
                                                                     {
                                                                        if(_loc28_ || param3)
                                                                        {
                                                                           addr378:
                                                                           §§push(_loc16_);
                                                                           if(_loc28_)
                                                                           {
                                                                              addr382:
                                                                              _loc15_ = Number(§§pop());
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        if((_loc20_ = _loc8_.§;G§()).§%!]§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        (_loc21_ = _loc9_[_loc8_.§;!4§]).indexA = _loc4_.§'^§(b2Math.§0!&§(_loc6_.R,_loc20_.§=,§()));
                                                                        if(!_loc29_)
                                                                        {
                                                                           _loc21_.§<o§ = b2Math.§%!r§(_loc6_,_loc4_.§2l§(_loc21_.indexA));
                                                                           if(_loc28_)
                                                                           {
                                                                              _loc21_.indexB = _loc5_.§'^§(b2Math.§0!&§(_loc7_.R,_loc20_));
                                                                              if(!_loc29_)
                                                                              {
                                                                                 _loc21_.§4x§ = b2Math.§%!r§(_loc7_,_loc5_.§2l§(_loc21_.indexB));
                                                                                 if(!(_loc29_ && b2Distance))
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc21_.§=Q§ = b2Math.§%M§(_loc21_.§4x§,_loc21_.§<o§);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          _loc19_++;
                                                                                          if(_loc28_ || param3)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                             }
                                                                                             _loc27_ = §§pop();
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                _loc26_.b2_gjkIters = _loc27_;
                                                                                             }
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§push(false);
                                                                                             while(true)
                                                                                             {
                                                                                                _loc22_ = §§pop();
                                                                                                break loop7;
                                                                                             }
                                                                                             addr628:
                                                                                          }
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc21_.indexB);
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      loop10:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc29_ && param1))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  if(!(_loc29_ && param1))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc28_ || param1)
                                                                                                                        {
                                                                                                                           _loc22_ = §§pop();
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              addr577:
                                                                                                                              break loop10;
                                                                                                                              addr577:
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        §§goto(addr628);
                                                                                                                     }
                                                                                                                     addr641:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           break loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push((_loc26_ = _loc8_).§;!4§);
                                                                                                                        if(!(_loc29_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                        }
                                                                                                                        _loc27_ = §§pop();
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           _loc26_.§;!4§ = _loc27_;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                     addr557:
                                                                                                                  }
                                                                                                                  §§goto(addr641);
                                                                                                               }
                                                                                                               addr549:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc17_++;
                                                                                                         if(_loc29_ && param3)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         if(_loc29_ && param2)
                                                                                                         {
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc17_);
                                                                                                            addr631:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= _loc13_)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                               §§push(_loc21_.indexA);
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                               if(!(_loc29_ && param1))
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  if(!(_loc29_ && param1))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr626:
                                                                                                            continue loop8;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr641);
                                                                                                      }
                                                                                                      addr640:
                                                                                                      §§goto(addr641);
                                                                                                      §§push(_loc22_);
                                                                                                   }
                                                                                                   §§goto(addr557);
                                                                                                }
                                                                                                §§goto(addr631);
                                                                                             }
                                                                                             if(_loc29_ && param2)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             §§goto(addr640);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc28_ || param2)
                                                                                       {
                                                                                          _loc17_ = §§pop();
                                                                                          §§goto(addr626);
                                                                                       }
                                                                                       §§goto(addr631);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr577);
                                                                           }
                                                                           §§goto(addr549);
                                                                        }
                                                                        §§goto(addr577);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  §§goto(addr382);
                                                               }
                                                               §§goto(addr370);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                   }
                                                   §§goto(addr799);
                                                }
                                                break;
                                             }
                                             _loc8_.§-7§(param1.§3!O§,param1.§"!"§);
                                             §§goto(addr835);
                                             addr678:
                                          }
                                       }
                                       §§goto(addr753);
                                 }
                              }
                              §§push(_loc8_.§;!4§);
                              if(_loc29_)
                              {
                                 break;
                              }
                              §§goto(addr340);
                           }
                           break loop2;
                        }
                        break;
                     }
                     continue loop1;
                  }
                  if(!_loc29_)
                  {
                     break;
                  }
                  addr734:
                  §§push(param1);
                  §§push(param1.§>!_§);
                  if(!_loc29_)
                  {
                     §§push(_loc23_);
                     if(!(_loc29_ && param3))
                     {
                        §§push(§§pop() + _loc24_);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§>!_§ = §§pop();
                  if(!_loc29_)
                  {
                     addr753:
                     if(false)
                     {
                        addr755:
                        §§push(param1.§>!_§);
                        if(!_loc29_)
                        {
                           addr766:
                           §§push(_loc23_);
                           if(!_loc29_)
                           {
                              §§push(§§pop() + _loc24_);
                           }
                           §§push(§§pop() > §§pop());
                           if(§§pop() > §§pop())
                           {
                              addr768:
                              §§pop();
                              if(_loc28_)
                              {
                                 if(!(_loc29_ && param1))
                                 {
                                    if(_loc28_ || param2)
                                    {
                                       §§push(param1.§>!_§);
                                       if(!_loc29_)
                                       {
                                          if(_loc28_ || param1)
                                          {
                                             if(_loc28_ || param3)
                                             {
                                                if(!(_loc29_ && param3))
                                                {
                                                   §§push(§§pop() > Number.MIN_VALUE);
                                                   if(_loc28_ || param1)
                                                   {
                                                      if(!_loc29_)
                                                      {
                                                         if(!_loc29_)
                                                         {
                                                            §§goto(addr719);
                                                         }
                                                         §§goto(addr812);
                                                      }
                                                      §§goto(addr766);
                                                   }
                                                   §§goto(addr768);
                                                }
                                                §§goto(addr798);
                                             }
                                             §§goto(addr789);
                                          }
                                          §§goto(addr790);
                                       }
                                       §§goto(addr755);
                                    }
                                    param1.§>!_§ = b2Math.§%M§(param1.§3!O§,param1.§"!"§).§,!t§();
                                    addr835:
                                    §§goto(addr828);
                                    addr835:
                                 }
                                 §§goto(addr817);
                              }
                              §§goto(addr796);
                           }
                           addr719:
                           if(§§pop())
                           {
                              if(!_loc29_)
                              {
                                 if(!_loc29_)
                                 {
                                    if(!(_loc29_ && param1))
                                    {
                                       if(!_loc29_)
                                       {
                                          §§goto(addr734);
                                       }
                                       addr812:
                                       if(param3.§#!+§)
                                       {
                                          addr799:
                                          _loc23_ = _loc4_.§ !c§;
                                          addr800:
                                          if(!(_loc29_ && param1))
                                          {
                                             addr790:
                                             _loc24_ = _loc5_.§ !c§;
                                             addr791:
                                             §§goto(addr755);
                                             addr789:
                                          }
                                          param1.§0!r§ = _loc19_;
                                          _loc8_.§@'§(param2);
                                          §§goto(addr812);
                                          addr798:
                                          addr828:
                                          addr817:
                                          addr796:
                                       }
                                       §§goto(addr1149);
                                    }
                                    §§goto(addr800);
                                 }
                                 §§goto(addr791);
                              }
                              §§goto(addr734);
                           }
                           §§push(_loc18_ = new b2Vec2());
                           §§push(0.5);
                           if(!_loc29_)
                           {
                              §§push(param1.§3!O§.x);
                              if(!(_loc29_ && b2Distance))
                              {
                                 §§push(§§pop() + param1.§"!"§.x);
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
                                 §§push(param1.§3!O§.y);
                                 if(!(_loc29_ && param1))
                                 {
                                    §§push(§§pop() + param1.§"!"§.y);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().y = §§pop();
                              if(_loc28_)
                              {
                                 §§push(param1.§3!O§);
                                 if(!(_loc29_ && b2Distance))
                                 {
                                    §§push(param1.§"!"§);
                                    if(!_loc29_)
                                    {
                                       §§push(_loc18_.x);
                                       if(_loc28_ || param2)
                                       {
                                          §§push(§§pop());
                                          if(_loc28_)
                                          {
                                             _loc26_ = §§pop();
                                             if(!(_loc29_ && param3))
                                             {
                                                §§pop().x = §§pop();
                                                if(!(_loc29_ && b2Distance))
                                                {
                                                   §§push(_loc26_);
                                                   if(!_loc29_)
                                                   {
                                                      if(!_loc29_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc28_ || b2Distance)
                                                         {
                                                            addr1140:
                                                            param1.§"!"§.y = _loc26_ = _loc18_.y;
                                                            addr1142:
                                                            §§push(param1.§3!O§);
                                                            §§push(_loc26_);
                                                         }
                                                         §§goto(addr1149);
                                                      }
                                                      §§pop().y = §§pop();
                                                      if(!_loc29_)
                                                      {
                                                         addr1146:
                                                         param1.§>!_§ = 0;
                                                      }
                                                      §§goto(addr1149);
                                                   }
                                                }
                                                §§goto(addr1142);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1140);
                              }
                              §§goto(addr1146);
                           }
                           §§goto(addr1149);
                        }
                        §§goto(addr799);
                     }
                     (_loc25_ = b2Math.§%M§(param1.§"!"§,param1.§3!O§)).Normalize();
                     if(_loc28_)
                     {
                        addr1011:
                        param1.§3!O§.x += _loc23_ * _loc25_.x;
                        addr1012:
                        addr1010:
                        addr1009:
                        addr1007:
                        addr1006:
                        addr1005:
                        §§push(param1.§3!O§);
                        if(_loc28_ || param3)
                        {
                           §§push(param1.§3!O§);
                           if(!(_loc29_ && param1))
                           {
                              §§push(§§pop().y);
                              if(_loc28_)
                              {
                                 if(_loc28_ || param2)
                                 {
                                    if(!_loc29_)
                                    {
                                       §§push(_loc23_);
                                       if(!(_loc29_ && b2Distance))
                                       {
                                          if(!(_loc29_ && b2Distance))
                                          {
                                             §§push(_loc25_.y);
                                             if(_loc28_)
                                             {
                                                addr991:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc29_ && param3))
                                                {
                                                   addr999:
                                                   §§pop().y = §§pop() + §§pop();
                                                   addr918:
                                                   addr938:
                                                   addr923:
                                                   addr921:
                                                   §§push(param1.§"!"§);
                                                   §§push(param1.§"!"§.x);
                                                   if(_loc28_)
                                                   {
                                                      addr937:
                                                      §§push(_loc24_);
                                                      if(_loc28_ || param2)
                                                      {
                                                         addr936:
                                                         §§push(§§pop() * _loc25_.x);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§pop().x = §§pop();
                                                   addr1000:
                                                   addr939:
                                                   §§push(param1.§"!"§);
                                                   if(_loc28_ || b2Distance)
                                                   {
                                                      §§push(param1.§"!"§);
                                                      if(_loc28_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc28_ || param3)
                                                         {
                                                            §§push(_loc24_);
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               §§push(_loc25_.y);
                                                               if(_loc28_ || param2)
                                                               {
                                                                  addr889:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     addr897:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc28_)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        if(_loc28_ || param3)
                                                                        {
                                                                           if(!_loc29_)
                                                                           {
                                                                              if(!(_loc29_ && param2))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr918);
                                                                                 }
                                                                                 addr1149:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr1012);
                                                                           }
                                                                           §§goto(addr1000);
                                                                        }
                                                                        §§goto(addr939);
                                                                     }
                                                                     §§goto(addr938);
                                                                  }
                                                                  §§goto(addr937);
                                                               }
                                                               §§goto(addr936);
                                                            }
                                                            §§goto(addr889);
                                                         }
                                                         §§goto(addr897);
                                                      }
                                                      §§goto(addr923);
                                                   }
                                                   §§goto(addr921);
                                                }
                                                §§goto(addr1010);
                                             }
                                             §§goto(addr1009);
                                          }
                                          §§goto(addr1007);
                                       }
                                       §§goto(addr991);
                                    }
                                    §§goto(addr1006);
                                 }
                                 §§goto(addr1011);
                              }
                              §§goto(addr999);
                           }
                           §§goto(addr1005);
                        }
                        addr1003:
                        §§goto(addr1003);
                     }
                     §§goto(addr999);
                  }
                  §§goto(addr768);
                  §§goto(addr753);
               }
               b2_gjkMaxIters = b2Math.§&h§(b2_gjkMaxIters,_loc19_);
               if(!_loc29_)
               {
                  §§goto(addr678);
               }
               §§goto(addr799);
            }
         }
      }
   }
}
