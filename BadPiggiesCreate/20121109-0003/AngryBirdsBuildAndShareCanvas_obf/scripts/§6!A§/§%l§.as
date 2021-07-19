package §6!A§
{
   import §"J§.b2Body;
   import §-!`§.§`!i§;
   import §2k§.b2CircleShape;
   import §2k§.b2PolygonShape;
   import §2k§.b2Shape;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import flash.geom.Rectangle;
   
   public class §%l§
   {
      
      public static const §6!0§:Number = 0.6;
      
      public static const §!Y§:Number = 0;
      
      public static const §8!3§:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!0§ = 0.6;
         }
         while(true)
         {
            §!Y§ = 0;
            while(_loc1_ || _loc1_)
            {
               §8!3§ = 1;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §%l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §`j§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : §`!i§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§`!i§ = null;
         if(!_loc7_)
         {
            §§push(param1 is b2PolygonShape);
            if(!_loc7_)
            {
               §§push(§§pop());
               if(!(_loc7_ && param2))
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(param3 is b2PolygonShape);
                           if(_loc6_)
                           {
                              addr45:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    _loc5_ = §4!U§(param1 as b2PolygonShape,param2,param3 as b2PolygonShape,param4);
                                 }
                                 else
                                 {
                                    addr80:
                                    §§push(param3 is b2CircleShape);
                                    if(!_loc7_)
                                    {
                                       addr85:
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(§>5§(param1 as b2PolygonShape,param2,param3 as b2CircleShape,param4));
                                             if(!_loc7_)
                                             {
                                                _loc5_ = §§pop();
                                             }
                                             §§goto(addr204);
                                          }
                                          else
                                          {
                                             addr140:
                                             §§push(§>5§(param3 as b2PolygonShape,param4,param1 as b2CircleShape,param2));
                                          }
                                          (_loc5_ = §§pop()).§+!9§.§<!z§();
                                       }
                                       else
                                       {
                                          §§push(param1 is b2CircleShape);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop());
                                             if(_loc6_ || param1)
                                             {
                                                addr126:
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr129:
                                                      §§pop();
                                                      if(_loc6_)
                                                      {
                                                         §§push(param3 is b2PolygonShape);
                                                         if(!_loc6_)
                                                         {
                                                         }
                                                         addr166:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr175:
                                                               §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  addr181:
                                                                  if(param3 is b2CircleShape)
                                                                  {
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               _loc5_ = §5!h§(param1 as b2CircleShape,param2,param3 as b2CircleShape,param4);
                                                               §§goto(addr204);
                                                            }
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr204);
                                                }
                                                else
                                                {
                                                   §§push(param1 is b2CircleShape);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§goto(addr166);
                                                   }
                                                   §§goto(addr175);
                                                }
                                             }
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 addr204:
                                 return _loc5_;
                              }
                              §§push(param1 is b2PolygonShape);
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             §§goto(addr80);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr45);
               }
               §§goto(addr126);
            }
            §§goto(addr166);
         }
         §§goto(addr140);
      }
      
      public static function §4!U§(param1:b2PolygonShape, param2:b2Transform, param3:b2PolygonShape, param4:b2Transform) : §`!i§
      {
         var _loc45_:Boolean = true;
         var _loc46_:Boolean = false;
         var _loc16_:b2Vec2 = null;
         var _loc17_:b2Vec2 = null;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:* = NaN;
         var _loc22_:b2Vec2 = null;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc25_:b2Vec2 = null;
         var _loc26_:b2Vec2 = null;
         var _loc27_:§`!i§ = null;
         var _loc28_:* = NaN;
         var _loc29_:* = false;
         var _loc30_:* = false;
         var _loc31_:* = false;
         var _loc32_:Number = NaN;
         var _loc33_:b2Vec2 = null;
         var _loc34_:b2Vec2 = null;
         var _loc35_:b2Vec2 = null;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:b2Vec2 = null;
         var _loc44_:b2Vec2 = null;
         var _loc5_:Boolean = true;
         var _loc6_:Vector.<b2Vec2> = param1.§`"3§();
         var _loc7_:Vector.<b2Vec2> = param3.§`"3§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§`!i§ = null;
         var _loc15_:int = 0;
         while(_loc15_ < _loc6_.length)
         {
            _loc16_ = b2Math.§#!K§(param2,_loc6_[_loc15_]);
            _loc17_ = b2Math.§#!K§(param2,_loc6_[_loc15_ + 1 < _loc6_.length ? _loc15_ + 1 : 0]);
            _loc18_ = param1.§6q§()[_loc15_].Copy();
            (_loc18_ = §=!?§(param1.§6q§()[_loc15_].Copy(),new b2Vec2(0,0),-param2.GetAngle())).§7H§(§6!0§);
            (_loc19_ = _loc16_.Copy()).§<!n§(_loc18_);
            (_loc20_ = _loc17_.Copy()).§<!n§(_loc18_);
            if(_loc45_ || param1)
            {
               §§push(Number(0));
               if(_loc45_)
               {
                  _loc21_ = §§pop();
                  if(_loc46_ && param3)
                  {
                     continue;
                  }
                  addr213:
                  while(true)
                  {
                     §§push(_loc21_);
                  }
                  addr763:
               }
               loop1:
               for(; §§pop() < _loc7_.length; §§goto(addr763))
               {
                  _loc22_ = b2Math.§#!K§(param4,_loc7_[_loc21_]);
                  _loc23_ = b2Math.§#!K§(param4,_loc7_[_loc21_ + 1 < _loc7_.length ? _loc21_ + 1 : 0]);
                  (_loc24_ = §=!?§(param3.§6q§()[_loc21_].Copy(),new b2Vec2(0,0),-param4.GetAngle())).§7H§(§6!0§);
                  (_loc25_ = _loc22_.Copy()).§<!n§(_loc24_);
                  (_loc26_ = _loc23_.Copy()).§<!n§(_loc24_);
                  if(_loc45_ || §%l§)
                  {
                     §§push(_loc5_);
                     loop2:
                     for(; §§pop(); if(!(_loc45_ || param2))
                     {
                        continue;
                     },§§goto(addr313))
                     {
                        if(_loc46_)
                        {
                           continue loop1;
                        }
                        §§push(false);
                        loop3:
                        while(true)
                        {
                           _loc30_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§54§(_loc16_,_loc19_,_loc22_,_loc23_));
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             if(!_loc46_)
                                             {
                                                §§push(§54§(_loc17_,_loc20_,_loc22_,_loc23_));
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr389:
                                                   while(true)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc45_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc45_ || param1)
                                                                  {
                                                                     if(!_loc45_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(§54§(_loc22_,_loc25_,_loc16_,_loc17_));
                                                                        loop14:
                                                                        while(!_loc46_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop15:
                                                                           while(!_loc46_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc46_ && param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc46_ && param2)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop19:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          if(_loc45_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(!_loc46_)
                                                                                             {
                                                                                                addr322:
                                                                                                if(_loc45_ || param2)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr377:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc46_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                             }
                                                                                             addr427:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             if(_loc45_ || param2)
                                                                                             {
                                                                                                break loop8;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§54§(_loc23_,_loc26_,_loc16_,_loc17_));
                                                                                             if(_loc46_ && param2)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc46_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc45_)
                                                                                             {
                                                                                                if(_loc45_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             §§goto(addr427);
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       addr346:
                                                                                       addr346:
                                                                                       while(true)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             break loop19;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr427);
                                                                                    §§push(_loc30_);
                                                                                    addr313:
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  break loop8;
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                            §§goto(addr360);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          addr745:
                                          §§push(_loc21_);
                                          if(_loc45_ || §%l§)
                                          {
                                             §§push(§§pop() + 1);
                                             if(_loc45_ || §%l§)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc21_ = §§pop();
                                          continue loop1;
                                       }
                                       §§goto(addr389);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     _loc27_ = §5<§(_loc16_,_loc17_,_loc22_,_loc23_);
                     if(_loc45_ || param2)
                     {
                        §§push(Number(Math.round(§7"4§(_loc16_,_loc17_,_loc22_,_loc23_))));
                        loop20:
                        while(true)
                        {
                           _loc28_ = §§pop();
                           loop21:
                           while(true)
                           {
                              _loc27_.rotation = _loc28_;
                              loop22:
                              while(true)
                              {
                                 §§push(true);
                                 loop23:
                                 while(true)
                                 {
                                    _loc29_ = §§pop();
                                    addr705:
                                    while(true)
                                    {
                                       §§push(_loc27_.§5>§);
                                       while(true)
                                       {
                                          §§push(§§pop().§?!]§());
                                          loop26:
                                          while(true)
                                          {
                                             §§push(§6!0§);
                                             loop27:
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      addr700:
                                                      while(true)
                                                      {
                                                         _loc29_ = §§pop();
                                                         addr701:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr699:
                                                }
                                                while(true)
                                                {
                                                   if(Math.abs(_loc28_) > §!Y§)
                                                   {
                                                      loop32:
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         addr684:
                                                         while(!(_loc46_ && §%l§))
                                                         {
                                                            _loc29_ = §§pop();
                                                            while(true)
                                                            {
                                                               addr607:
                                                               if(_loc45_ || param1)
                                                               {
                                                                  §§push(true);
                                                                  continue loop23;
                                                               }
                                                            }
                                                         }
                                                         addr669:
                                                         §§goto(addr700);
                                                         while(true)
                                                         {
                                                            if(_loc46_ && §%l§)
                                                            {
                                                               continue loop32;
                                                            }
                                                            if(_loc14_ != null)
                                                            {
                                                               §§push(_loc27_.§5>§);
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§?!]§());
                                                                  addr576:
                                                                  while(!_loc46_)
                                                                  {
                                                                     §§push(_loc14_.§5>§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§?!]§());
                                                                        addr581:
                                                                        while(true)
                                                                        {
                                                                           if(_loc45_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop39;
                                                                           }
                                                                           continue loop27;
                                                                        }
                                                                        addr584:
                                                                        if(!_loc46_)
                                                                        {
                                                                           if(_loc46_ && param2)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           addr594:
                                                                           §§push(true);
                                                                           if(!(_loc46_ && param3))
                                                                           {
                                                                              _loc31_ = §§pop();
                                                                              addr722:
                                                                              if(_loc31_)
                                                                              {
                                                                                 addr724:
                                                                                 _loc14_ = _loc27_;
                                                                                 _loc8_ = _loc16_;
                                                                                 _loc9_ = _loc17_;
                                                                                 _loc10_ = _loc18_;
                                                                                 _loc11_ = _loc22_;
                                                                                 _loc12_ = _loc23_;
                                                                                 _loc13_ = _loc24_;
                                                                              }
                                                                              addr504:
                                                                              addr602:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr657:
                                                                              while(§§pop())
                                                                              {
                                                                                 continue loop22;
                                                                                 §§goto(addr594);
                                                                              }
                                                                              addr657:
                                                                           }
                                                                           §§goto(addr745);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr607);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop26;
                                                               }
                                                            }
                                                            §§goto(addr607);
                                                         }
                                                         §§goto(addr684);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr657);
                                                      §§goto(addr692);
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc46_ && param3)
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().§?!]§());
                                          if(_loc45_ || param3)
                                          {
                                             if(_loc46_)
                                             {
                                                continue loop20;
                                             }
                                             §§push(_loc14_.§5>§);
                                             if(_loc45_)
                                             {
                                                §§push(§§pop().§?!]§());
                                                if(_loc45_ || param1)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc45_ || §%l§)
                                                      {
                                                         if(!_loc46_)
                                                         {
                                                            §§push(§7"4§(_loc8_,_loc9_,_loc11_,_loc12_));
                                                            if(!_loc46_)
                                                            {
                                                               if(_loc45_)
                                                               {
                                                                  addr566:
                                                                  _loc32_ = §§pop();
                                                                  addr567:
                                                                  if(_loc45_)
                                                                  {
                                                                     if(Math.abs(_loc28_) < Math.abs(_loc32_))
                                                                     {
                                                                        if(_loc45_)
                                                                        {
                                                                           if(!(_loc45_ || param2))
                                                                           {
                                                                              §§goto(addr567);
                                                                           }
                                                                           if(!(_loc46_ && param2))
                                                                           {
                                                                              §§push(true);
                                                                              if(_loc45_)
                                                                              {
                                                                                 if(!(_loc46_ && §%l§))
                                                                                 {
                                                                                    if(_loc46_)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    if(!_loc46_)
                                                                                    {
                                                                                       _loc31_ = §§pop();
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          if(!(_loc45_ || param3))
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          if(!_loc46_)
                                                                                          {
                                                                                             addr502:
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr504);
                                                                                             }
                                                                                             §§goto(addr722);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr701);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                    §§goto(addr684);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr594);
                                                                                 }
                                                                              }
                                                                              §§goto(addr722);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr584);
                                                                           }
                                                                        }
                                                                        §§goto(addr724);
                                                                     }
                                                                     §§goto(addr722);
                                                                  }
                                                                  §§goto(addr669);
                                                               }
                                                               §§goto(addr576);
                                                            }
                                                            §§goto(addr566);
                                                         }
                                                         §§goto(addr602);
                                                      }
                                                      §§goto(addr724);
                                                   }
                                                   §§goto(addr722);
                                                }
                                                §§goto(addr581);
                                             }
                                             §§goto(addr580);
                                          }
                                          §§goto(addr566);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr502);
                  }
                  §§goto(addr346);
               }
               if(_loc45_ || param1)
               {
                  _loc15_++;
               }
               continue;
            }
            §§goto(addr213);
         }
         if(!_loc46_)
         {
            if(_loc14_ == null)
            {
               return null;
            }
         }
         _loc33_ = _loc14_.§5>§;
         §§push(§§findproperty(§=!?§));
         §§push(_loc8_);
         §§push(_loc14_.§%<§);
         §§push(_loc14_.rotation);
         if(!(_loc46_ && param3))
         {
            §§push(§§pop() / 180);
            if(_loc45_)
            {
               addr805:
               §§push(§§pop() * Math.PI);
            }
            _loc34_ = §§pop().§=!?§(§§pop(),§§pop(),§§pop());
            §§push(§§findproperty(§=!?§));
            §§push(_loc9_);
            §§push(_loc14_.§%<§);
            §§push(_loc14_.rotation);
            if(!_loc46_)
            {
               §§push(§§pop() / 180);
               if(!(_loc46_ && param1))
               {
                  addr828:
                  §§push(§§pop() * Math.PI);
               }
               _loc35_ = §§pop().§=!?§(§§pop(),§§pop(),§§pop());
               if(!(_loc46_ && param1))
               {
                  _loc34_.§<!n§(_loc33_);
                  while(true)
                  {
                     _loc35_.§<!n§(_loc33_);
                     loop56:
                     while(!(_loc46_ && param3))
                     {
                        §§push(_loc36_);
                        loop57:
                        while(true)
                        {
                           if(!(_loc46_ && param2))
                           {
                              if(!_loc46_)
                              {
                                 §§push(_loc39_);
                                 loop58:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc46_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    loop59:
                                    while(_loc45_ || param2)
                                    {
                                       _loc40_ = §§pop();
                                       loop60:
                                       while(true)
                                       {
                                          if(_loc46_)
                                          {
                                             continue loop56;
                                          }
                                          addr938:
                                          if(_loc45_ || param1)
                                          {
                                             if(_loc45_)
                                             {
                                                if(!_loc46_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc37_);
                                                      addr884:
                                                      while(true)
                                                      {
                                                         if(_loc45_)
                                                         {
                                                            if(_loc46_ && §%l§)
                                                            {
                                                               break;
                                                            }
                                                            continue loop58;
                                                         }
                                                         continue loop59;
                                                      }
                                                      loop51:
                                                      while(true)
                                                      {
                                                         _loc37_ = §§pop();
                                                         loop52:
                                                         while(true)
                                                         {
                                                            §§push(b2Math.§0?§(_loc35_,_loc11_));
                                                            if(!(_loc46_ && §%l§))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr980:
                                                            addr996:
                                                            while(_loc45_)
                                                            {
                                                               _loc38_ = §§pop();
                                                               while(_loc45_ || param3)
                                                               {
                                                                  §§push(b2Math.§0?§(_loc35_,_loc12_));
                                                                  if(!_loc46_)
                                                                  {
                                                                     addr958:
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc39_ = §§pop();
                                                                        continue loop56;
                                                                     }
                                                                     addr958:
                                                                  }
                                                                  §§goto(addr958);
                                                                  §§goto(addr938);
                                                               }
                                                               continue loop52;
                                                               if(!(_loc45_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(Number(§§pop()));
                                                               if(!_loc46_)
                                                               {
                                                                  if(!_loc46_)
                                                                  {
                                                                     if(!(_loc46_ && param2))
                                                                     {
                                                                        continue loop57;
                                                                     }
                                                                     §§goto(addr884);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr902:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc41_ = §§pop();
                                                                  continue loop60;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop51;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr882:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(b2Math.§0?§(_loc34_,_loc11_));
                                                      break loop57;
                                                   }
                                                   addr1011:
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr983);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr996);
                                       }
                                    }
                                    addr1005:
                                    while(true)
                                    {
                                       _loc36_ = §§pop();
                                       §§goto(addr1006);
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr958);
                        }
                        while(true)
                        {
                           §§goto(addr1005);
                        }
                     }
                  }
               }
               §§goto(addr1011);
            }
            §§goto(addr828);
         }
         §§goto(addr805);
      }
      
      public static function §=!?§(param1:b2Vec2, param2:b2Vec2, param3:Number) : b2Vec2
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         §§push(param1.x);
         if(_loc13_)
         {
            §§push(§§pop() - param2.x);
            if(!_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(param1.y);
         if(_loc13_ || param2)
         {
            §§push(§§pop() - param2.y);
            if(_loc13_ || param2)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc12_)
            {
               §§push(_loc4_);
               if(_loc13_ || param2)
               {
                  §§push(0);
                  if(_loc13_ || §%l§)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc13_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc12_ && param1))
                           {
                              §§pop();
                              if(_loc13_ || param1)
                              {
                                 §§push(_loc5_);
                                 if(_loc13_)
                                 {
                                    addr102:
                                    if(§§pop() == 0)
                                    {
                                       if(_loc13_ || §%l§)
                                       {
                                          §§goto(addr110);
                                       }
                                    }
                                 }
                                 addr123:
                                 var _loc6_:* = §§pop();
                                 var _loc7_:Number;
                                 §§push(_loc7_ = Math.atan2(_loc4_,_loc5_));
                                 if(!(_loc12_ && param3))
                                 {
                                    §§push(§§pop() + param3);
                                    if(_loc13_ || §%l§)
                                    {
                                       addr147:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(Math.sin(_loc8_) * _loc6_);
                                    if(!_loc12_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    §§push(Math.cos(_loc8_) * _loc6_);
                                    if(_loc13_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(param2.x);
                                    if(_loc13_)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc12_)
                                       {
                                          §§goto(addr176);
                                       }
                                       §§goto(addr195);
                                    }
                                    addr176:
                                    §§push(§§pop() + §§pop());
                                    §§push(param2.y);
                                    if(_loc13_ || param3)
                                    {
                                       addr195:
                                       §§push(§§pop() + _loc10_);
                                    }
                                    return new §§pop().b2Vec2(§§pop(),§§pop());
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr123);
                              §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                           }
                        }
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr123);
            }
            addr110:
            return param1.Copy();
         }
         §§goto(addr47);
      }
      
      public static function §>5§(param1:b2PolygonShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §`!i§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:§`!i§ = null;
         var _loc5_:b2Vec2 = param4.position.Copy();
         §§push(param3.§?!L§());
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§`"3§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:int = 0;
         loop0:
         while(_loc9_ < _loc7_.length)
         {
            _loc10_ = b2Math.§#!K§(param2,_loc7_[_loc9_]);
            _loc11_ = b2Math.§#!K§(param2,_loc7_[_loc9_ + 1 < _loc7_.length ? _loc9_ + 1 : 0]);
            §§push((_loc12_ = §=!`§(_loc10_,_loc11_,_loc5_).§5>§).§?!]§());
            if(_loc16_ || param1)
            {
               §§push(_loc6_);
               if(!(_loc15_ && param2))
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc15_ && param2))
                  {
                     addr115:
                     §§push(_loc12_.§?!]§());
                     if(!(_loc15_ && param3))
                     {
                        addr124:
                        §§push(§§pop() / §§pop());
                        if(!(_loc15_ && param1))
                        {
                           §§push(Number(§§pop()));
                           if(_loc15_)
                           {
                           }
                           addr214:
                           addr217:
                           addr216:
                           if(§§pop() < _loc8_.§?!]§())
                           {
                              if(_loc15_ && param1)
                              {
                                 continue;
                              }
                              addr225:
                              _loc8_ = _loc12_;
                           }
                           _loc9_++;
                           continue;
                        }
                        _loc13_ = §§pop();
                        if(!(_loc15_ && param1))
                        {
                           §§push(_loc12_);
                           §§push(_loc12_.x);
                           if(_loc16_ || param1)
                           {
                              §§push(§§pop() * _loc13_);
                           }
                           §§pop().x = §§pop();
                           if(_loc16_ || param1)
                           {
                              while(true)
                              {
                                 §§push(_loc12_);
                                 §§push(_loc12_.y);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() * _loc13_);
                                 }
                                 §§pop().y = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc8_ == null);
                                    if(_loc16_)
                                    {
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       if(!(_loc16_ || param2))
                                       {
                                          break;
                                       }
                                       addr169:
                                       §§pop();
                                       if(_loc16_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr217);
                              }
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr214);
               }
               §§goto(addr124);
            }
            §§goto(addr115);
         }
         if(!(_loc15_ && param3))
         {
            if(_loc8_ == null)
            {
               return null;
            }
         }
         (_loc14_ = new §`!i§()).§5>§ = _loc8_;
         if(!(_loc15_ && §%l§))
         {
            _loc14_.§+!9§ = _loc8_;
         }
         do
         {
            _loc14_.rotation = 0;
         }
         while(_loc15_ && §%l§);
         
         return _loc14_;
      }
      
      public static function §5!h§(param1:b2CircleShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §`!i§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2Vec2 = param2.position.Copy();
         var _loc7_:b2Vec2;
         var _loc6_:b2Vec2;
         (_loc7_ = (_loc6_ = param4.position.Copy()).Copy()).§&"1§(_loc5_);
         §§push(_loc7_.§?!]§());
         if(!_loc10_)
         {
            §§push(param1.§?!L§());
            if(_loc11_ || param3)
            {
               §§push(§§pop() - §§pop());
               if(!_loc10_)
               {
                  §§push(param3.§?!L§());
                  if(_loc11_ || §%l§)
                  {
                     addr82:
                     §§push(§§pop() - §§pop());
                     if(_loc11_)
                     {
                        §§push(_loc7_.§?!]§());
                     }
                     var _loc8_:Number = §§pop();
                     if(_loc11_)
                     {
                        §§push(_loc7_);
                        §§push(_loc7_.x);
                        if(!(_loc10_ && param1))
                        {
                           §§push(§§pop() * _loc8_);
                        }
                        §§pop().x = §§pop();
                        if(!(_loc10_ && §%l§))
                        {
                           addr106:
                           §§push(_loc7_);
                           §§push(_loc7_.y);
                           if(_loc11_)
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().y = §§pop();
                        }
                        var _loc9_:§`!i§;
                        (_loc9_ = new §`!i§()).§5>§ = _loc7_;
                        if(!(_loc10_ && §%l§))
                        {
                           _loc9_.§+!9§ = _loc7_;
                           do
                           {
                              _loc9_.rotation = 0;
                           }
                           while(_loc10_ && param2);
                           
                        }
                        return _loc9_;
                     }
                     §§goto(addr106);
                  }
                  §§push(§§pop() / §§pop());
                  if(!(_loc10_ && param2))
                  {
                     §§goto(addr82);
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public static function §5<§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : §`!i§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§`!i§ = null;
         var _loc7_:§`!i§ = null;
         var _loc8_:§`!i§ = null;
         var _loc9_:§`!i§ = null;
         var _loc10_:§`!i§ = null;
         var _loc11_:§`!i§ = null;
         var _loc5_:b2Vec2;
         if(_loc5_ = §54§(param1,param2,param3,param4))
         {
            (_loc6_ = new §`!i§()).§5>§ = new b2Vec2(0,0);
            if(_loc12_ || param3)
            {
               _loc6_.§%<§ = _loc5_;
               if(!(_loc13_ && param1))
               {
                  return _loc6_;
               }
            }
         }
         _loc7_ = §=!`§(param1,param2,param3,false);
         _loc8_ = §=!`§(param1,param2,param4,false);
         _loc9_ = §=!`§(param3,param4,param1,true);
         _loc10_ = §=!`§(param3,param4,param2,true);
         _loc11_ = _loc7_;
         if(_loc12_ || param1)
         {
            §§push(_loc8_.§5>§);
            if(!_loc13_)
            {
               §§push(§§pop().§?!]§());
               if(!(_loc13_ && param1))
               {
                  §§push(_loc11_.§5>§);
                  if(!(_loc13_ && §%l§))
                  {
                     §§push(§§pop().§?!]§());
                     if(!(_loc13_ && param2))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc12_)
                           {
                              _loc11_ = _loc8_;
                              addr160:
                              §§push(_loc9_.§5>§);
                              if(_loc12_)
                              {
                                 §§push(§§pop().§?!]§());
                                 if(!_loc13_)
                                 {
                                    §§push(_loc11_.§5>§);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop().§?!]§());
                                       if(_loc12_ || param3)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!_loc13_)
                                             {
                                                addr182:
                                                _loc11_ = _loc9_;
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              addr201:
                              if(_loc10_.§5>§.§?!]§() < _loc11_.§5>§.§?!]§())
                              {
                              }
                              §§goto(addr202);
                           }
                           addr202:
                           return _loc10_;
                        }
                        §§goto(addr160);
                     }
                  }
               }
            }
            §§goto(addr201);
         }
         §§goto(addr182);
      }
      
      public static function §54§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : b2Vec2
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:b2Vec2 = null;
         §§push(param4.y);
         if(!_loc12_)
         {
            §§push(param3.y);
            if(!_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc12_)
               {
                  §§push(param2.x);
                  if(_loc11_)
                  {
                     §§push(param1.x);
                     if(_loc11_ || param2)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc11_ || param1)
                        {
                           addr51:
                           §§push(§§pop() * §§pop());
                           if(_loc11_)
                           {
                              §§push(param4.x);
                              if(_loc11_)
                              {
                                 §§push(param3.x);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc12_ && param1))
                                    {
                                       addr70:
                                       §§push(param2.y);
                                       if(_loc11_ || param3)
                                       {
                                          addr82:
                                          addr79:
                                          §§push(§§pop() * (§§pop() - param1.y));
                                          if(_loc12_)
                                          {
                                          }
                                          var _loc5_:* = §§pop();
                                          if(!_loc12_)
                                          {
                                             if(§§pop() == 0)
                                             {
                                                if(_loc11_ || param3)
                                                {
                                                   return null;
                                                }
                                             }
                                             §§push(param4.x);
                                             if(!_loc12_)
                                             {
                                                §§push(param3.x);
                                                if(!(_loc12_ && §%l§))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc12_ && param3))
                                                   {
                                                      addr125:
                                                      §§push(param1.y);
                                                      if(_loc11_)
                                                      {
                                                         addr129:
                                                         §§push(param3.y);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc12_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc11_ || param1)
                                                               {
                                                                  addr144:
                                                                  §§push(param4.y);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(param3.y);
                                                                     if(!(_loc12_ && param2))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           addr165:
                                                                           §§push(param1.x);
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              addr177:
                                                                              §§push(§§pop() - §§pop() * (§§pop() - param3.x));
                                                                              if(_loc11_ || param3)
                                                                              {
                                                                                 addr186:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               var _loc6_:* = §§pop();
                                                               §§push(param2.x);
                                                               if(_loc11_)
                                                               {
                                                                  §§push(param1.x);
                                                                  if(!_loc12_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc11_ || §%l§)
                                                                     {
                                                                        addr204:
                                                                        §§push(param1.y);
                                                                        if(_loc11_)
                                                                        {
                                                                           addr208:
                                                                           §§push(param3.y);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 addr220:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc11_ || §%l§)
                                                                                 {
                                                                                    §§push(param2.y);
                                                                                    if(!(_loc12_ && param2))
                                                                                    {
                                                                                       addr237:
                                                                                       §§push(param1.y);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          addr251:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!(_loc12_ && param1))
                                                                                          {
                                                                                             addr259:
                                                                                             §§push(param1.x);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                addr266:
                                                                                                §§push(§§pop() * (§§pop() - param3.x));
                                                                                             }
                                                                                             §§goto(addr266);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc11_ || param3)
                                                                                          {
                                                                                             addr276:
                                                                                             var _loc7_:Number = §§pop();
                                                                                             §§push(_loc6_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() / _loc5_);
                                                                                                if(!(_loc12_ && param1))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc8_:* = §§pop();
                                                                                             §§push(_loc7_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() / _loc5_);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc9_:* = §§pop();
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §§pop());
                                                                                                      if(_loc11_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr412:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        addr362:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           addr363:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc12_ && param3)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr411:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr372:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr416);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    §§goto(addr259);
                                                                                 }
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr237);
                                                                           }
                                                                           §§goto(addr251);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr82);
                                    }
                                    §§push(§§pop() - §§pop());
                                    if(_loc11_)
                                    {
                                       addr89:
                                       §§goto(addr82);
                                       §§push(Number(§§pop()));
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr89);
                                 }
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr51);
               }
               §§goto(addr89);
            }
            §§goto(addr82);
         }
         §§goto(addr89);
      }
      
      public static function §=!`§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:Boolean = false) : §`!i§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:* = NaN;
         §§push(param2.x);
         if(_loc10_ || §%l§)
         {
            §§push(§§pop() - param1.x);
            if(!_loc11_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(!(_loc11_ && param1))
            {
               §§push(§§pop() - param1.y);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            var _loc7_:b2Vec2 = null;
            if(_loc10_)
            {
               §§push(_loc5_);
               if(!_loc11_)
               {
                  §§push(0);
                  if(!(_loc11_ && param2))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc10_)
                     {
                        if(§§pop())
                        {
                           if(!_loc11_)
                           {
                              addr73:
                              §§pop();
                              if(!(_loc11_ && param1))
                              {
                                 §§push(_loc6_);
                                 if(!(_loc11_ && param2))
                                 {
                                    §§push(0);
                                    if(!_loc11_)
                                    {
                                       addr93:
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             addr96:
                                             _loc7_ = param1;
                                          }
                                          else
                                          {
                                             addr235:
                                             _loc7_ = param1;
                                          }
                                       }
                                       else
                                       {
                                          §§push(param3.x);
                                          if(_loc10_ || param3)
                                          {
                                             §§push(param1.x);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc11_)
                                                   {
                                                      addr119:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§push(param3.y);
                                                         if(!(_loc11_ && §%l§))
                                                         {
                                                            §§push(param1.y);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_ || §%l§)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc11_ && param3))
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc10_ || param3)
                                                                           {
                                                                           }
                                                                           addr204:
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc11_ && §%l§))
                                                                              {
                                                                                 addr220:
                                                                                 §§push(_loc9_ = §§pop());
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr224:
                                                                                    §§push(0);
                                                                                    if(_loc10_ || param2)
                                                                                    {
                                                                                       addr232:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§goto(addr235);
                                                                                          }
                                                                                          addr284:
                                                                                          var _loc8_:§`!i§;
                                                                                          §§push(_loc8_ = new §`!i§());
                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                          §§push(param3.x);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr299:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                §§push(param3.y);
                                                                                                if(_loc10_ || param2)
                                                                                                {
                                                                                                   addr308:
                                                                                                   §§push(§§pop() - _loc7_.y);
                                                                                                }
                                                                                                §§pop().§5>§ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(param4)
                                                                                                   {
                                                                                                      if(!(_loc11_ && §%l§))
                                                                                                      {
                                                                                                         addr360:
                                                                                                         _loc8_.§5>§.§<!z§();
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr332:
                                                                                                         §§pop().§%<§ = §§pop();
                                                                                                         if(_loc11_ && param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         return _loc8_;
                                                                                                         addr340:
                                                                                                      }
                                                                                                      addr363:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr332);
                                                                                                         §§push(!!param4 ? param3 : _loc7_);
                                                                                                      }
                                                                                                      §§goto(addr327);
                                                                                                      §§goto(addr363);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr308);
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr241:
                                                                                          if(_loc9_ <= 1)
                                                                                          {
                                                                                             §§push(§§findproperty(b2Vec2));
                                                                                             §§push(param1.x);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         addr265:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§push(param1.y);
                                                                                                         if(_loc10_ || §%l§)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr278:
                                                                                                               §§push(§§pop() * _loc6_);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      _loc7_ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                   §§goto(addr278);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr265);
                                                                                          }
                                                                                          §§goto(addr284);
                                                                                       }
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        §§goto(addr241);
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc10_ || §%l§)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc10_)
                                                                        {
                                                                           addr191:
                                                                           §§push(_loc6_);
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              addr199:
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                        }
                                                                        §§goto(addr204);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§goto(addr204);
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr241);
               }
               §§goto(addr220);
            }
            §§goto(addr96);
         }
         §§goto(addr32);
      }
      
      public static function §7"4§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2, param5:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§findproperty(§#!<§));
         §§push(§§findproperty(b2Vec2));
         §§push(param2.x);
         if(!_loc7_)
         {
            §§push(param1.x);
            if(!(_loc7_ && §%l§))
            {
               §§goto(addr42);
            }
            §§goto(addr46);
         }
         addr42:
         §§push(§§pop() - §§pop());
         §§push(param2.y);
         if(_loc6_)
         {
            addr46:
            §§push(§§pop() - param1.y);
         }
         return §§pop().§#!<§(new §§pop().b2Vec2(§§pop(),§§pop()),new b2Vec2(param4.x - param3.x,param4.y - param3.y),param5);
      }
      
      public static function §#!<§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = true) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.y,param2.x);
         var _loc5_:Number;
         §§push(_loc5_ = Math.atan2(param1.y,param1.x));
         if(_loc8_ || param1)
         {
            §§push(§§pop() - _loc4_);
            if(_loc8_)
            {
               §§push(§§pop() * 180);
               if(!_loc7_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc7_ && §%l§))
                  {
                     addr59:
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr59);
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param3)
               {
                  if(_loc8_)
                  {
                     §§push(_loc6_);
                     while(true)
                     {
                        §§push(90);
                        if(!_loc7_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc6_);
                              if(_loc8_ || §%l§)
                              {
                                 §§push(-90);
                                 if(!(_loc7_ && param3))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(_loc6_);
                                          loop1:
                                          for(; !_loc7_; if(!_loc8_)
                                          {
                                             continue;
                                          },if(_loc7_ && param2)
                                          {
                                             §§goto(addr170);
                                          },§§goto(addr94))
                                          {
                                             §§push(180);
                                             while(true)
                                             {
                                                if(_loc8_ || §%l§)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr135:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     addr94:
                                                                     return §§pop();
                                                                     addr64:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr168:
                                                                           §§push(180);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                           }
                                                                           addr168:
                                                                        }
                                                                     }
                                                                     addr164:
                                                                  }
                                                                  §§goto(addr64);
                                                               }
                                                               addr171:
                                                               while(true)
                                                               {
                                                                  §§goto(addr64);
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr170:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            §§goto(addr171);
                                                         }
                                                      }
                                                   }
                                                   addr131:
                                                }
                                                §§goto(addr168);
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr164);
               }
               §§goto(addr94);
            }
            §§goto(addr171);
         }
         §§goto(addr59);
      }
      
      public static function § "-§(param1:b2Body, param2:b2Body) : Rectangle
      {
         var _loc3_:b2Shape = param1.GetFixtureList().GetShape().Copy();
         var _loc4_:b2Transform = param1.§60§();
         var _loc5_:b2Shape = param2.GetFixtureList().GetShape().Copy();
         var _loc6_:b2Transform = param2.§60§();
         var _loc7_:Rectangle = §%l§.§4!'§(_loc3_,_loc4_,§%l§.§6!0§);
         var _loc8_:Rectangle = §%l§.§4!'§(_loc5_,_loc6_,§%l§.§6!0§);
         return _loc7_.intersection(_loc8_);
      }
      
      public static function §&8§(param1:b2Body, param2:Number = 0) : Rectangle
      {
         var _loc3_:b2Shape = param1.GetFixtureList().GetShape().Copy();
         var _loc4_:b2Transform = param1.§60§();
         return §%l§.§4!'§(_loc3_,_loc4_,param2);
      }
      
      public static function §4!'§(param1:b2Shape, param2:b2Transform, param3:Number = 0) : Rectangle
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Vector.<b2Vec2> = null;
         var _loc11_:int = 0;
         var _loc12_:b2Vec2 = null;
         var _loc4_:* = Number(Number.MAX_VALUE);
         var _loc5_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(!(_loc14_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(!(_loc14_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc14_)
         {
            §§push(param1 is b2CircleShape);
            if(!(_loc14_ && §%l§))
            {
               if(§§pop())
               {
                  if(!_loc14_)
                  {
                     §§push((param1 as b2CircleShape).§?!L§());
                     if(_loc13_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc8_ = §§pop();
                     if(!_loc14_)
                     {
                        addr91:
                        §§push((_loc9_ = param2.position).x);
                        if(!(_loc14_ && param3))
                        {
                           §§push(_loc8_);
                           if(_loc13_)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc13_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!_loc14_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             §§push(_loc9_.x);
                                             if(!_loc14_)
                                             {
                                                §§push(_loc8_);
                                                if(_loc13_)
                                                {
                                                   addr131:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc13_ || param2)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         addr159:
                                                         §§push(Number(§§pop()));
                                                         if(_loc13_ || param2)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(_loc13_ || param2)
                                                            {
                                                               §§push(_loc9_.x);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr432:
                                                                                       loop45:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc9_.y);
                                                                                                if(_loc13_ || param2)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!(_loc14_ && §%l§))
                                                                                                   {
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc13_ || param1)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc14_ && param1)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && param3))
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       addr376:
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       loop23:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             addr399:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(_loc13_ || param1)
                                                                                                                                             {
                                                                                                                                                break loop30;
                                                                                                                                             }
                                                                                                                                             loop26:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc14_ && param3)
                                                                                                                                                {
                                                                                                                                                   continue loop45;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr407:
                                                                                                                                                   loop27:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      loop28:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc13_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc9_.y);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc14_ && §%l§)
                                                                                                                                                            {
                                                                                                                                                               continue loop12;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop23;
                                                                                                                                                               }
                                                                                                                                                               if(_loc14_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc14_ && §%l§))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop27;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(_loc13_ || §%l§)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc9_.y);
                                                                                                                                                                                    if(_loc13_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr238:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          addr239:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc13_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   if(!_loc14_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr296:
                                                                                                                                                                                                   addr296:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc14_ && §%l§)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc14_ && param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop27;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return new Rectangle(_loc4_ - param3,_loc5_ - param3,_loc6_ - _loc4_ + param3,_loc7_ - _loc5_ + param3);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr539:
                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr423:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc9_.x);
                                                                                                                                                                                                            addr425:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                               addr426:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr296:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr288:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc13_ || §%l§)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr295:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr296);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr295:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr389:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr288:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr428:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr426);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr238:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc13_ || param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(_loc13_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr288);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr296);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr263:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr296);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr229:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr299);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr263);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr288);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr223:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr239);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr288);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr223);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr296);
                                                                                                                                                      }
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr399:
                                                                                                                                          }
                                                                                                                                          §§goto(addr399);
                                                                                                                                       }
                                                                                                                                       addr376:
                                                                                                                                    }
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                                 §§goto(addr428);
                                                                                                                              }
                                                                                                                              §§goto(addr407);
                                                                                                                           }
                                                                                                                           addr362:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                        }
                                                                                                                        §§goto(addr389);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr353:
                                                                                                            }
                                                                                                            §§goto(addr376);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr406);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr423);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr425);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr426);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr229);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          if(_loc13_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc13_)
                                             {
                                                §§goto(addr159);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr432);
                                       }
                                    }
                                    §§goto(addr361);
                                 }
                                 §§goto(addr353);
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr432);
                     }
                     else
                     {
                        addr439:
                        _loc10_ = (param1 as b2PolygonShape).§`"3§();
                        if(!_loc14_)
                        {
                           _loc11_ = 0;
                        }
                        while(_loc11_ < _loc10_.length)
                        {
                           _loc12_ = b2Math.§#!K§(param2,_loc10_[_loc11_]);
                           if(!(_loc14_ && §%l§))
                           {
                              §§push(Number(Math.min(_loc12_.x,_loc4_)));
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    §§push(Number(Math.max(_loc12_.x,_loc6_)));
                                    loop3:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       addr526:
                                       while(true)
                                       {
                                          §§push(Number(Math.min(_loc12_.y,_loc5_)));
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr499);
                        }
                     }
                  }
                  §§goto(addr91);
               }
               else
               {
                  addr438:
                  if(param1 is b2PolygonShape)
                  {
                     §§goto(addr439);
                  }
               }
               §§goto(addr539);
            }
            §§goto(addr438);
         }
         §§goto(addr91);
      }
      
      public static function §]!^§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<b2Vec2> = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         if(_loc6_ || param1)
         {
            §§push(param1 is b2CircleShape);
            if(_loc6_ || param2)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && §%l§))
                  {
                     §§goto(addr49);
                  }
               }
               §§push(param1 is b2PolygonShape);
            }
            if(§§pop())
            {
               _loc3_ = (param1 as b2PolygonShape).§`"3§();
               _loc4_ = new b2Vec2();
               if(!_loc7_)
               {
                  _loc5_ = 0;
               }
               while(true)
               {
                  if(_loc5_ >= _loc3_.length)
                  {
                     if(!_loc7_)
                     {
                        if(!(_loc7_ && param2))
                        {
                           _loc4_.§7H§(1 / _loc3_.length);
                        }
                        else
                        {
                           _loc5_++;
                           continue;
                           addr146:
                        }
                     }
                     if(!(_loc7_ && param2))
                     {
                        break;
                     }
                     continue;
                  }
                  _loc4_.§<!n§(b2Math.§#!K§(param2,_loc3_[_loc5_]));
                  §§goto(addr146);
               }
               return _loc4_;
            }
            return null;
         }
         addr49:
         return param2.position.Copy();
      }
      
      public static function §[t§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2Vec2 = §]!^§(param1,param2);
         §§push(§§findproperty(b2Vec2));
         §§push(param2.position.x);
         if(_loc5_)
         {
            §§push(_loc3_.x);
            if(_loc5_)
            {
               addr44:
               §§push(§§pop() - §§pop());
               §§push(param2.position.y);
               if(!(_loc4_ && §%l§))
               {
                  §§push(§§pop() - _loc3_.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr44);
      }
   }
}
