package §+]§
{
   import § !t§.b2Body;
   import §#b§.b2CircleShape;
   import §#b§.b2PolygonShape;
   import §#b§.b2Shape;
   import §6C§.§ set§;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import flash.geom.Rectangle;
   
   public class §"^§
   {
      
      public static const §]z§:Number = 0.6;
      
      public static const §]_§:Number = 0;
      
      public static const §4x§:Number = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]z§ = 0.6;
            if(_loc1_)
            {
               §]_§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  §4x§ = 1;
               }
            }
         }
      }
      
      public function §"^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function § each§(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : § set§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§ set§ = null;
         if(_loc7_ || param1)
         {
            §§push(param1 is b2PolygonShape);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop());
               if(_loc7_ || param2)
               {
                  if(§§pop())
                  {
                     §§pop();
                     §§push(param3 is b2PolygonShape);
                     if(_loc7_ || param1)
                     {
                        addr57:
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              _loc5_ = §8]§(param1 as b2PolygonShape,param2,param3 as b2PolygonShape,param4);
                           }
                           else
                           {
                              addr93:
                              if(param3 is b2CircleShape)
                              {
                                 if(_loc7_)
                                 {
                                    addr109:
                                    §§push(§4n§(param1 as b2PolygonShape,param2,param3 as b2CircleShape,param4));
                                    if(_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                    }
                                    else
                                    {
                                       addr165:
                                       (_loc5_ = §§pop()).§^Y§.§-![§();
                                    }
                                    §§goto(addr219);
                                 }
                                 else
                                 {
                                    addr144:
                                    §§push(param3 is b2PolygonShape);
                                    if(_loc7_ || param3)
                                    {
                                       addr154:
                                       if(§§pop())
                                       {
                                          addr155:
                                          §§goto(addr165);
                                          §§push(§4n§(param3 as b2PolygonShape,param4,param1 as b2CircleShape,param2));
                                       }
                                       else
                                       {
                                          §§push(param1 is b2CircleShape);
                                          if(!_loc6_)
                                          {
                                             addr177:
                                             if(§§pop())
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   addr195:
                                                   §§pop();
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr206:
                                                      if(param3 is b2CircleShape)
                                                      {
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   _loc5_ = §+>§(param1 as b2CircleShape,param2,param3 as b2CircleShape,param4);
                                                   §§goto(addr219);
                                                }
                                             }
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              else
                              {
                                 §§push(param1 is b2CircleShape);
                                 §§push(param1 is b2CircleShape);
                                 if(_loc7_ || param2)
                                 {
                                    addr135:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          §§pop();
                                          §§goto(addr144);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr177);
                           }
                           addr219:
                           return _loc5_;
                        }
                        §§push(param1 is b2PolygonShape);
                        §§push(param1 is b2PolygonShape);
                        if(!(_loc6_ && param3))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc7_ || §"^§)
                              {
                                 §§goto(addr93);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr135);
                        §§goto(addr135);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr57);
               }
               §§goto(addr135);
            }
            §§goto(addr93);
         }
         §§goto(addr155);
      }
      
      public static function §8]§(param1:b2PolygonShape, param2:b2Transform, param3:b2PolygonShape, param4:b2Transform) : § set§
      {
         var _loc45_:Boolean = false;
         var _loc46_:Boolean = true;
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
         var _loc27_:§ set§ = null;
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
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:* = NaN;
         var _loc43_:b2Vec2 = null;
         var _loc44_:b2Vec2 = null;
         var _loc5_:Boolean = true;
         var _loc6_:Vector.<b2Vec2> = param1.§+F§();
         var _loc7_:Vector.<b2Vec2> = param3.§+F§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§ set§ = null;
         var _loc15_:int = 0;
         while(_loc15_ < _loc6_.length)
         {
            _loc16_ = b2Math.§#!N§(param2,_loc6_[_loc15_]);
            _loc17_ = b2Math.§#!N§(param2,_loc6_[_loc15_ + 1 < _loc6_.length ? _loc15_ + 1 : 0]);
            _loc18_ = param1.§1!_§()[_loc15_].Copy();
            (_loc18_ = §6w§(param1.§1!_§()[_loc15_].Copy(),new b2Vec2(0,0),-param2.GetAngle())).§=!K§(§]z§);
            (_loc19_ = _loc16_.Copy()).§!a§(_loc18_);
            (_loc20_ = _loc17_.Copy()).§!a§(_loc18_);
            if(_loc46_)
            {
               §§push(Number(0));
               if(!_loc45_)
               {
                  _loc21_ = §§pop();
                  if(!(_loc46_ || param3))
                  {
                     continue;
                  }
                  addr209:
                  while(true)
                  {
                     §§push(_loc21_);
                  }
                  addr615:
               }
               for(; §§pop() < _loc7_.length; §§goto(addr615))
               {
                  _loc22_ = b2Math.§#!N§(param4,_loc7_[_loc21_]);
                  _loc23_ = b2Math.§#!N§(param4,_loc7_[_loc21_ + 1 < _loc7_.length ? _loc21_ + 1 : 0]);
                  (_loc24_ = §6w§(param3.§1!_§()[_loc21_].Copy(),new b2Vec2(0,0),-param4.GetAngle())).§=!K§(§]z§);
                  (_loc25_ = _loc22_.Copy()).§!a§(_loc24_);
                  (_loc26_ = _loc23_.Copy()).§!a§(_loc24_);
                  if(!_loc45_)
                  {
                     if(_loc5_)
                     {
                        if(_loc46_ || param2)
                        {
                           §§push(false);
                           if(!(_loc45_ && param1))
                           {
                              _loc30_ = §§pop();
                              if(_loc46_ || param2)
                              {
                                 §§push(§]1§(_loc16_,_loc19_,_loc22_,_loc23_));
                                 if(_loc46_ || param2)
                                 {
                                    §§push(Boolean(§§pop()));
                                    §§push(Boolean(§§pop()));
                                    if(_loc46_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc45_)
                                          {
                                             §§pop();
                                             if(_loc46_)
                                             {
                                                addr323:
                                                §§push(§]1§(_loc17_,_loc20_,_loc22_,_loc23_));
                                                if(_loc46_ || param3)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc46_)
                                                   {
                                                      addr339:
                                                      §§push(§§pop());
                                                      if(_loc46_)
                                                      {
                                                         addr342:
                                                         if(!§§pop())
                                                         {
                                                            addr343:
                                                            §§pop();
                                                            addr369:
                                                            §§push(§]1§(_loc22_,_loc25_,_loc16_,_loc17_));
                                                            if(!(_loc45_ && param3))
                                                            {
                                                               addr358:
                                                               §§push(Boolean(§§pop()));
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc45_ && param1))
                                                            {
                                                               addr377:
                                                               if(§§pop())
                                                               {
                                                                  §§push(true);
                                                                  if(!_loc45_)
                                                                  {
                                                                     addr381:
                                                                     _loc30_ = §§pop();
                                                                     if(!(_loc46_ || §"^§))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr389:
                                                                     §§push(_loc30_);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     addr392:
                                                                     _loc27_ = §66§(_loc16_,_loc17_,_loc22_,_loc23_);
                                                                     if(!(_loc45_ && param2))
                                                                     {
                                                                        §§push(Number(Math.round(§">§(_loc16_,_loc17_,_loc22_,_loc23_))));
                                                                        if(!_loc45_)
                                                                        {
                                                                           _loc28_ = §§pop();
                                                                           _loc27_.rotation = _loc28_;
                                                                           if(!_loc45_)
                                                                           {
                                                                              _loc29_ = true;
                                                                              §§push(_loc27_.§4!<§);
                                                                              if(_loc46_ || param1)
                                                                              {
                                                                                 §§push(§§pop().§#!^§());
                                                                                 if(_loc46_ || param2)
                                                                                 {
                                                                                    §§push(§]z§);
                                                                                    if(_loc46_ || param1)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          §§push(false);
                                                                                          if(_loc46_ || param1)
                                                                                          {
                                                                                             _loc29_ = §§pop();
                                                                                             addr461:
                                                                                             if(Math.abs(_loc28_) > §]_§)
                                                                                             {
                                                                                                _loc29_ = false;
                                                                                                addr468:
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   if(!(_loc45_ && param1))
                                                                                                   {
                                                                                                      §§push(false);
                                                                                                      if(_loc46_)
                                                                                                      {
                                                                                                         _loc31_ = §§pop();
                                                                                                         if(_loc14_ == null)
                                                                                                         {
                                                                                                            if(!_loc45_)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc46_)
                                                                                                               {
                                                                                                                  addr499:
                                                                                                                  _loc31_ = §§pop();
                                                                                                                  addr579:
                                                                                                                  addr580:
                                                                                                                  if(!_loc31_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§push(_loc21_);
                                                                                                                  if(!(_loc45_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     if(_loc46_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc21_ = §§pop();
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr576:
                                                                                                               _loc31_ = §§pop();
                                                                                                               if(_loc46_)
                                                                                                               {
                                                                                                                  §§goto(addr579);
                                                                                                               }
                                                                                                               addr581:
                                                                                                               _loc14_ = _loc27_;
                                                                                                               _loc8_ = _loc16_;
                                                                                                               _loc9_ = _loc17_;
                                                                                                               _loc10_ = _loc18_;
                                                                                                               _loc11_ = _loc22_;
                                                                                                               _loc12_ = _loc23_;
                                                                                                               _loc13_ = _loc24_;
                                                                                                            }
                                                                                                            §§goto(addr579);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc27_.§4!<§);
                                                                                                            if(_loc46_)
                                                                                                            {
                                                                                                               §§push(§§pop().§#!^§());
                                                                                                               if(_loc46_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc14_.§4!<§);
                                                                                                                  if(!_loc45_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§#!^§());
                                                                                                                     if(_loc46_ || param1)
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           if(_loc46_)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              if(_loc46_ || §"^§)
                                                                                                                              {
                                                                                                                                 addr536:
                                                                                                                                 _loc31_ = §§pop();
                                                                                                                                 §§goto(addr579);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr576);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr562:
                                                                                                                           addr563:
                                                                                                                           addr540:
                                                                                                                           §§push(_loc27_.§4!<§.§#!^§());
                                                                                                                           if(_loc46_ || param1)
                                                                                                                           {
                                                                                                                              §§push(_loc14_.§4!<§);
                                                                                                                           }
                                                                                                                           _loc32_ = §§pop();
                                                                                                                           if(Math.abs(_loc28_) < Math.abs(_loc32_))
                                                                                                                           {
                                                                                                                              if(_loc46_)
                                                                                                                              {
                                                                                                                                 addr573:
                                                                                                                                 §§push(true);
                                                                                                                                 if(!_loc45_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr576);
                                                                                                                                 }
                                                                                                                                 §§goto(addr580);
                                                                                                                              }
                                                                                                                              §§goto(addr581);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr579);
                                                                                                                     }
                                                                                                                     addr551:
                                                                                                                     if(§§pop() == §§pop())
                                                                                                                     {
                                                                                                                        if(_loc46_)
                                                                                                                        {
                                                                                                                           §§push(§">§(_loc8_,_loc9_,_loc11_,_loc12_));
                                                                                                                           if(_loc46_)
                                                                                                                           {
                                                                                                                              §§goto(addr562);
                                                                                                                           }
                                                                                                                           §§goto(addr563);
                                                                                                                        }
                                                                                                                        §§goto(addr573);
                                                                                                                     }
                                                                                                                     §§goto(addr579);
                                                                                                                  }
                                                                                                                  §§goto(addr551);
                                                                                                                  §§push(§§pop().§#!^§());
                                                                                                               }
                                                                                                               §§goto(addr562);
                                                                                                            }
                                                                                                            §§goto(addr540);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr536);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr579);
                                                                                             }
                                                                                             §§goto(addr468);
                                                                                          }
                                                                                          §§goto(addr499);
                                                                                       }
                                                                                       §§goto(addr461);
                                                                                    }
                                                                                    §§goto(addr551);
                                                                                 }
                                                                              }
                                                                              §§goto(addr562);
                                                                           }
                                                                           §§goto(addr468);
                                                                        }
                                                                        §§goto(addr562);
                                                                     }
                                                                     §§goto(addr468);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr391:
                                                                  }
                                                                  §§goto(addr499);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         if(_loc46_)
                                                         {
                                                            addr363:
                                                            §§goto(addr369);
                                                            §§push(§]1§(_loc23_,_loc26_,_loc16_,_loc17_));
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                      §§goto(addr377);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr358);
                                             }
                                             §§goto(addr343);
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr343);
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr339);
                        }
                        §§goto(addr391);
                     }
                     §§goto(addr392);
                  }
                  §§goto(addr363);
               }
               if(_loc46_)
               {
                  _loc15_++;
               }
               continue;
            }
            §§goto(addr209);
         }
         if(_loc46_ || §"^§)
         {
            if(_loc14_ == null)
            {
               return null;
            }
         }
         _loc33_ = _loc14_.§4!<§;
         §§push(§§findproperty(§6w§));
         §§push(_loc8_);
         §§push(_loc14_.§'E§);
         §§push(_loc14_.rotation);
         if(!_loc45_)
         {
            §§push(§§pop() / 180);
            if(_loc46_ || §"^§)
            {
               §§push(§§pop() * Math.PI);
            }
         }
         _loc34_ = §§pop().§6w§(§§pop(),§§pop(),§§pop());
         §§push(§§findproperty(§6w§));
         §§push(_loc9_);
         §§push(_loc14_.§'E§);
         §§push(_loc14_.rotation);
         if(_loc46_)
         {
            §§push(§§pop() / 180);
            if(_loc46_)
            {
               §§push(§§pop() * Math.PI);
            }
         }
         _loc35_ = §§pop().§6w§(§§pop(),§§pop(),§§pop());
         if(_loc46_)
         {
            _loc34_.§!a§(_loc33_);
            if(!_loc45_)
            {
               _loc35_.§!a§(_loc33_);
               §§push(Number(b2Math.§@9§(_loc34_,_loc11_)));
               if(!_loc45_)
               {
                  _loc36_ = §§pop();
                  if(!_loc45_)
                  {
                     §§push(b2Math.§@9§(_loc34_,_loc12_));
                     if(_loc46_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc45_ && param1))
                        {
                           _loc37_ = §§pop();
                           §§push(b2Math.§@9§(_loc35_,_loc11_));
                           if(!_loc45_)
                           {
                              addr722:
                              §§push(Number(§§pop()));
                           }
                           _loc38_ = §§pop();
                           if(!(_loc45_ && param2))
                           {
                              addr731:
                              _loc39_ = b2Math.§@9§(_loc35_,_loc12_);
                              addr737:
                              §§push(_loc36_);
                              §§push(_loc39_);
                              if(!(_loc45_ && §"^§))
                              {
                                 _loc40_ = §§pop() + §§pop();
                                 addr749:
                                 §§push(_loc37_);
                                 §§push(_loc38_);
                              }
                              _loc41_ = §§pop() + §§pop();
                              addr754:
                              §§push(_loc36_);
                              if(!_loc45_)
                              {
                                 addr757:
                                 §§push(Number(§§pop()));
                              }
                              _loc42_ = §§pop();
                              _loc43_ = null;
                              if(_loc46_)
                              {
                                 §§push(_loc40_);
                                 if(!_loc45_)
                                 {
                                    if(§§pop() < _loc41_)
                                    {
                                       §§push(_loc36_);
                                       if(!(_loc45_ && param1))
                                       {
                                          if(§§pop() < §4x§)
                                          {
                                             §§push(_loc11_.Copy());
                                             if(!(_loc45_ && param3))
                                             {
                                                (_loc43_ = §§pop()).§&!v§(_loc34_);
                                                addr793:
                                                §§push(_loc39_);
                                                if(!(_loc45_ && param1))
                                                {
                                                   §§push(§§pop() < §4x§);
                                                   if(_loc46_ || param3)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc45_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc45_ && param1))
                                                            {
                                                               addr821:
                                                               §§pop();
                                                               §§push(_loc39_);
                                                               §§push(_loc36_);
                                                               if(_loc46_)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(!_loc45_)
                                                                  {
                                                                     addr829:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc46_ || param2)
                                                                        {
                                                                           §§push(_loc12_.Copy());
                                                                           if(_loc46_ || param1)
                                                                           {
                                                                              addr846:
                                                                              (_loc43_ = §§pop()).§&!v§(_loc35_);
                                                                              addr851:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr866:
                                                                              (_loc43_ = §§pop()).§&!v§(_loc34_);
                                                                              §§push(_loc38_);
                                                                              if(_loc46_)
                                                                              {
                                                                                 addr874:
                                                                                 §§push(§4x§);
                                                                                 if(_loc46_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() < §§pop());
                                                                                    if(_loc46_)
                                                                                    {
                                                                                       addr885:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc45_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!_loc45_)
                                                                                             {
                                                                                                addr895:
                                                                                                addr894:
                                                                                                addr893:
                                                                                                if(_loc38_ < _loc37_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr910);
                                                                                             }
                                                                                             §§push(_loc11_.Copy());
                                                                                             if(!(_loc45_ && §"^§))
                                                                                             {
                                                                                                §§goto(addr905);
                                                                                             }
                                                                                             §§goto(addr950);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr895);
                                                                                 }
                                                                                 §§goto(addr894);
                                                                              }
                                                                              §§goto(addr893);
                                                                           }
                                                                           §§goto(addr895);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr862:
                                                                           §§push(_loc12_.Copy());
                                                                           if(_loc46_)
                                                                           {
                                                                              §§goto(addr866);
                                                                           }
                                                                        }
                                                                        addr905:
                                                                        (_loc43_ = §§pop()).§&!v§(_loc35_);
                                                                        addr910:
                                                                        §§push(_loc14_);
                                                                        §§push(_loc43_ == null);
                                                                        if(_loc46_ || §"^§)
                                                                        {
                                                                           §§push(!§§pop());
                                                                        }
                                                                        §§pop().§0J§ = §§pop();
                                                                        if(_loc46_ || param3)
                                                                        {
                                                                           if(_loc43_ != null)
                                                                           {
                                                                              if(!_loc45_)
                                                                              {
                                                                                 _loc33_.§!a§(_loc43_);
                                                                                 addr950:
                                                                                 (_loc44_ = _loc13_.Copy()).Normalize();
                                                                              }
                                                                           }
                                                                           §§goto(addr938);
                                                                        }
                                                                        addr938:
                                                                        if(!_loc45_)
                                                                        {
                                                                           §§push(_loc44_);
                                                                           §§push(b2Settings.b2_linearSlop);
                                                                           if(!(_loc45_ && param3))
                                                                           {
                                                                              §§push(§§pop() * 2);
                                                                           }
                                                                           §§pop().§=!K§(§§pop());
                                                                           _loc33_.§!a§(_loc44_);
                                                                           _loc14_.§^Y§ = _loc33_;
                                                                        }
                                                                        return _loc14_;
                                                                     }
                                                                     §§goto(addr851);
                                                                  }
                                                                  §§goto(addr885);
                                                               }
                                                               §§goto(addr895);
                                                            }
                                                         }
                                                         §§goto(addr829);
                                                      }
                                                      §§goto(addr885);
                                                   }
                                                   §§goto(addr821);
                                                }
                                                §§goto(addr874);
                                             }
                                             §§goto(addr846);
                                          }
                                          §§goto(addr793);
                                       }
                                       else
                                       {
                                          addr853:
                                          §§push(§4x§);
                                          if(!(_loc45_ && param3))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§goto(addr862);
                                             }
                                             §§goto(addr866);
                                          }
                                       }
                                       §§goto(addr895);
                                    }
                                    else
                                    {
                                       §§push(_loc37_);
                                    }
                                    §§goto(addr853);
                                 }
                                 §§goto(addr821);
                              }
                              §§goto(addr950);
                           }
                        }
                        §§goto(addr749);
                     }
                     §§goto(addr757);
                  }
                  §§goto(addr754);
               }
               §§goto(addr722);
            }
            §§goto(addr731);
         }
         §§goto(addr737);
      }
      
      public static function §6w§(param1:b2Vec2, param2:b2Vec2, param3:Number) : b2Vec2
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         §§push(param1.x);
         if(!_loc12_)
         {
            §§push(§§pop() - param2.x);
            if(_loc13_ || param2)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param1.y);
            if(_loc13_ || param3)
            {
               §§push(§§pop() - param2.y);
               if(_loc13_ || §"^§)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc13_ || param3)
            {
               §§push(_loc4_);
               if(!_loc12_)
               {
                  §§push(0);
                  if(_loc13_ || §"^§)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc12_ && §"^§))
                     {
                        if(§§pop())
                        {
                           if(!_loc12_)
                           {
                              §§goto(addr84);
                           }
                        }
                        §§goto(addr112);
                     }
                     addr84:
                     §§pop();
                     if(!(_loc12_ && param2))
                     {
                        §§push(_loc5_);
                        if(_loc13_ || param2)
                        {
                           addr112:
                           if(§§pop() == 0)
                           {
                              if(_loc13_)
                              {
                                 §§goto(addr115);
                              }
                              else
                              {
                                 addr118:
                                 §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                              }
                           }
                           §§goto(addr118);
                        }
                        var _loc6_:* = §§pop();
                        var _loc7_:Number;
                        §§push(_loc7_ = Math.atan2(_loc4_,_loc5_));
                        if(!(_loc12_ && param3))
                        {
                           §§push(§§pop() + param3);
                           if(!_loc12_)
                           {
                              addr147:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(Math.sin(_loc8_) * _loc6_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           §§push(Math.cos(_loc8_) * _loc6_);
                           if(!_loc12_)
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
                                 addr191:
                                 §§push(§§pop() + §§pop());
                                 §§push(param2.y);
                                 if(!(_loc12_ && §"^§))
                                 {
                                    §§push(§§pop() + _loc10_);
                                 }
                              }
                              return new §§pop().b2Vec2(§§pop(),§§pop());
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr147);
                     }
                     addr115:
                     return param1.Copy();
                  }
               }
               §§goto(addr112);
            }
            §§goto(addr118);
         }
         §§goto(addr31);
      }
      
      public static function §4n§(param1:b2PolygonShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : § set§
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:§ set§ = null;
         var _loc5_:b2Vec2 = param4.position.Copy();
         §§push(param3.§?'§());
         if(!_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§+F§();
         var _loc8_:b2Vec2 = null;
         var _loc9_:int = 0;
         while(_loc9_ < _loc7_.length)
         {
            _loc10_ = b2Math.§#!N§(param2,_loc7_[_loc9_]);
            _loc11_ = b2Math.§#!N§(param2,_loc7_[_loc9_ + 1 < _loc7_.length ? _loc9_ + 1 : 0]);
            §§push((_loc12_ = §4!J§(_loc10_,_loc11_,_loc5_).§4!<§).§#!^§());
            if(_loc15_)
            {
               §§push(_loc6_);
               if(_loc15_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc16_ && param2))
                  {
                     addr104:
                     §§push(_loc12_.§#!^§());
                     if(_loc15_ || param3)
                     {
                        addr113:
                        §§push(§§pop() / §§pop());
                        if(_loc15_ || param3)
                        {
                           §§push(Number(§§pop()));
                           if(_loc15_ || param1)
                           {
                           }
                           addr196:
                           addr199:
                           addr198:
                           if(§§pop() < _loc8_.§#!^§())
                           {
                              if(_loc16_ && param1)
                              {
                                 continue;
                              }
                              addr207:
                              _loc8_ = _loc12_;
                           }
                           _loc9_++;
                           continue;
                        }
                        _loc13_ = §§pop();
                        if(!(_loc16_ && param3))
                        {
                           §§push(_loc12_);
                           §§push(_loc12_.x);
                           if(_loc15_)
                           {
                              §§push(§§pop() * _loc13_);
                           }
                           §§pop().x = §§pop();
                           if(_loc15_ || param1)
                           {
                              §§push(_loc12_);
                              §§push(_loc12_.y);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() * _loc13_);
                              }
                              §§pop().y = §§pop();
                              if(!(_loc15_ || param1))
                              {
                                 continue;
                              }
                              §§push(_loc8_ == null);
                              if(!_loc16_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc15_)
                                    {
                                       addr186:
                                       §§pop();
                                       if(!(_loc15_ || param2))
                                       {
                                          continue;
                                       }
                                       addr194:
                                       §§goto(addr196);
                                       §§push(_loc12_.§#!^§());
                                    }
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr196);
               }
               §§goto(addr113);
            }
            §§goto(addr104);
         }
         if(_loc15_)
         {
            if(_loc8_ != null)
            {
               addr230:
               (_loc14_ = new § set§()).§4!<§ = _loc8_;
               if(!(_loc16_ && param3))
               {
                  _loc14_.§^Y§ = _loc8_;
                  if(!_loc16_)
                  {
                     _loc14_.rotation = 0;
                     if(!_loc16_)
                     {
                        return _loc14_;
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr230);
      }
      
      public static function §+>§(param1:b2CircleShape, param2:b2Transform, param3:b2CircleShape, param4:b2Transform) : § set§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc5_:b2Vec2 = param2.position.Copy();
         var _loc7_:b2Vec2;
         var _loc6_:b2Vec2;
         (_loc7_ = (_loc6_ = param4.position.Copy()).Copy()).§&!v§(_loc5_);
         §§push(_loc7_.§#!^§());
         if(!(_loc10_ && §"^§))
         {
            §§push(param1.§?'§());
            if(_loc11_ || §"^§)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc10_ && param3))
               {
                  §§push(param3.§?'§());
                  if(_loc11_ || §"^§)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc10_ && param1))
                     {
                        addr89:
                        §§push(§§pop() / _loc7_.§#!^§());
                        if(_loc11_ || §"^§)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  §§goto(addr89);
               }
               var _loc8_:* = §§pop();
               if(_loc11_ || param3)
               {
                  §§push(_loc7_);
                  §§push(_loc7_.x);
                  if(_loc11_)
                  {
                     §§push(§§pop() * _loc8_);
                  }
                  §§pop().x = §§pop();
                  if(!_loc10_)
                  {
                     §§push(_loc7_);
                     §§push(_loc7_.y);
                     if(_loc11_)
                     {
                        §§push(§§pop() * _loc8_);
                     }
                     §§pop().y = §§pop();
                  }
               }
               var _loc9_:§ set§;
               (_loc9_ = new § set§()).§4!<§ = _loc7_;
               if(_loc11_ || param1)
               {
                  _loc9_.§^Y§ = _loc7_;
                  if(_loc11_)
                  {
                     addr153:
                     _loc9_.rotation = 0;
                  }
                  return _loc9_;
               }
               §§goto(addr153);
            }
         }
         §§goto(addr89);
      }
      
      public static function §66§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : § set§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§ set§ = null;
         var _loc7_:§ set§ = null;
         var _loc8_:§ set§ = null;
         var _loc9_:§ set§ = null;
         var _loc10_:§ set§ = null;
         var _loc11_:§ set§ = null;
         var _loc5_:b2Vec2;
         if(_loc5_ = §]1§(param1,param2,param3,param4))
         {
            (_loc6_ = new § set§()).§4!<§ = new b2Vec2(0,0);
            if(_loc13_)
            {
               _loc6_.§'E§ = _loc5_;
               if(!_loc13_)
               {
                  addr64:
                  _loc7_ = §4!J§(param1,param2,param3,false);
                  _loc8_ = §4!J§(param1,param2,param4,false);
                  _loc9_ = §4!J§(param3,param4,param1,true);
                  _loc10_ = §4!J§(param3,param4,param2,true);
                  _loc11_ = _loc7_;
                  if(_loc13_)
                  {
                     §§push(_loc8_.§4!<§);
                     if(_loc13_)
                     {
                        §§push(§§pop().§#!^§());
                        if(!(_loc12_ && param2))
                        {
                           §§push(_loc11_.§4!<§);
                           if(_loc13_)
                           {
                              §§push(§§pop().§#!^§());
                              if(_loc13_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       addr133:
                                       _loc11_ = _loc8_;
                                       addr136:
                                       §§push(_loc9_.§4!<§);
                                       if(!_loc12_)
                                       {
                                          addr140:
                                          §§push(§§pop().§#!^§());
                                          if(!_loc12_)
                                          {
                                             addr153:
                                             §§push(_loc11_.§4!<§);
                                             if(_loc13_ || param3)
                                             {
                                                §§push(§§pop().§#!^§());
                                                if(_loc13_)
                                                {
                                                   addr165:
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         _loc11_ = _loc9_;
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   addr176:
                                                   §§push(_loc10_.§4!<§.§#!^§());
                                                   §§push(_loc11_.§4!<§.§#!^§());
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                }
                                                §§goto(addr178);
                                             }
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    addr178:
                                    return _loc10_;
                                 }
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr133);
               }
            }
            return _loc6_;
         }
         §§goto(addr64);
      }
      
      public static function §]1§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2) : b2Vec2
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:b2Vec2 = null;
         §§push(param4.y);
         if(_loc12_ || param3)
         {
            §§push(§§pop() - param3.y);
            if(_loc12_ || §"^§)
            {
               §§push(param2.x);
               if(!_loc11_)
               {
                  §§push(param1.x);
                  if(_loc12_ || param3)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc12_ || param1)
                     {
                        addr60:
                        §§push(§§pop() * §§pop());
                        if(_loc12_ || param2)
                        {
                           §§push(param4.x);
                           §§push(param3.x);
                           if(!_loc11_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!_loc11_)
                              {
                                 §§push(param2.y);
                                 if(_loc11_ && param2)
                                 {
                                 }
                                 addr90:
                                 §§push(§§pop() - §§pop() * §§pop());
                                 if(_loc12_)
                                 {
                                    addr94:
                                    var _loc5_:Number;
                                    §§push(_loc5_ = §§pop());
                                    if(!(_loc11_ && param3))
                                    {
                                       if(§§pop() == 0)
                                       {
                                          if(_loc12_)
                                          {
                                             return null;
                                          }
                                       }
                                       §§push(param4.x);
                                       if(!(_loc11_ && param1))
                                       {
                                          addr118:
                                          §§push(param3.x);
                                          if(!(_loc11_ && param1))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc12_ || param2)
                                             {
                                                §§push(param1.y);
                                                if(!_loc11_)
                                                {
                                                   §§push(param3.y);
                                                   if(_loc12_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc12_)
                                                      {
                                                         addr146:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc12_ || §"^§)
                                                         {
                                                            addr154:
                                                            §§push(param4.y);
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               addr163:
                                                               §§push(param3.y);
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                  }
                                                                  addr183:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc12_ || param3)
                                                                  {
                                                                     addr191:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc6_:* = §§pop();
                                                                  §§push(param2.x);
                                                                  if(!(_loc11_ && §"^§))
                                                                  {
                                                                     §§push(param1.x);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           addr214:
                                                                           §§push(param1.y);
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(param3.y);
                                                                              if(!(_loc11_ && param3))
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc11_ && param3))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(param2.y);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr252:
                                                                                          §§push(param1.y);
                                                                                          if(_loc12_ || §"^§)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc11_ && §"^§))
                                                                                             {
                                                                                                addr269:
                                                                                                §§push(param1.x);
                                                                                                if(_loc12_ || param3)
                                                                                                {
                                                                                                   addr278:
                                                                                                   §§push(§§pop() - param3.x);
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr285:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                    var _loc7_:* = §§pop();
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() / _loc5_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc8_:* = §§pop();
                                                                                    §§push(_loc7_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop() / _loc5_);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc9_:* = §§pop();
                                                                                    if(!(_loc11_ && §"^§))
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() >= §§pop());
                                                                                             §§push(§§pop() >= §§pop());
                                                                                             if(_loc12_ || param1)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc12_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(_loc12_ || param1)
                                                                                                         {
                                                                                                            addr351:
                                                                                                            §§push(1);
                                                                                                            if(_loc12_ || param3)
                                                                                                            {
                                                                                                               addr360:
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               if(_loc12_ || param3)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc12_)
                                                                                                                     {
                                                                                                                        addr371:
                                                                                                                        §§pop();
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           addr374:
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc12_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() >= §§pop());
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    addr388:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr396:
                                                                                                                                          if(_loc9_ > 1)
                                                                                                                                          {
                                                                                                                                             return null;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(§§findproperty(b2Vec2));
                                                                                                                                       §§push(param1.x);
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc12_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(param2.x);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(param1.x);
                                                                                                                                                if(!(_loc11_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc12_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr445:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         §§push(param1.y);
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr466);
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc12_ || §"^§)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr465:
                                                                                                                                                      addr466:
                                                                                                                                                      return new §§pop().b2Vec2(§§pop(),§§pop());
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§push(param2.y);
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr461:
                                                                                                                                                      §§push(§§pop() - param1.y);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr465);
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr461);
                                                                                                                                             }
                                                                                                                                             §§goto(addr465);
                                                                                                                                          }
                                                                                                                                          §§goto(addr466);
                                                                                                                                       }
                                                                                                                                       §§goto(addr445);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr396);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr388);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr388);
                                                                                          }
                                                                                          §§goto(addr396);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr252);
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               addr179:
                                                               §§goto(addr183);
                                                               §§push(§§pop() * (§§pop() - param3.x));
                                                            }
                                                            §§push(param1.x);
                                                            if(_loc11_)
                                                            {
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr90);
                           §§push(§§pop() - param1.y);
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr94);
      }
      
      public static function §4!J§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:Boolean = false) : § set§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc9_:* = NaN;
         §§push(param2.x);
         if(!(_loc10_ && param3))
         {
            §§push(§§pop() - param1.x);
            if(!(_loc10_ && param1))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(_loc11_ || §"^§)
            {
               §§push(§§pop() - param1.y);
               if(!_loc10_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               var _loc7_:b2Vec2 = null;
               if(!(_loc10_ && param1))
               {
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     §§push(0);
                     if(!_loc10_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc11_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && §"^§))
                              {
                                 §§pop();
                                 if(_loc11_ || param3)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc10_ && param3))
                                    {
                                       §§push(0);
                                       if(_loc11_)
                                       {
                                          addr104:
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc11_ || §"^§)
                                             {
                                                addr112:
                                                _loc7_ = param1;
                                             }
                                             else
                                             {
                                                addr218:
                                                _loc7_ = param2;
                                             }
                                             addr275:
                                             var _loc8_:§ set§;
                                             §§push(_loc8_ = new § set§());
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(param3.x);
                                             if(!(_loc10_ && param3))
                                             {
                                                §§push(_loc7_.x);
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr300:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(param3.y);
                                                   if(_loc11_)
                                                   {
                                                      addr304:
                                                      §§push(§§pop() - _loc7_.y);
                                                   }
                                                   §§pop().§4!<§ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      if(param4)
                                                      {
                                                         if(!(_loc10_ && §"^§))
                                                         {
                                                            _loc8_.§4!<§.§-![§();
                                                            if(_loc11_ || param2)
                                                            {
                                                               addr345:
                                                               §§push(_loc8_);
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§pop().§'E§ = !!param4 ? param3 : _loc7_;
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                         }
                                                         addr361:
                                                         return _loc8_;
                                                      }
                                                   }
                                                   §§goto(addr345);
                                                }
                                                §§goto(addr304);
                                             }
                                             §§goto(addr300);
                                          }
                                          else
                                          {
                                             §§push(param3.x - param1.x);
                                             if(!_loc11_)
                                             {
                                             }
                                             addr193:
                                             §§push(_loc9_ = §§pop());
                                             §§push(0);
                                             if(!(_loc10_ && param1))
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      _loc7_ = param1;
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr275);
                                                }
                                                else
                                                {
                                                   addr217:
                                                   if(_loc9_ > 1)
                                                   {
                                                      §§goto(addr218);
                                                   }
                                                   else
                                                   {
                                                      §§push(§§findproperty(b2Vec2));
                                                      §§push(param1.x);
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§push(_loc9_);
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc10_ && param3))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  addr256:
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push(param1.y);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc11_ || param3)
                                                                     {
                                                                        addr269:
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                               }
                                                               _loc7_ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                       §§goto(addr217);
                                    }
                                    §§push(_loc5_);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc11_ || param2)
                                       {
                                          §§push(param3.y);
                                          §§push(param1.y);
                                          if(!(_loc10_ && param2))
                                          {
                                             addr151:
                                             §§push(§§pop() - §§pop());
                                             §§push(_loc6_);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() + §§pop() * §§pop());
                                                if(!_loc10_)
                                                {
                                                   addr158:
                                                   §§push(_loc5_);
                                                   §§push(_loc5_);
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc11_ || param3)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr190:
                                                            §§push(§§pop() + §§pop() * _loc6_);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr193);
                                                      §§push(Number(§§pop() / §§pop()));
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr218);
                              }
                           }
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr217);
                  }
                  §§goto(addr193);
               }
               §§goto(addr112);
            }
            §§goto(addr54);
         }
         §§goto(addr38);
      }
      
      public static function §">§(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2, param4:b2Vec2, param5:Boolean = true) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§findproperty(§?b§));
         §§push(§§findproperty(b2Vec2));
         §§push(param2.x);
         if(!_loc7_)
         {
            §§push(param1.x);
            if(_loc6_)
            {
               §§goto(addr47);
            }
            §§goto(addr56);
         }
         addr47:
         §§push(§§pop() - §§pop());
         §§push(param2.y);
         if(!(_loc7_ && param1))
         {
            addr56:
            §§push(§§pop() - param1.y);
         }
         return §§pop().§?b§(new §§pop().b2Vec2(§§pop(),§§pop()),new b2Vec2(param4.x - param3.x,param4.y - param3.y),param5);
      }
      
      public static function §?b§(param1:b2Vec2, param2:b2Vec2, param3:Boolean = true) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.y,param2.x);
         var _loc5_:Number;
         §§push(_loc5_ = Math.atan2(param1.y,param1.x));
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - _loc4_);
            if(!_loc7_)
            {
               addr45:
               §§push(§§pop() * 180);
               if(_loc8_ || param3)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc8_)
                  {
                  }
                  §§goto(addr60);
               }
               §§push(Number(§§pop()));
            }
            addr60:
            var _loc6_:* = §§pop();
            if(!(_loc7_ && param2))
            {
               if(param3)
               {
                  if(_loc8_ || §"^§)
                  {
                     §§push(_loc6_);
                     §§push(90);
                     if(!(_loc7_ && §"^§))
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc8_ || §"^§)
                           {
                              addr104:
                              §§push(_loc6_);
                              §§push(180);
                              if(!(_loc7_ && §"^§))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc7_)
                                 {
                                    _loc6_ = Number(§§pop());
                                    if(_loc7_)
                                    {
                                    }
                                    §§goto(addr157);
                                 }
                                 else
                                 {
                                    addr132:
                                    §§push(-90);
                                    if(!(_loc7_ && §"^§))
                                    {
                                       addr140:
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_ || param3)
                                             {
                                                addr152:
                                                §§push(§§pop() + 180);
                                                if(_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc6_ = §§pop();
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr157);
                        }
                        else
                        {
                           §§push(_loc6_);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr104);
               }
            }
            addr157:
            return _loc6_;
         }
         §§goto(addr45);
      }
      
      public static function §#h§(param1:b2Body, param2:b2Body) : Rectangle
      {
         var _loc3_:b2Shape = param1.§7!Y§().GetShape().Copy();
         var _loc4_:b2Transform = param1.§>!H§();
         var _loc5_:b2Shape = param2.§7!Y§().GetShape().Copy();
         var _loc6_:b2Transform = param2.§>!H§();
         var _loc7_:Rectangle = §"^§.§3Q§(_loc3_,_loc4_,§"^§.§]z§);
         var _loc8_:Rectangle = §"^§.§3Q§(_loc5_,_loc6_,§"^§.§]z§);
         return _loc7_.intersection(_loc8_);
      }
      
      public static function §]!5§(param1:b2Body, param2:Number = 0) : Rectangle
      {
         var _loc3_:b2Shape = param1.§7!Y§().GetShape().Copy();
         var _loc4_:b2Transform = param1.§>!H§();
         return §"^§.§3Q§(_loc3_,_loc4_,param2);
      }
      
      public static function §3Q§(param1:b2Shape, param2:b2Transform, param3:Number = 0) : Rectangle
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
         if(_loc13_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(-Number.MAX_VALUE);
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc14_ && §"^§))
         {
            §§push(param1 is b2CircleShape);
            if(!(_loc14_ && §"^§))
            {
               if(§§pop())
               {
                  if(_loc13_)
                  {
                     §§push((param1 as b2CircleShape).§?'§());
                     if(_loc13_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc8_ = §§pop();
                     if(_loc13_ || param3)
                     {
                        addr96:
                        §§push((_loc9_ = param2.position).x - _loc8_ < _loc4_);
                        if(!(_loc14_ && param2))
                        {
                           if(§§pop())
                           {
                              addr129:
                              §§push(Number(Number(_loc9_.x - _loc8_)));
                              if(!_loc14_)
                              {
                                 _loc4_ = §§pop();
                                 §§push(_loc9_.x);
                                 §§push(_loc8_);
                                 if(!(_loc14_ && param2))
                                 {
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc6_);
                                    if(_loc13_ || §"^§)
                                    {
                                       addr152:
                                       §§push(§§pop() > §§pop());
                                       if(!(_loc14_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(_loc9_.x);
                                                if(!_loc14_)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc14_)
                                                      {
                                                         addr206:
                                                         §§push(Number(Number(§§pop())));
                                                         if(_loc13_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            §§push(_loc9_.y);
                                                            if(_loc13_)
                                                            {
                                                               addr214:
                                                               §§push(§§pop() - _loc8_ < _loc5_);
                                                               if(_loc13_)
                                                               {
                                                                  addr220:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        addr223:
                                                                        §§push(_loc9_.y);
                                                                        if(_loc13_)
                                                                        {
                                                                           addr228:
                                                                           §§push(§§pop() - _loc8_);
                                                                           if(_loc13_ || param3)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr249:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(!(_loc14_ && §"^§))
                                                                                    {
                                                                                       addr264:
                                                                                       §§push(_loc9_.y + _loc8_);
                                                                                       §§push(_loc7_);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr268:
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             §§push(_loc9_.y);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                addr281:
                                                                                                §§push(Number(Number(§§pop() + _loc8_)));
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr278:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§goto(addr281);
                                                                                                }
                                                                                             }
                                                                                             addr282:
                                                                                             _loc7_ = §§pop();
                                                                                             return new Rectangle(_loc4_ - param3,_loc5_ - param3,_loc6_ - _loc4_ + param3,_loc7_ - _loc5_ + param3);
                                                                                             addr283:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr283);
                                                                                 }
                                                                              }
                                                                              §§goto(addr281);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr241:
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc14_ && param3))
                                                                           {
                                                                              §§goto(addr249);
                                                                           }
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr223);
                                          }
                                          else
                                          {
                                             §§push(_loc6_);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc14_ && §"^§))
                                                {
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr282);
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr206);
                           }
                           else
                           {
                              §§push(_loc4_);
                              if(!(_loc14_ && param3))
                              {
                                 §§goto(addr129);
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr282);
                  }
                  addr288:
                  _loc10_ = (param1 as b2PolygonShape).§+F§();
                  if(_loc13_)
                  {
                     _loc11_ = 0;
                  }
                  while(_loc11_ < _loc10_.length)
                  {
                     _loc12_ = b2Math.§#!N§(param2,_loc10_[_loc11_]);
                     if(!_loc14_)
                     {
                        §§push(Number(Math.min(_loc12_.x,_loc4_)));
                        if(!(_loc14_ && param3))
                        {
                           _loc4_ = §§pop();
                           if(!(_loc13_ || param3))
                           {
                              continue;
                           }
                           §§push(Number(Math.max(_loc12_.x,_loc6_)));
                           if(!(_loc14_ && §"^§))
                           {
                              _loc6_ = §§pop();
                              if(_loc13_)
                              {
                                 §§push(Number(Math.min(_loc12_.y,_loc5_)));
                                 if(!_loc14_)
                                 {
                                    addr355:
                                    _loc5_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       addr364:
                                       _loc7_ = Number(Math.max(_loc12_.y,_loc7_));
                                       if(!(_loc13_ || param3))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc11_++;
                                    continue;
                                 }
                              }
                              §§goto(addr364);
                           }
                        }
                        §§goto(addr355);
                     }
                     §§goto(addr364);
                  }
               }
               else
               {
                  addr287:
                  if(param1 is b2PolygonShape)
                  {
                     §§goto(addr288);
                  }
               }
               §§goto(addr282);
            }
            §§goto(addr287);
         }
         §§goto(addr96);
      }
   }
}
