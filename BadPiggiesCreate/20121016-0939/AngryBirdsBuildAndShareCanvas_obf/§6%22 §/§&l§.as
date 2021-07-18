package §6" §
{
   import §"!9§.b2CircleShape;
   import §"!9§.b2PolygonShape;
   import §"!9§.b2Shape;
   import §+S§.b2Body;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §?f§.§@" §;
   import flash.geom.Rectangle;
   
   public class §&l§
   {
      
      public static const §]!Z§:Number = 0.6;
      
      public static const §;",§:Number = 0;
      
      public static const § !0§:Number = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §&l§))
         {
            §]!Z§ = 0.6;
            while(true)
            {
               §;",§ = 0;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            § !0§ = 1;
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §&l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function § "!§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : §@" §
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§@" § = null;
         if(_loc6_ || §&l§)
         {
            §§push(param1 is b2PolygonShape);
            if(_loc6_)
            {
               §§push(§§pop());
               if(_loc6_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && param3))
                     {
                        §§pop();
                        if(_loc6_ || param1)
                        {
                           §§push(param3 is b2PolygonShape);
                           if(!_loc7_)
                           {
                              addr60:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    _loc5_ = §2t§(param1 as b2PolygonShape,param2,param3 as b2PolygonShape,param4);
                                 }
                                 else
                                 {
                                    addr105:
                                    §§push(param3 is b2CircleShape);
                                    if(!_loc7_)
                                    {
                                       addr110:
                                       if(§§pop())
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             addr128:
                                             §§push(§0s§(param1 as b2PolygonShape,param2,param3 as b2CircleShape,param4));
                                             if(_loc6_)
                                             {
                                                _loc5_ = §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr218:
                                             if(param3 is b2CircleShape)
                                             {
                                                _loc5_ = §4!<§(param1 as b2CircleShape,param2,param3 as b2CircleShape,param4);
                                                addr222:
                                             }
                                          }
                                          §§goto(addr244);
                                       }
                                       else
                                       {
                                          §§push(param1 is b2CircleShape);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc7_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      §§goto(addr159);
                                                   }
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr201);
                                          }
                                          §§goto(addr159);
                                       }
                                       (_loc5_ = §0s§(param3 as b2PolygonShape,param4,param1 as b2CircleShape,param2)).§6!,§.§!!]§();
                                       §§goto(addr244);
                                    }
                                    §§goto(addr218);
                                 }
                                 addr244:
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
                                       if(!(_loc7_ && param1))
                                       {
                                          addr97:
                                          §§pop();
                                          if(!(_loc7_ && param1))
                                          {
                                             §§goto(addr105);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr110);
                                 }
                              }
                              §§goto(addr201);
                              §§goto(addr201);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr60);
               }
               §§goto(addr201);
            }
            §§goto(addr218);
         }
         §§goto(addr128);
      }
      
      public static function §2t§(param1:b2PolygonShape, param2:b2Transform, param3:b2PolygonShape, param4:b2Transform) : §@" §
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
         var _loc27_:§@" § = null;
         var _loc28_:* = NaN;
         var _loc29_:* = false;
         var _loc30_:* = false;
         var _loc31_:* = false;
         var _loc32_:* = NaN;
         var _loc33_:b2Vec2 = null;
         var _loc34_:b2Vec2 = null;
         var _loc35_:b2Vec2 = null;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:b2Vec2 = null;
         var _loc44_:b2Vec2 = null;
         var _loc5_:Boolean = true;
         var _loc6_:Vector.<b2Vec2> = param1.§-"=§();
         var _loc7_:Vector.<b2Vec2> = param3.§-"=§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§@" § = null;
         var _loc15_:int = 0;
         while(_loc15_ < _loc6_.length)
         {
            _loc16_ = b2Math.§>!C§(param2,_loc6_[_loc15_]);
            _loc17_ = b2Math.§>!C§(param2,_loc6_[_loc15_ + 1 < _loc6_.length ? _loc15_ + 1 : 0]);
            _loc18_ = param1.§<!A§()[_loc15_].Copy();
            (_loc18_ = §2">§(param1.§<!A§()[_loc15_].Copy(),new b2Vec2(0,0),-param2.GetAngle())).§>!t§(§]!Z§);
            (_loc19_ = _loc16_.Copy()).§1v§(_loc18_);
            (_loc20_ = _loc17_.Copy()).§1v§(_loc18_);
            if(_loc45_)
            {
               §§push(Number(0));
               if(_loc45_ || param3)
               {
                  _loc21_ = §§pop();
                  if(_loc45_)
                  {
                     while(true)
                     {
                        §§push(_loc21_);
                     }
                     addr713:
                  }
                  addr724:
                  _loc15_++;
                  continue;
               }
               loop2:
               for(; §§pop() < _loc7_.length; §§goto(addr713))
               {
                  _loc22_ = b2Math.§>!C§(param4,_loc7_[_loc21_]);
                  _loc23_ = b2Math.§>!C§(param4,_loc7_[_loc21_ + 1 < _loc7_.length ? _loc21_ + 1 : 0]);
                  (_loc24_ = §2">§(param3.§<!A§()[_loc21_].Copy(),new b2Vec2(0,0),-param4.GetAngle())).§>!t§(§]!Z§);
                  (_loc25_ = _loc22_.Copy()).§1v§(_loc24_);
                  (_loc26_ = _loc23_.Copy()).§1v§(_loc24_);
                  if(!(_loc46_ && param3))
                  {
                     §§push(_loc5_);
                     loop3:
                     while(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(false);
                           while(true)
                           {
                              _loc30_ = §§pop();
                              if(!_loc45_)
                              {
                                 continue loop2;
                              }
                              §§push(§ !#§(_loc16_,_loc19_,_loc22_,_loc23_));
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc46_)
                                          {
                                             §§pop();
                                             if(_loc46_ && param2)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc45_)
                                             {
                                                break;
                                             }
                                             §§push(§ !#§(_loc17_,_loc20_,_loc22_,_loc23_));
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr372:
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop12:
                                                      while(_loc45_ || §&l§)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc45_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc45_ || param3))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(_loc46_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§pop();
                                                                     if(_loc45_)
                                                                     {
                                                                        §§push(§ !#§(_loc23_,_loc26_,_loc16_,_loc17_));
                                                                        if(_loc45_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc46_ && §&l§))
                                                                           {
                                                                              if(!_loc46_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc46_ && param2)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(true);
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc46_)
                                                                                             {
                                                                                                if(_loc45_ || param1)
                                                                                                {
                                                                                                   _loc30_ = §§pop();
                                                                                                   if(_loc45_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§ !#§(_loc22_,_loc25_,_loc16_,_loc17_));
                                                                                                            break loop15;
                                                                                                         }
                                                                                                         addr325:
                                                                                                      }
                                                                                                   }
                                                                                                   addr420:
                                                                                                   §§push(_loc21_);
                                                                                                   if(!(_loc46_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc45_ || param3)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   _loc21_ = §§pop();
                                                                                                   continue loop2;
                                                                                                   addr420:
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          addr311:
                                                                                       }
                                                                                       addr417:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       if(_loc46_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr420);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 addr299:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc45_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr420);
                                                                                 addr382:
                                                                              }
                                                                              §§goto(addr325);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc46_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     if(_loc45_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop11;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            continue loop9;
                                                            addr346:
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr417);
                                       }
                                       §§goto(addr372);
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     _loc27_ = §`l§(_loc16_,_loc17_,_loc22_,_loc23_);
                     if(!_loc46_)
                     {
                        §§push(Number(Math.round(§&&§(_loc16_,_loc17_,_loc22_,_loc23_))));
                        loop18:
                        while(true)
                        {
                           _loc28_ = §§pop();
                           loop19:
                           while(true)
                           {
                              _loc27_.rotation = _loc28_;
                              loop20:
                              while(true)
                              {
                                 §§push(true);
                                 loop21:
                                 while(true)
                                 {
                                    _loc29_ = §§pop();
                                    continue loop20;
                                    loop48:
                                    while(true)
                                    {
                                       if(_loc46_ && param1)
                                       {
                                          continue loop21;
                                       }
                                       _loc31_ = §§pop();
                                       loop47:
                                       while(true)
                                       {
                                          if(_loc45_ || param1)
                                          {
                                             addr587:
                                             if(_loc45_ || param2)
                                             {
                                                if(_loc46_ && param2)
                                                {
                                                   continue loop19;
                                                }
                                                addr672:
                                                §§push(_loc31_);
                                             }
                                             else
                                             {
                                                loop30:
                                                while(true)
                                                {
                                                   if(_loc45_)
                                                   {
                                                      §§push(false);
                                                      loop31:
                                                      while(true)
                                                      {
                                                         _loc29_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §§push(_loc29_);
                                                               loop34:
                                                               while(§§pop())
                                                               {
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     if(_loc46_ && param1)
                                                                     {
                                                                        break;
                                                                        addr624:
                                                                     }
                                                                     _loc31_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc14_ == null)
                                                                        {
                                                                           if(!_loc45_)
                                                                           {
                                                                              continue loop47;
                                                                           }
                                                                           if(_loc45_)
                                                                           {
                                                                              §§push(true);
                                                                              continue loop48;
                                                                           }
                                                                           addr644:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc27_.§ !$§);
                                                                           loop37:
                                                                           while(!(_loc46_ && param2))
                                                                           {
                                                                              §§push(§§pop().§`g§());
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_.§ !$§);
                                                                                 loop39:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§`g§());
                                                                                    loop40:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             §§push(_loc27_.§ !$§);
                                                                                             if(!_loc45_)
                                                                                             {
                                                                                                continue loop37;
                                                                                             }
                                                                                             §§push(§§pop().§`g§());
                                                                                             if(!_loc46_)
                                                                                             {
                                                                                                §§push(_loc14_.§ !$§);
                                                                                                if(_loc46_ && param2)
                                                                                                {
                                                                                                   continue loop39;
                                                                                                }
                                                                                                §§push(§§pop().§`g§());
                                                                                                if(_loc46_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   loop44:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc46_)
                                                                                                      {
                                                                                                         if(_loc45_)
                                                                                                         {
                                                                                                            addr509:
                                                                                                            if(!_loc46_)
                                                                                                            {
                                                                                                               §§push(§&&§(_loc8_,_loc9_,_loc11_,_loc12_));
                                                                                                               if(!_loc46_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc46_)
                                                                                                                     {
                                                                                                                        continue loop38;
                                                                                                                     }
                                                                                                                     if(_loc46_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!_loc45_)
                                                                                                                     {
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§]!Z§);
                                                                                                                     addr641:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(false);
                                                                                                                              break loop30;
                                                                                                                           }
                                                                                                                           addr642:
                                                                                                                        }
                                                                                                                        addr625:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(Math.abs(_loc28_) > §;",§)
                                                                                                                           {
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           continue loop33;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr519:
                                                                                                                  addr640:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc32_ = §§pop();
                                                                                                                  loop43:
                                                                                                                  while(Math.abs(_loc28_) < Math.abs(_loc32_))
                                                                                                                  {
                                                                                                                     if(_loc45_ || param2)
                                                                                                                     {
                                                                                                                        if(!_loc45_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!(_loc45_ || param2))
                                                                                                                        {
                                                                                                                           continue loop44;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(true);
                                                                                                                           if(!(_loc46_ && param2))
                                                                                                                           {
                                                                                                                              if(!_loc45_)
                                                                                                                              {
                                                                                                                                 continue loop48;
                                                                                                                              }
                                                                                                                              if(!_loc45_)
                                                                                                                              {
                                                                                                                                 break loop30;
                                                                                                                              }
                                                                                                                              _loc31_ = §§pop();
                                                                                                                              if(_loc45_ || param2)
                                                                                                                              {
                                                                                                                                 if(!_loc45_)
                                                                                                                                 {
                                                                                                                                    break loop40;
                                                                                                                                 }
                                                                                                                                 if(_loc45_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       addr482:
                                                                                                                                       break loop43;
                                                                                                                                    }
                                                                                                                                    break loop43;
                                                                                                                                 }
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break loop35;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc14_ = _loc27_;
                                                                                                                     _loc8_ = _loc16_;
                                                                                                                     _loc9_ = _loc17_;
                                                                                                                     _loc10_ = _loc18_;
                                                                                                                     _loc11_ = _loc22_;
                                                                                                                     _loc12_ = _loc23_;
                                                                                                                     _loc13_ = _loc24_;
                                                                                                                     break loop34;
                                                                                                                  }
                                                                                                                  §§goto(addr672);
                                                                                                                  §§goto(addr509);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      addr562:
                                                                                                      §§goto(addr482);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr672);
                                                                                             }
                                                                                             §§goto(addr519);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr641);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc45_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          if(!_loc45_)
                                                                                          {
                                                                                             break loop35;
                                                                                          }
                                                                                          if(!_loc46_)
                                                                                          {
                                                                                             continue loop31;
                                                                                          }
                                                                                          continue loop34;
                                                                                       }
                                                                                       continue loop47;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr640);
                                                                              §§goto(addr533);
                                                                           }
                                                                           addr533:
                                                                           addr639:
                                                                        }
                                                                        §§goto(addr625);
                                                                        continue loop47;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr674);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr420);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr642);
                                                }
                                                while(true)
                                                {
                                                   _loc29_ = §§pop();
                                                   §§goto(addr644);
                                                }
                                             }
                                             §§goto(addr673);
                                          }
                                          §§goto(addr624);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr456);
                  }
                  §§goto(addr385);
               }
               if(_loc46_ && param2)
               {
                  continue;
               }
            }
            §§goto(addr724);
         }
         if(_loc45_ || param2)
         {
            if(_loc14_ != null)
            {
               addr739:
               _loc33_ = _loc14_.§ !$§;
               §§push(§§findproperty(§2">§));
               §§push(_loc8_);
               §§push(_loc14_.§@!7§);
               §§push(_loc14_.rotation);
               if(_loc45_)
               {
                  §§push(§§pop() / 180);
                  if(!(_loc46_ && param2))
                  {
                     addr760:
                     §§push(§§pop() * Math.PI);
                  }
                  _loc34_ = §§pop().§2">§(§§pop(),§§pop(),§§pop());
                  §§push(§§findproperty(§2">§));
                  §§push(_loc9_);
                  §§push(_loc14_.§@!7§);
                  §§push(_loc14_.rotation);
                  if(_loc45_ || §&l§)
                  {
                     §§push(§§pop() / 180);
                     if(_loc45_)
                     {
                        §§push(§§pop() * Math.PI);
                     }
                  }
                  _loc35_ = §§pop().§2">§(§§pop(),§§pop(),§§pop());
                  if(_loc45_ || param3)
                  {
                     _loc34_.§1v§(_loc33_);
                     while(true)
                     {
                        _loc35_.§1v§(_loc33_);
                        loop54:
                        while(true)
                        {
                           §§push(b2Math.§]H§(_loc34_,_loc11_));
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr936:
                              while(true)
                              {
                                 _loc36_ = §§pop();
                                 continue loop54;
                              }
                              addr913:
                              if(_loc46_ && param1)
                              {
                                 continue;
                              }
                              _loc38_ = §§pop();
                              loop63:
                              while(true)
                              {
                                 §§push(b2Math.§]H§(_loc35_,_loc12_));
                                 loop64:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop65:
                                    while(!_loc46_)
                                    {
                                       _loc39_ = §§pop();
                                       loop66:
                                       for(; !_loc46_; while(true)
                                       {
                                          if(_loc46_ && param2)
                                          {
                                             continue loop66;
                                          }
                                          §§push(_loc36_);
                                          if(_loc45_)
                                          {
                                             if(!_loc46_)
                                             {
                                                addr804:
                                                §§push(Number(§§pop()));
                                                if(_loc45_)
                                                {
                                                   if(_loc46_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   _loc42_ = §§pop();
                                                   if(_loc46_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr816);
                                                }
                                                §§goto(addr859);
                                             }
                                             §§goto(addr858);
                                          }
                                          §§goto(addr804);
                                       },continue loop65)
                                       {
                                          §§push(_loc36_);
                                          if(!(_loc46_ && param1))
                                          {
                                             §§push(_loc39_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr879:
                                                addr928:
                                                while(!_loc46_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                while(true)
                                                {
                                                   _loc37_ = §§pop();
                                                   addr929:
                                                   loop60:
                                                   while(true)
                                                   {
                                                      §§push(b2Math.§]H§(_loc35_,_loc11_));
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr911:
                                                         while(!_loc46_)
                                                         {
                                                            §§goto(addr913);
                                                         }
                                                         §§goto(addr936);
                                                         addr882:
                                                         loop69:
                                                         for(; !(_loc46_ && param1); if(_loc46_ && param2)
                                                         {
                                                            continue;
                                                         },if(_loc45_)
                                                         {
                                                            continue loop64;
                                                         },§§goto(addr879))
                                                         {
                                                            _loc40_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc45_)
                                                               {
                                                                  continue loop60;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc37_);
                                                                  if(!_loc46_)
                                                                  {
                                                                     continue loop69;
                                                                  }
                                                                  addr858:
                                                                  addr858:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr859:
                                                                     while(true)
                                                                     {
                                                                        _loc41_ = §§pop();
                                                                        continue loop66;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr879);
                                                               addr816:
                                                               if(!(_loc45_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc46_ && param1)
                                                               {
                                                                  continue loop54;
                                                               }
                                                               if(false)
                                                               {
                                                                  §§goto(addr832);
                                                               }
                                                               else
                                                               {
                                                                  _loc43_ = null;
                                                                  if(_loc45_)
                                                                  {
                                                                     §§push(_loc40_);
                                                                     if(!(_loc46_ && param1))
                                                                     {
                                                                        §§push(_loc41_);
                                                                        if(_loc45_ || §&l§)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              if(_loc45_)
                                                                              {
                                                                                 §§push(_loc36_);
                                                                                 if(_loc45_ || param1)
                                                                                 {
                                                                                    §§push(§ !0§);
                                                                                    if(!(_loc46_ && param3))
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(_loc45_ || §&l§)
                                                                                          {
                                                                                             §§push(_loc11_.Copy());
                                                                                             if(_loc45_)
                                                                                             {
                                                                                                (_loc43_ = §§pop()).§5!]§(_loc34_);
                                                                                                addr1018:
                                                                                                §§push(_loc39_);
                                                                                                if(!(_loc46_ && param3))
                                                                                                {
                                                                                                   addr1026:
                                                                                                   §§push(§ !0§);
                                                                                                   if(!(_loc46_ && §&l§))
                                                                                                   {
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      if(!_loc46_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc45_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc45_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!_loc46_)
                                                                                                                  {
                                                                                                                     §§push(_loc39_);
                                                                                                                     if(!_loc46_)
                                                                                                                     {
                                                                                                                        addr1049:
                                                                                                                        §§push(_loc36_);
                                                                                                                        if(_loc45_)
                                                                                                                        {
                                                                                                                           addr1052:
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           if(_loc45_ || param2)
                                                                                                                           {
                                                                                                                              addr1060:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc46_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_.Copy());
                                                                                                                                    if(!_loc46_)
                                                                                                                                    {
                                                                                                                                       (_loc43_ = §§pop()).§5!]§(_loc35_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1172);
                                                                                                                                 }
                                                                                                                                 addr1138:
                                                                                                                                 §§push(_loc11_.Copy());
                                                                                                                                 if(_loc45_)
                                                                                                                                 {
                                                                                                                                    addr1142:
                                                                                                                                    (_loc43_ = §§pop()).§5!]§(_loc35_);
                                                                                                                                    addr1147:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    §§push(_loc43_ == null);
                                                                                                                                    if(!_loc46_)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§2!k§ = §§pop();
                                                                                                                                    if(_loc45_)
                                                                                                                                    {
                                                                                                                                       addr1157:
                                                                                                                                       if(_loc43_ != null)
                                                                                                                                       {
                                                                                                                                          if(_loc45_ || param1)
                                                                                                                                          {
                                                                                                                                             addr1167:
                                                                                                                                             _loc33_.§1v§(_loc43_);
                                                                                                                                             addr1170:
                                                                                                                                             addr1172:
                                                                                                                                             (_loc44_ = §§pop()).Normalize();
                                                                                                                                             if(_loc45_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(_loc44_);
                                                                                                                                                §§push(b2Settings.b2_linearSlop);
                                                                                                                                                if(_loc45_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * 2);
                                                                                                                                                }
                                                                                                                                                §§pop().§>!t§(§§pop());
                                                                                                                                                _loc33_.§1v§(_loc44_);
                                                                                                                                                addr1233:
                                                                                                                                                if(_loc46_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1233);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else if(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1235);
                                                                                                                                             }
                                                                                                                                             _loc14_.§6!,§ = _loc33_;
                                                                                                                                             return _loc14_;
                                                                                                                                             §§push(_loc13_.Copy());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1170);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1167);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1172);
                                                                                                                                 §§goto(addr1172);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr1135:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc45_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr1138);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1167);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1147);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr1112:
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           if(!(_loc46_ && param1))
                                                                                                                           {
                                                                                                                              addr1121:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc45_ || param3)
                                                                                                                                 {
                                                                                                                                    addr1129:
                                                                                                                                    §§pop();
                                                                                                                                    if(!_loc46_)
                                                                                                                                    {
                                                                                                                                       addr1133:
                                                                                                                                       §§push(_loc38_ < _loc37_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1167);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1135);
                                                                                                                           }
                                                                                                                           §§goto(addr1129);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1133);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1087:
                                                                                                                     §§push(_loc12_.Copy());
                                                                                                                     if(_loc45_)
                                                                                                                     {
                                                                                                                        (_loc43_ = §§pop()).§5!]§(_loc34_);
                                                                                                                        addr1096:
                                                                                                                        §§push(_loc38_);
                                                                                                                        if(_loc45_ || param2)
                                                                                                                        {
                                                                                                                           addr1104:
                                                                                                                           §§push(§ !0§);
                                                                                                                           if(_loc45_ || param1)
                                                                                                                           {
                                                                                                                              §§goto(addr1112);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1133);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1142);
                                                                                                               }
                                                                                                               §§goto(addr1129);
                                                                                                            }
                                                                                                            §§goto(addr1060);
                                                                                                         }
                                                                                                         §§goto(addr1121);
                                                                                                      }
                                                                                                      §§goto(addr1129);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr1084:
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         if(!_loc46_)
                                                                                                         {
                                                                                                            §§goto(addr1087);
                                                                                                         }
                                                                                                         §§goto(addr1157);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1096);
                                                                                                }
                                                                                                §§goto(addr1104);
                                                                                             }
                                                                                             §§goto(addr1172);
                                                                                          }
                                                                                          §§goto(addr1138);
                                                                                       }
                                                                                       §§goto(addr1018);
                                                                                    }
                                                                                    §§goto(addr1084);
                                                                                 }
                                                                                 §§goto(addr1049);
                                                                              }
                                                                              §§goto(addr1167);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc37_);
                                                                              if(_loc45_ || param1)
                                                                              {
                                                                                 §§push(§ !0§);
                                                                                 if(!_loc46_)
                                                                                 {
                                                                                    §§goto(addr1084);
                                                                                 }
                                                                                 §§goto(addr1112);
                                                                              }
                                                                           }
                                                                           §§goto(addr1133);
                                                                        }
                                                                        §§goto(addr1052);
                                                                     }
                                                                     §§goto(addr1026);
                                                                  }
                                                                  §§goto(addr1138);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr878:
                                          }
                                          §§goto(addr882);
                                       }
                                       continue loop63;
                                    }
                                    addr927:
                                    while(true)
                                    {
                                       §§goto(addr928);
                                    }
                                    if(!(_loc45_ || §&l§))
                                    {
                                       continue;
                                    }
                                    if(!_loc46_)
                                    {
                                       §§push(_loc38_);
                                       if(_loc45_)
                                       {
                                          §§goto(addr858);
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr878);
                                    }
                                    §§goto(addr911);
                                 }
                              }
                           }
                        }
                        if(_loc46_ && param3)
                        {
                           continue;
                        }
                        §§goto(addr927);
                        §§push(b2Math.§]H§(_loc34_,_loc12_));
                     }
                  }
                  §§goto(addr929);
               }
               §§goto(addr760);
            }
            addr1235:
            return null;
         }
         §§goto(addr739);
      }
      
      public static function §2">§(param1:b2Vec2, param2:b2Vec2, param3:Number) : b2Vec2
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         §§push(param1.x);
         if(!_loc12_)
         {
            §§push(§§pop() - param2.x);
            if(_loc13_)
            {
               addr26:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param1.y);
            if(_loc13_)
            {
               §§push(§§pop() - param2.y);
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc13_ || param2)
            {
               §§push(_loc4_);
               if(!(_loc12_ && param3))
               {
                  §§push(0);
                  if(!(_loc12_ && param1))
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc12_ && §&l§))
                     {
                        if(§§pop())
                        {
                           if(!_loc12_)
                           {
                              addr74:
                              §§pop();
                              if(_loc13_ || param2)
                              {
                                 §§push(_loc5_);
                                 if(!_loc12_)
                                 {
                                    addr87:
                                    if(§§pop() == 0)
                                    {
                                       if(_loc13_ || param1)
                                       {
                                          §§goto(addr105);
                                       }
                                    }
                                 }
                                 addr118:
                                 var _loc6_:* = §§pop();
                                 var _loc7_:Number;
                                 §§push(_loc7_ = Math.atan2(_loc4_,_loc5_));
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(§§pop() + param3);
                                    if(_loc13_)
                                    {
                                       addr137:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(Math.sin(_loc8_) * _loc6_);
                                    if(!(_loc12_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc9_:* = §§pop();
                                    §§push(Math.cos(_loc8_) * _loc6_);
                                    if(_loc13_ || param3)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(param2.x);
                                    if(_loc13_ || §&l§)
                                    {
                                       §§push(_loc9_);
                                       if(!_loc12_)
                                       {
                                          §§goto(addr181);
                                       }
                                       §§goto(addr200);
                                    }
                                    addr181:
                                    §§push(§§pop() + §§pop());
                                    §§push(param2.y);
                                    if(!(_loc12_ && param3))
                                    {
                                       addr200:
                                       §§push(§§pop() + _loc10_);
                                    }
                                    return new §§pop().b2Vec2(§§pop(),§§pop());
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr118);
                              §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                           }
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr87);
               }
               §§goto(addr118);
            }
            addr105:
            return param1.Copy();
         }
         §§goto(addr26);
      }
      
      public static function §0s§(param1:b2PolygonShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §@" §
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:§@" § = null;
         var _loc5_:b2Vec2 = param4.position.Copy();
         §§push(param3.§4!P§());
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§-"=§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:int = 0;
         loop0:
         while(_loc9_ < _loc7_.length)
         {
            _loc10_ = b2Math.§>!C§(param2,_loc7_[_loc9_]);
            _loc11_ = b2Math.§>!C§(param2,_loc7_[_loc9_ + 1 < _loc7_.length ? _loc9_ + 1 : 0]);
            §§push((_loc12_ = §'!S§(_loc10_,_loc11_,_loc5_).§ !$§).§`g§());
            if(!_loc16_)
            {
               §§push(_loc6_);
               if(!(_loc16_ && §&l§))
               {
                  §§push(§§pop() - §§pop());
                  if(!_loc16_)
                  {
                     addr104:
                     §§push(_loc12_.§`g§());
                     if(_loc15_ || param3)
                     {
                        addr113:
                        §§push(§§pop() / §§pop());
                        if(!(_loc16_ && param3))
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc16_ && param2))
                           {
                              addr139:
                              _loc13_ = §§pop();
                              if(!(_loc16_ && param1))
                              {
                                 §§push(_loc12_);
                                 §§push(_loc12_.x);
                                 if(!(_loc16_ && param3))
                                 {
                                    §§push(§§pop() * _loc13_);
                                 }
                                 §§pop().x = §§pop();
                                 if(_loc15_ || param3)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc12_);
                                       §§push(_loc12_.y);
                                       if(!(_loc16_ && param3))
                                       {
                                          §§push(§§pop() * _loc13_);
                                       }
                                       §§pop().y = §§pop();
                                       if(_loc15_ || §&l§)
                                       {
                                          §§push(_loc8_ == null);
                                          if(_loc15_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc15_ || param2)
                                                {
                                                   continue;
                                                }
                                             }
                                             addr221:
                                             if(§§pop())
                                             {
                                                if(!_loc16_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             _loc9_++;
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              _loc8_ = _loc12_;
                              §§goto(addr221);
                           }
                        }
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr139);
               }
               §§goto(addr113);
            }
            §§goto(addr104);
         }
         if(!_loc16_)
         {
            if(_loc8_ == null)
            {
               return null;
            }
         }
         (_loc14_ = new §@" §()).§ !$§ = _loc8_;
         if(!_loc16_)
         {
            _loc14_.§6!,§ = _loc8_;
         }
         do
         {
            _loc14_.rotation = 0;
         }
         while(_loc16_);
         
         return _loc14_;
      }
      
      public static function §4!<§(param1:b2CircleShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : §@" §
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2Vec2 = param2.position.Copy();
         var _loc7_:b2Vec2;
         var _loc6_:b2Vec2;
         (_loc7_ = (_loc6_ = param4.position.Copy()).Copy()).§5!]§(_loc5_);
         §§push(_loc7_.§`g§());
         if(!(_loc10_ && param3))
         {
            §§push(param1.§4!P§());
            if(!(_loc10_ && §&l§))
            {
               §§push(§§pop() - §§pop());
               if(!(_loc10_ && §&l§))
               {
                  §§push(param3.§4!P§());
                  if(_loc11_ || param3)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc11_)
                     {
                        addr84:
                        addr72:
                        §§push(§§pop() / _loc7_.§`g§());
                        if(_loc11_ || §&l§)
                        {
                        }
                        addr93:
                        var _loc8_:* = §§pop();
                        if(_loc11_ || param1)
                        {
                           §§push(_loc7_);
                           §§push(_loc7_.x);
                           if(!(_loc10_ && param1))
                           {
                              §§push(§§pop() * _loc8_);
                           }
                           §§pop().x = §§pop();
                           if(!_loc10_)
                           {
                              addr116:
                              §§push(_loc7_);
                              §§push(_loc7_.y);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() * _loc8_);
                              }
                              §§pop().y = §§pop();
                           }
                           var _loc9_:§@" §;
                           (_loc9_ = new §@" §()).§ !$§ = _loc7_;
                           if(!(_loc10_ && §&l§))
                           {
                              _loc9_.§6!,§ = _loc7_;
                              do
                              {
                                 _loc9_.rotation = 0;
                              }
                              while(_loc10_ && §&l§);
                              
                           }
                           return _loc9_;
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr93);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr84);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr84);
      }
      
      public static function §`l§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : §@" §
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:§@" § = null;
         var _loc7_:§@" § = null;
         var _loc8_:§@" § = null;
         var _loc9_:§@" § = null;
         var _loc10_:§@" § = null;
         var _loc11_:§@" § = null;
         var _loc5_:b2Vec2;
         if(_loc5_ = § !#§(param1,param2,param3,param4))
         {
            (_loc6_ = new §@" §()).§ !$§ = new b2Vec2(0,0);
            if(!_loc13_)
            {
               _loc6_.§@!7§ = _loc5_;
               if(_loc13_ && param3)
               {
                  addr68:
                  _loc7_ = §'!S§(param1,param2,param3,false);
                  _loc8_ = §'!S§(param1,param2,param4,false);
                  _loc9_ = §'!S§(param3,param4,param1,true);
                  _loc10_ = §'!S§(param3,param4,param2,true);
                  _loc11_ = _loc7_;
                  if(!_loc13_)
                  {
                     §§push(_loc8_.§ !$§);
                     if(_loc12_)
                     {
                        §§push(§§pop().§`g§());
                        if(_loc12_ || param1)
                        {
                           §§push(_loc11_.§ !$§);
                           if(_loc12_)
                           {
                              §§push(§§pop().§`g§());
                              if(_loc12_ || param3)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       _loc11_ = _loc8_;
                                    }
                                    §§goto(addr172);
                                 }
                                 §§push(_loc9_.§ !$§);
                                 if(_loc12_ || param1)
                                 {
                                    addr154:
                                    §§push(§§pop().§`g§());
                                    if(!_loc13_)
                                    {
                                       §§push(_loc11_.§ !$§);
                                       if(!(_loc13_ && param1))
                                       {
                                          §§push(§§pop().§`g§());
                                          if(!_loc13_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc13_)
                                                {
                                                   addr172:
                                                   _loc11_ = _loc9_;
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr192);
                                             }
                                             addr175:
                                             §§goto(addr191);
                                          }
                                          addr191:
                                          §§goto(addr190);
                                       }
                                       addr190:
                                       §§goto(addr188);
                                    }
                                    addr188:
                                    §§goto(addr177);
                                 }
                                 addr177:
                                 if(_loc10_.§ !$§.§`g§() < _loc11_.§ !$§.§`g§())
                                 {
                                    addr192:
                                    _loc11_ = _loc10_;
                                 }
                                 return _loc11_;
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr172);
               }
            }
            return _loc6_;
         }
         §§goto(addr68);
      }
      
      public static function § !#§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : b2Vec2
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:b2Vec2 = null;
         §§push(param4.y);
         if(_loc12_)
         {
            §§push(param3.y);
            if(_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(_loc12_)
               {
                  addr31:
                  §§push(param2.x);
                  if(!(_loc11_ && param2))
                  {
                     §§push(param1.x);
                     if(!(_loc11_ && param1))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc11_)
                        {
                           addr52:
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              addr55:
                              §§push(param4.x);
                              if(_loc12_ || §&l§)
                              {
                                 addr64:
                                 §§push(param3.x);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc12_ || §&l§)
                                    {
                                       §§push(param2.y);
                                       if(!_loc11_)
                                       {
                                          addr80:
                                          §§push(§§pop() - param1.y);
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(_loc11_ && param2)
                                       {
                                       }
                                       addr96:
                                       var _loc5_:* = §§pop();
                                       if(!(_loc11_ && §&l§))
                                       {
                                          if(§§pop() == 0)
                                          {
                                             if(_loc12_)
                                             {
                                                return null;
                                             }
                                          }
                                          §§push(param4.x);
                                          if(!_loc11_)
                                          {
                                             §§push(param3.x);
                                             if(_loc12_ || param1)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc12_ || param1)
                                                {
                                                   addr131:
                                                   §§push(param1.y);
                                                   if(!(_loc11_ && param3))
                                                   {
                                                      §§push(param3.y);
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc12_ || param3)
                                                         {
                                                            addr157:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc12_)
                                                            {
                                                               addr160:
                                                               §§push(param4.y);
                                                               if(!_loc12_)
                                                               {
                                                               }
                                                               addr184:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  addr192:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc6_:* = §§pop();
                                                               §§push(param2.x);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(param1.x);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc12_ || §&l§)
                                                                     {
                                                                        §§push(param1.y);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§push(param3.y);
                                                                           if(_loc12_ || param1)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr226:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    addr244:
                                                                                    §§push(param2.y);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(param1.y);
                                                                                       if(_loc12_ || §&l§)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr260:
                                                                                             §§push(param1.x);
                                                                                             if(!(_loc11_ && param2))
                                                                                             {
                                                                                                addr269:
                                                                                                §§push(§§pop() - param3.x);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       addr281:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc7_:* = §§pop();
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() / _loc5_);
                                                                                    if(_loc12_ || param3)
                                                                                    {
                                                                                       addr295:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc8_:* = §§pop();
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() / _loc5_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr304:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc9_:* = §§pop();
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          loop0:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!(_loc11_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() >= §§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop7:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc12_ || param3)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop6:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc12_ || §&l§)
                                                                                                                     {
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr371:
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           while(!_loc12_)
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                              §§goto(addr371);
                                                                                                                           }
                                                                                                                           loop2:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop3:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          addr405:
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          if(!_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc11_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() >= §§pop());
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr328:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc12_ || param2)
                                                                                                                                                      {
                                                                                                                                                         break loop3;
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr372);
                                                                                                                                                }
                                                                                                                                                break loop2;
                                                                                                                                             }
                                                                                                                                             addr406:
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          §§goto(addr406);
                                                                                                                                          §§push(1);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr408:
                                                                                                                                    §§push(§§findproperty(b2Vec2));
                                                                                                                                    §§push(param1.x);
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc11_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(param2.x);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(param1.x);
                                                                                                                                             if(_loc12_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc11_ && §&l§))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc12_ || param1)
                                                                                                                                                   {
                                                                                                                                                      addr451:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      §§push(param1.y);
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr482);
                                                                                                                                                }
                                                                                                                                                §§goto(addr458);
                                                                                                                                             }
                                                                                                                                             §§goto(addr467);
                                                                                                                                          }
                                                                                                                                          §§goto(addr458);
                                                                                                                                       }
                                                                                                                                       addr482:
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr458:
                                                                                                                                          §§push(param2.y);
                                                                                                                                          if(_loc12_ || param2)
                                                                                                                                          {
                                                                                                                                             addr467:
                                                                                                                                             §§push(§§pop() - param1.y);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr451);
                                                                                                                                 }
                                                                                                                                 §§goto(addr328);
                                                                                                                              }
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || §&l§)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc12_ || param1)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          §§goto(addr405);
                                                                                                                                          §§push(_loc9_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr408);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           addr372:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              return null;
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                           addr374:
                                                                                                                        }
                                                                                                                        §§goto(addr406);
                                                                                                                     }
                                                                                                                     §§goto(addr405);
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr403:
                                                                                                            }
                                                                                                            §§goto(addr408);
                                                                                                         }
                                                                                                         addr395:
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr403);
                                                                                    }
                                                                                    §§goto(addr304);
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr260);
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr226);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§push(param3.y);
                                                         if(_loc12_ || param2)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc12_)
                                                            {
                                                               §§push(param1.x);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop() - param3.x);
                                                               }
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                                 §§goto(addr80);
                              }
                              §§push(§§pop() - §§pop());
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr96);
                           §§push(§§pop());
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr96);
               }
               §§goto(addr55);
            }
            §§goto(addr52);
         }
         §§goto(addr31);
      }
      
      public static function §'!S§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:Boolean = false) : §@" §
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:* = NaN;
         §§push(param2.x);
         if(!_loc10_)
         {
            §§push(§§pop() - param1.x);
            if(!_loc10_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(_loc11_ || §&l§)
            {
               §§push(§§pop() - param1.y);
               if(_loc11_ || param2)
               {
                  addr49:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               var _loc7_:b2Vec2 = null;
               if(_loc11_)
               {
                  §§push(_loc5_);
                  if(_loc11_ || param1)
                  {
                     §§push(0);
                     if(_loc11_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc10_)
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 addr74:
                                 §§pop();
                                 if(_loc11_ || §&l§)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc10_ && §&l§))
                                    {
                                       §§push(0);
                                       if(!(_loc10_ && param3))
                                       {
                                          addr99:
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc11_)
                                             {
                                                _loc7_ = param1;
                                             }
                                             else
                                             {
                                                addr248:
                                                _loc7_ = param2;
                                             }
                                             addr290:
                                             var _loc8_:§@" §;
                                             §§push(_loc8_ = new §@" §());
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(param3.x);
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc11_)
                                                {
                                                   addr310:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(param3.y);
                                                   if(!(_loc10_ && §&l§))
                                                   {
                                                      addr319:
                                                      §§push(§§pop() - _loc7_.y);
                                                   }
                                                   §§pop().§ !$§ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(param4)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc8_.§ !$§.§!!]§();
                                                            addr379:
                                                            while(true)
                                                            {
                                                            }
                                                            addr356:
                                                            if(!(_loc11_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                            return _loc8_;
                                                            addr373:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§pop().§@!7§ = !!param4 ? param3 : _loc7_;
                                                            if(_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr310);
                                          }
                                          else
                                          {
                                             §§push(param3.x);
                                             if(_loc11_)
                                             {
                                                §§push(param1.x);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc11_ || §&l§)
                                                   {
                                                      addr122:
                                                      §§push(_loc5_);
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc11_ || param3)
                                                         {
                                                            §§push(param3.y);
                                                            if(_loc11_)
                                                            {
                                                               §§push(param1.y);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc11_ || §&l§)
                                                                  {
                                                                     addr159:
                                                                     §§push(_loc6_);
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        addr167:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!(_loc10_ && param2))
                                                                              {
                                                                                 addr191:
                                                                                 §§push(_loc5_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr197:
                                                                                       §§push(_loc6_);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr202:
                                                                                          §§push(§§pop() + §§pop() * _loc6_);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr205:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr246:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc11_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                if(§§pop() > 1)
                                                                                                {
                                                                                                   §§goto(addr248);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§§findproperty(b2Vec2));
                                                                                                   §§push(param1.x);
                                                                                                   if(_loc11_ || param3)
                                                                                                   {
                                                                                                      §§push(_loc9_);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr271:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(param1.y);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(_loc9_);
                                                                                                                  if(!(_loc10_ && §&l§))
                                                                                                                  {
                                                                                                                     addr284:
                                                                                                                     §§push(§§pop() * _loc6_);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            _loc7_ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                                            §§goto(addr290);
                                                                                                         }
                                                                                                         §§goto(addr284);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr271);
                                                                                                }
                                                                                             }
                                                                                             addr225:
                                                                                             §§push(0);
                                                                                             if(!(_loc10_ && §&l§))
                                                                                             {
                                                                                                addr233:
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      addr241:
                                                                                                      _loc7_ = param1;
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr248);
                                                                                                   }
                                                                                                   §§goto(addr290);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr246);
                                                                                                   §§push(_loc9_);
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                             §§goto(addr246);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    _loc9_ = §§pop();
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    §§goto(addr246);
                                                                                 }
                                                                                 §§goto(addr202);
                                                                              }
                                                                              §§goto(addr205);
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr197);
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr246);
                                                }
                                             }
                                             §§goto(addr205);
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr241);
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr246);
               }
               §§goto(addr248);
            }
            §§goto(addr49);
         }
         §§goto(addr28);
      }
      
      public static function §&&§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2, param5:Boolean = true) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§findproperty(§,3§));
         §§push(§§findproperty(b2Vec2));
         §§push(param2.x);
         if(_loc7_ || param1)
         {
            §§push(param1.x);
            if(_loc7_)
            {
               §§goto(addr43);
            }
            §§goto(addr47);
         }
         addr43:
         §§push(§§pop() - §§pop());
         §§push(param2.y);
         if(_loc7_)
         {
            addr47:
            §§push(§§pop() - param1.y);
         }
         return §§pop().§,3§(new §§pop().b2Vec2(§§pop(),§§pop()),new b2Vec2(param4.x - param3.x,param4.y - param3.y),param5);
      }
      
      public static function §,3§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = true) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.y,param2.x);
         var _loc5_:Number;
         §§push(_loc5_ = Math.atan2(param1.y,param1.x));
         if(_loc8_)
         {
            §§push(§§pop() - _loc4_);
            if(!_loc7_)
            {
               addr40:
               §§push(§§pop() * 180);
               if(_loc8_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc8_ || §&l§)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param3)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!(_loc7_ && §&l§))
                     {
                        §§push(90);
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 §§push(-90);
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 addr139:
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    break;
                                 }
                                 §§goto(addr178);
                              }
                              break;
                           }
                           if(!(_loc7_ && param3))
                           {
                              §§push(_loc6_);
                              while(true)
                              {
                                 §§push(180);
                                 addr178:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    break loop1;
                                 }
                              }
                              addr177:
                           }
                           while(true)
                           {
                              §§goto(addr59);
                           }
                           §§goto(addr178);
                        }
                        while(!_loc7_)
                        {
                           §§goto(addr145);
                           §§push(Number(§§pop()));
                        }
                        break;
                     }
                     break;
                     if(!(_loc8_ || param2))
                     {
                        continue;
                     }
                     §§push(_loc6_);
                     if(_loc8_ || param1)
                     {
                        if(!(_loc7_ && param1))
                        {
                           §§goto(addr139);
                           §§push(180);
                        }
                        while(true)
                        {
                           _loc6_ = §§pop();
                           §§goto(addr181);
                        }
                        addr180:
                     }
                     §§goto(addr145);
                  }
                  while(true)
                  {
                     §§goto(addr180);
                  }
                  addr149:
               }
               addr59:
               loop0:
               while(true)
               {
                  §§push(_loc6_);
                  if(!(_loc7_ && param1))
                  {
                     if(!_loc8_)
                     {
                        break loop2;
                     }
                     if(!(_loc7_ && §&l§))
                     {
                        break;
                     }
                     §§goto(addr177);
                  }
                  addr145:
                  while(true)
                  {
                     _loc6_ = §§pop();
                     addr146:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr149);
         }
         §§goto(addr40);
      }
      
      public static function §5k§(param1:b2Body, param2:b2Body) : Rectangle
      {
         var _loc3_:b2Shape = param1.GetFixtureList().GetShape().Copy();
         var _loc4_:b2Transform = param1.§?^§();
         var _loc5_:b2Shape = param2.GetFixtureList().GetShape().Copy();
         var _loc6_:b2Transform = param2.§?^§();
         var _loc7_:Rectangle = §&l§.§5!4§(_loc3_,_loc4_,§&l§.§]!Z§);
         var _loc8_:Rectangle = §&l§.§5!4§(_loc5_,_loc6_,§&l§.§]!Z§);
         return _loc7_.intersection(_loc8_);
      }
      
      public static function §]!&§(param1:b2Body, param2:Number = 0) : Rectangle
      {
         var _loc3_:b2Shape = param1.GetFixtureList().GetShape().Copy();
         var _loc4_:b2Transform = param1.§?^§();
         return §&l§.§5!4§(_loc3_,_loc4_,param2);
      }
      
      public static function §5!4§(param1:b2Shape, param2:b2Transform, param3:Number = 0) : Rectangle
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
         if(!(_loc14_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(_loc13_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc14_)
         {
            §§push(param1 is b2CircleShape);
            if(_loc13_)
            {
               if(§§pop())
               {
                  if(_loc13_ || §&l§)
                  {
                     §§push((param1 as b2CircleShape).§4!P§());
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc8_ = §§pop();
                     if(_loc13_)
                     {
                        §§push((_loc9_ = param2.position).x);
                        if(!(_loc14_ && param3))
                        {
                           §§push(_loc8_);
                           if(_loc13_ || param3)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc13_ || param2)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc14_ && §&l§))
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc13_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc14_)
                                          {
                                             §§push(_loc9_.x);
                                             if(_loc13_)
                                             {
                                                §§push(_loc8_);
                                                if(!_loc14_)
                                                {
                                                   addr136:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc13_ || §&l§)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc13_)
                                                      {
                                                         addr159:
                                                         §§push(Number(§§pop()));
                                                         if(_loc13_ || §&l§)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               §§push(_loc9_.x);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc13_ || §&l§)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        addr392:
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§push(_loc9_.x);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       loop11:
                                                                                       while(!(_loc14_ && §&l§))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc13_ || §&l§)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                loop33:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr374:
                                                                                                      addr376:
                                                                                                      loop18:
                                                                                                      while(!_loc13_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            addr408:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr328:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  §§push(_loc8_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     addr335:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        addr336:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           addr337:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc13_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.y);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    addr340:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc14_ && param3))
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    addr365:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc9_.y);
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(_loc13_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!(_loc14_ && §&l§))
                                                                                                                  {
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     if(_loc13_ || param1)
                                                                                                                     {
                                                                                                                        if(!(_loc14_ && §&l§))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc14_ && param3))
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 addr218:
                                                                                                                                 if(!(_loc14_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   continue loop15;
                                                                                                                                                }
                                                                                                                                                if(_loc13_ || param3)
                                                                                                                                                {
                                                                                                                                                   if(true)
                                                                                                                                                   {
                                                                                                                                                      break loop14;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr328);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             return new Rectangle(_loc4_ - param3,_loc5_ - param3,_loc6_ - _loc4_ + param3,_loc7_ - _loc5_ + param3);
                                                                                                                                             addr519:
                                                                                                                                             addr317:
                                                                                                                                          }
                                                                                                                                          if(_loc13_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_.y);
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   addr250:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc14_ && §&l§))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc14_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr307:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc14_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr335);
                                                                                                                                                            }
                                                                                                                                                            addr307:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr405:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               break loop15;
                                                                                                                                                            }
                                                                                                                                                            addr405:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc14_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_ || param2)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr307);
                                                                                                                                                      }
                                                                                                                                                      addr306:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop15;
                                                                                                                                                            }
                                                                                                                                                            addr403:
                                                                                                                                                         }
                                                                                                                                                         break loop15;
                                                                                                                                                      }
                                                                                                                                                      addr400:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr365);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr408);
                                                                                                                                          §§goto(addr340);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc13_)
                                                                                                                                          {
                                                                                                                                             addr291:
                                                                                                                                             if(_loc14_ && param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc13_ || param2)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr307);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr306);
                                                                                                                                    }
                                                                                                                                    §§goto(addr337);
                                                                                                                                 }
                                                                                                                                 §§goto(addr336);
                                                                                                                              }
                                                                                                                              §§goto(addr250);
                                                                                                                           }
                                                                                                                           §§goto(addr307);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr399:
                                                                                                                        }
                                                                                                                        §§goto(addr400);
                                                                                                                     }
                                                                                                                     §§goto(addr334);
                                                                                                                  }
                                                                                                                  §§goto(addr218);
                                                                                                               }
                                                                                                               §§goto(addr374);
                                                                                                            }
                                                                                                            §§goto(addr291);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr407);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr519);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr408);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr405);
                                                                                 §§push(_loc6_);
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr405);
                                                               addr170:
                                                            }
                                                            §§goto(addr408);
                                                         }
                                                         §§goto(addr351);
                                                         addr147:
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr170);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          if(_loc13_ || §&l§)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc14_)
                                             {
                                                §§goto(addr159);
                                             }
                                             §§goto(addr376);
                                          }
                                       }
                                       §§goto(addr335);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr403);
                           }
                           §§goto(addr334);
                        }
                        §§goto(addr363);
                     }
                     else
                     {
                        addr414:
                        _loc10_ = (param1 as b2PolygonShape).§-"=§();
                        if(!(_loc14_ && param3))
                        {
                           _loc11_ = 0;
                        }
                        loop34:
                        while(true)
                        {
                           if(_loc11_ < _loc10_.length)
                           {
                              _loc12_ = b2Math.§>!C§(param2,_loc10_[_loc11_]);
                              if(_loc13_)
                              {
                                 §§push(Number(Math.min(_loc12_.x,_loc4_)));
                                 loop35:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop36:
                                    while(true)
                                    {
                                       §§push(Number(Math.max(_loc12_.x,_loc6_)));
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          loop39:
                                          while(_loc13_ || param2)
                                          {
                                             if(!_loc14_)
                                             {
                                                _loc5_ = §§pop();
                                                loop40:
                                                while(_loc13_)
                                                {
                                                   do
                                                   {
                                                      §§push(Number(Math.max(_loc12_.y,_loc7_)));
                                                      if(_loc13_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               if(_loc14_ && §&l§)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop40;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop39;
                                                         }
                                                         continue loop40;
                                                      }
                                                      continue loop39;
                                                   }
                                                   while(false);
                                                   
                                                   continue loop34;
                                                }
                                                continue loop36;
                                             }
                                             continue loop35;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr506);
                           }
                        }
                     }
                  }
                  §§goto(addr414);
               }
               else
               {
                  addr413:
                  if(param1 is b2PolygonShape)
                  {
                     §§goto(addr414);
                  }
               }
               §§goto(addr519);
            }
            §§goto(addr413);
         }
         §§goto(addr414);
      }
      
      public static function §2i§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<b2Vec2> = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:int = 0;
         if(!_loc7_)
         {
            §§push(param1 is b2CircleShape);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     return param2.position.Copy();
                  }
               }
               §§push(param1 is b2PolygonShape);
            }
            if(!§§pop())
            {
               return null;
            }
         }
         _loc3_ = (param1 as b2PolygonShape).§-"=§();
         _loc4_ = new b2Vec2();
         if(_loc6_)
         {
            _loc5_ = 0;
         }
         while(true)
         {
            if(_loc5_ >= _loc3_.length)
            {
               if(_loc6_)
               {
                  if(!_loc7_)
                  {
                     _loc4_.§>!t§(1 / _loc3_.length);
                  }
                  else
                  {
                     _loc5_++;
                     continue;
                     addr126:
                  }
               }
               if(!(_loc7_ && §&l§))
               {
                  break;
               }
               continue;
            }
            _loc4_.§1v§(b2Math.§>!C§(param2,_loc3_[_loc5_]));
            §§goto(addr126);
         }
         return _loc4_;
      }
      
      public static function §;j§(param1:b2Shape, param2:b2Transform) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2Vec2 = §2i§(param1,param2);
         §§push(§§findproperty(b2Vec2));
         §§push(param2.position.x);
         if(_loc4_)
         {
            §§push(_loc3_.x);
            if(!(_loc5_ && param1))
            {
               §§goto(addr48);
            }
            §§goto(addr63);
         }
         addr48:
         §§push(§§pop() - §§pop());
         §§push(param2.position.y);
         if(!_loc5_)
         {
            addr63:
            §§push(§§pop() - _loc3_.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
   }
}
