package §%4§
{
   import §2k§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §!8§:Vector.<§1!-§>;
      
      private static var s_clipPoints1:Vector.<§1!-§>;
      
      private static var s_clipPoints2:Vector.<§1!-§>;
      
      private static var § !-§:Vector.<int>;
      
      private static var §8!H§:Vector.<int>;
      
      private static var §"!G§:b2Vec2;
      
      private static var § !w§:b2Vec2;
      
      private static var §[!u§:b2Vec2;
      
      private static var §4!+§:b2Vec2;
      
      private static var §2!R§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            b2_nullFeature = 255;
         }
         loop0:
         while(true)
         {
            §!8§ = §'!L§();
            loop1:
            while(true)
            {
               s_clipPoints1 = §'!L§();
               loop2:
               while(true)
               {
                  s_clipPoints2 = §'!L§();
                  loop3:
                  while(true)
                  {
                     § !-§ = new Vector.<int>(1);
                     loop4:
                     while(true)
                     {
                        §8!H§ = new Vector.<int>(1);
                        while(true)
                        {
                           §"!G§ = new b2Vec2();
                           continue loop3;
                           addr82:
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 s_v11 = new b2Vec2();
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc1_)
                                       {
                                          s_v12 = new b2Vec2();
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    addr126:
                                    while(true)
                                    {
                                       §[!u§ = new b2Vec2();
                                       while(true)
                                       {
                                          §4!+§ = new b2Vec2();
                                          loop9:
                                          while(!_loc2_)
                                          {
                                             §2!R§ = new b2Vec2();
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   s_tangent2 = new b2Vec2();
                                                   continue;
                                                }
                                                continue loop9;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §,Z§(param1:Vector.<§1!-§>, param2:Vector.<§1!-§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§1!-§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§1!-§ = null;
         if(_loc15_ || b2Collision)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc15_)
         {
            §§push(param3.x);
            if(!_loc14_)
            {
               §§push(_loc7_.x);
               if(!(_loc14_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && param3))
                  {
                     §§push(param3.y);
                     if(_loc15_ || param3)
                     {
                        §§push(_loc7_.y);
                        if(!_loc14_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc14_ && param2))
                           {
                              addr106:
                              §§push(§§pop() + §§pop());
                              if(!(_loc14_ && param3))
                              {
                                 §§push(param4);
                                 if(!(_loc14_ && param2))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc14_ && param2))
                                    {
                                       addr130:
                                       §§push(Number(§§pop()));
                                       if(!_loc14_)
                                       {
                                          _loc9_ = §§pop();
                                          addr134:
                                          §§push(param3.x);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(_loc8_.x);
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   §§push(param3.y);
                                                   if(!(_loc14_ && b2Collision))
                                                   {
                                                      addr166:
                                                      §§push(§§pop() * _loc8_.y);
                                                      if(!(_loc14_ && b2Collision))
                                                      {
                                                         addr174:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc15_ || param1)
                                                         {
                                                            addr183:
                                                            addr182:
                                                            §§push(§§pop() - param4);
                                                            if(_loc15_ || param3)
                                                            {
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               §§push(_loc9_);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr315:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() <= §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           param1[_loc6_++].Set(param2[0]);
                                                                           addr326:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr316:
                                                                     }
                                                                     addr287:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr174);
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    §§goto(addr183);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr130);
               }
               §§goto(addr106);
            }
            §§goto(addr183);
         }
         §§goto(addr134);
      }
      
      public static function §8"%§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§6!-§);
         if(!(_loc27_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§^c§;
         var _loc8_:Vector.<b2Vec2> = param1.§#`§;
         §§push(param4.§6!-§);
         if(!_loc27_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§^c§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc26_ || param3)
         {
            §§push(_loc12_.x);
            if(_loc26_)
            {
               §§push(§§pop() * §§pop());
               if(_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(!(_loc27_ && b2Collision))
                  {
                     addr89:
                     §§push(§§pop() * _loc12_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc27_)
                  {
                  }
                  addr96:
                  var _loc13_:* = §§pop();
                  §§push(_loc11_.col1.y);
                  if(_loc26_ || param1)
                  {
                     §§push(_loc12_.x);
                     if(!_loc27_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc27_)
                        {
                           §§push(_loc11_.col2.y);
                           if(!(_loc27_ && param2))
                           {
                              addr127:
                              §§push(§§pop() + §§pop() * _loc12_.y);
                              if(_loc26_)
                              {
                                 addr130:
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr127);
                        }
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(!_loc27_)
                        {
                           §§push(_loc13_);
                           if(_loc26_ || param3)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc26_ || b2Collision)
                              {
                                 addr157:
                                 §§push(_loc11_.col1.y);
                                 if(!_loc27_)
                                 {
                                    addr162:
                                    §§push(§§pop() * _loc14_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc26_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc15_:* = §§pop();
                              §§push(_loc11_.col2.x);
                              if(_loc26_ || param1)
                              {
                                 §§push(_loc13_);
                                 if(!_loc27_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc27_)
                                    {
                                       §§push(_loc11_.col2.y);
                                       if(!(_loc27_ && b2Collision))
                                       {
                                          addr195:
                                          §§push(§§pop() * _loc14_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc27_ && b2Collision))
                                       {
                                          addr206:
                                          var _loc16_:Number = §§pop();
                                          var _loc17_:* = 0;
                                          var _loc18_:Number = Number.MAX_VALUE;
                                          var _loc19_:int = 0;
                                          while(_loc19_ < _loc9_)
                                          {
                                             §§push((_loc12_ = _loc10_[_loc19_]).x);
                                             if(!(_loc27_ && param3))
                                             {
                                                §§push(_loc15_);
                                                if(!(_loc27_ && param3))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc26_)
                                                   {
                                                      §§push(_loc12_.y);
                                                      if(_loc26_ || param3)
                                                      {
                                                         §§push(§§pop() * _loc16_);
                                                         if(_loc26_)
                                                         {
                                                            addr255:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc27_ && param3))
                                                            {
                                                               addr263:
                                                               §§push(Number(§§pop()));
                                                               if(_loc26_ || param3)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc27_ && b2Collision))
                                                                  {
                                                                     addr279:
                                                                     _loc25_ = §§pop();
                                                                     if(_loc27_ && param2)
                                                                     {
                                                                     }
                                                                     addr305:
                                                                     _loc18_ = §§pop();
                                                                     addr304:
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(_loc19_);
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        _loc17_ = §§pop();
                                                                        if(_loc26_ || b2Collision)
                                                                        {
                                                                           addr330:
                                                                           _loc19_++;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr288:
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(_loc26_ || b2Collision)
                                                                     {
                                                                        §§push(_loc25_);
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§goto(addr304);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr288);
                                                               §§push(_loc18_);
                                                            }
                                                            §§goto(addr305);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr263);
                                                }
                                             }
                                             §§goto(addr279);
                                          }
                                          _loc12_ = _loc7_[param3];
                                          _loc11_ = param2.R;
                                          §§push(param2.position.x);
                                          if(_loc26_ || param1)
                                          {
                                             §§push(_loc11_.col1.x);
                                             if(!(_loc27_ && param2))
                                             {
                                                §§push(_loc12_.x);
                                                if(!(_loc27_ && b2Collision))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc26_)
                                                   {
                                                      addr375:
                                                      §§push(_loc11_.col2.x);
                                                      if(!(_loc27_ && param3))
                                                      {
                                                         addr388:
                                                         §§push(§§pop() + §§pop() * _loc12_.y);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc27_)
                                                   {
                                                      addr393:
                                                      var _loc20_:Number = §§pop();
                                                      §§push(param2.position.y);
                                                      if(!_loc27_)
                                                      {
                                                         §§push(_loc11_.col1.y);
                                                         if(!(_loc27_ && param1))
                                                         {
                                                            §§push(_loc12_.x);
                                                            if(!_loc27_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc27_)
                                                               {
                                                                  addr430:
                                                                  §§push(_loc11_.col2.y);
                                                                  if(!(_loc27_ && b2Collision))
                                                                  {
                                                                     addr426:
                                                                     §§push(§§pop() * _loc12_.y);
                                                                  }
                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                  if(!(_loc27_ && param3))
                                                                  {
                                                                     addr438:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  _loc12_ = _loc10_[_loc17_];
                                                                  _loc11_ = param5.R;
                                                                  §§push(param5.position.x);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(_loc11_.col1.x);
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc27_)
                                                                           {
                                                                              addr466:
                                                                              §§push(_loc11_.col2.x);
                                                                              if(_loc26_)
                                                                              {
                                                                                 addr474:
                                                                                 §§push(§§pop() + §§pop() * _loc12_.y);
                                                                              }
                                                                              §§goto(addr474);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc26_ || param3)
                                                                           {
                                                                              addr483:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc22_:* = §§pop();
                                                                           §§push(param5.position.y);
                                                                           if(_loc26_ || param3)
                                                                           {
                                                                              §§push(_loc11_.col1.y);
                                                                              if(_loc26_ || b2Collision)
                                                                              {
                                                                                 §§push(_loc12_.x);
                                                                                 if(_loc26_ || param3)
                                                                                 {
                                                                                    addr536:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc27_ && b2Collision))
                                                                                    {
                                                                                       §§push(_loc11_.col2.y);
                                                                                       if(!(_loc27_ && b2Collision))
                                                                                       {
                                                                                          §§push(§§pop() * _loc12_.y);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc27_ && param1))
                                                                                    {
                                                                                       addr545:
                                                                                       var _loc23_:* = Number(§§pop());
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          §§push(_loc22_);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(_loc26_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc27_ && param2))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc26_ || param1)
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         addr573:
                                                                                                         §§push(_loc23_);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(_loc21_);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  addr582:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr585:
                                                                                                                     _loc23_ = §§pop();
                                                                                                                     addr586:
                                                                                                                     §§push(_loc22_);
                                                                                                                     if(_loc26_ || b2Collision)
                                                                                                                     {
                                                                                                                        addr594:
                                                                                                                        §§push(_loc13_);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc27_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc23_);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc14_);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    addr617:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr637);
                                                                                                                     }
                                                                                                                     addr637:
                                                                                                                     return §§pop();
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr617);
                                                                                                      }
                                                                                                      §§goto(addr586);
                                                                                                   }
                                                                                                   §§goto(addr585);
                                                                                                }
                                                                                                §§goto(addr582);
                                                                                             }
                                                                                             §§goto(addr617);
                                                                                          }
                                                                                          §§goto(addr594);
                                                                                       }
                                                                                       §§goto(addr573);
                                                                                    }
                                                                                    §§goto(addr545);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr536);
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                        §§goto(addr474);
                                                                     }
                                                                     §§goto(addr466);
                                                                  }
                                                                  §§goto(addr483);
                                                               }
                                                               §§goto(addr430);
                                                            }
                                                            §§goto(addr426);
                                                         }
                                                         §§goto(addr430);
                                                      }
                                                      §§goto(addr438);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                §§goto(addr388);
                                             }
                                             §§goto(addr375);
                                          }
                                          §§goto(addr393);
                                       }
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr130);
               }
               §§goto(addr96);
               §§push(Number(§§pop()));
            }
            §§goto(addr89);
         }
         §§goto(addr96);
      }
      
      public static function §0"2§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§6!-§);
         if(!(_loc26_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§#`§;
         _loc9_ = param5.R;
         _loc8_ = param4.§="2§;
         §§push(param5.position.x);
         if(_loc27_ || b2Collision)
         {
            §§push(_loc9_.col1.x);
            if(_loc27_ || param2)
            {
               §§push(_loc8_.x);
               if(_loc27_)
               {
                  addr95:
                  §§push(§§pop() * §§pop());
                  if(_loc27_ || b2Collision)
                  {
                     §§push(_loc9_.col2.x);
                     if(!_loc26_)
                     {
                        §§push(§§pop() * _loc8_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc26_ && param3))
                  {
                     addr103:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc26_)
                  {
                     §§push(_loc9_.col1.y);
                     if(!_loc26_)
                     {
                        §§push(_loc8_.x);
                        if(!_loc26_)
                        {
                           addr141:
                           §§push(§§pop() * §§pop());
                           if(_loc27_ || param2)
                           {
                              §§push(_loc9_.col2.y);
                              if(_loc27_ || param1)
                              {
                                 §§push(§§pop() * _loc8_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc27_ || param2)
                           {
                              addr150:
                              var _loc11_:* = Number(§§pop());
                              _loc9_ = param3.R;
                              _loc8_ = param2.§="2§;
                              if(!_loc26_)
                              {
                                 §§push(_loc10_);
                                 if(_loc27_ || param2)
                                 {
                                    §§push(param3.position);
                                    if(!(_loc26_ && b2Collision))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc26_ && param3))
                                       {
                                          §§push(_loc9_.col1);
                                          if(!(_loc26_ && b2Collision))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc27_)
                                             {
                                                §§push(_loc8_.x);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc27_ || param3)
                                                   {
                                                      addr210:
                                                      §§push(_loc9_.col2);
                                                      if(!(_loc26_ && param2))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc27_)
                                                         {
                                                            §§push(_loc8_.y);
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc27_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc26_ && param3))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc26_ && param1))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc27_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc26_)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(_loc27_ || param2)
                                                                                 {
                                                                                    addr269:
                                                                                    §§push(param3.position.y);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc9_.col1);
                                                                                       if(_loc27_ || param2)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc27_ || param1)
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc27_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   addr301:
                                                                                                   §§push(_loc9_.col2.y);
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      addr309:
                                                                                                      §§push(§§pop() + §§pop() * _loc8_.y);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc27_ || param1)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  addr327:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     addr330:
                                                                                                                     §§push(param3.R.col1.x);
                                                                                                                     if(_loc27_ || param3)
                                                                                                                     {
                                                                                                                        addr341:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                        {
                                                                                                                           addr349:
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              addr357:
                                                                                                                              §§push(§§pop() + §§pop() * param3.R.col1.y);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr360:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr357);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr357);
                                                                                                                  }
                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(param3.R.col2.x);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           if(!(_loc26_ && param3))
                                                                                                                           {
                                                                                                                              addr382:
                                                                                                                              §§push(§§pop() * param3.R.col2.y);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              addr390:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc13_:* = §§pop();
                                                                                                                           var _loc14_:* = 0;
                                                                                                                           §§push(-Number.MAX_VALUE);
                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc15_:* = §§pop();
                                                                                                                           var _loc16_:int = 0;
                                                                                                                           while(_loc16_ < _loc6_)
                                                                                                                           {
                                                                                                                              §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 if(_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_.y);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(!(_loc26_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr468:
                                                                                                                                                _loc15_ = Number(§§pop());
                                                                                                                                                addr467:
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr471:
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   if(!_loc27_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                _loc16_++;
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc27_ || param3)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr461:
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc25_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr467);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr468);
                                                                                                                                                }
                                                                                                                                                §§goto(addr471);
                                                                                                                                             }
                                                                                                                                             §§goto(addr468);
                                                                                                                                          }
                                                                                                                                          §§goto(addr461);
                                                                                                                                       }
                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          addr460:
                                                                                                                                          §§goto(addr461);
                                                                                                                                          §§push(_loc15_);
                                                                                                                                       }
                                                                                                                                       §§goto(addr468);
                                                                                                                                    }
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                                 §§goto(addr461);
                                                                                                                              }
                                                                                                                              §§goto(addr468);
                                                                                                                           }
                                                                                                                           §§push(§8"%§(param2,param3,_loc14_,param4,param5));
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           var _loc17_:* = §§pop();
                                                                                                                           if(_loc27_ || b2Collision)
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= 0)
                                                                                                                                    {
                                                                                                                                       addr509:
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                          if(_loc27_ || b2Collision)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             if(_loc27_ || param2)
                                                                                                                                             {
                                                                                                                                                addr556:
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                addr543:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr548:
                                                                                                                                                §§push(int(§§pop() - 1));
                                                                                                                                                if(_loc27_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr556);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc18_:* = §§pop();
                                                                                                                                             §§push(§8"%§(param2,param3,_loc18_,param4,param5));
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             var _loc19_:* = §§pop();
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc14_);
                                                                                                                                                if(_loc27_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() < _loc6_)
                                                                                                                                                         {
                                                                                                                                                            addr611:
                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               addr597:
                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                            }
                                                                                                                                                            var _loc20_:* = §§pop();
                                                                                                                                                            §§push(§8"%§(param2,param3,_loc20_,param4,param5));
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc21_:* = §§pop();
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               loop1:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                  loop2:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     if(_loc27_ || b2Collision)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop48:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr1068:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 addr1031:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                    addr1032:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1033:
                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                       if(!(_loc26_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1067:
                                                                                                                                                                        }
                                                                                                                                                                        loop3:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                              loop4:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                 loop5:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          param1[0] = _loc14_;
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop51:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                          loop52:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                                                                loop53:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                      loop54:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                            loop56:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                               loop57:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop58:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc23_ = §§pop();
                                                                                                                                                                                                                     loop59:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop16:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop17:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc24_);
                                                                                                                                                                                                                              loop18:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                                                                 loop19:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          loop20:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - 1);
                                                                                                                                                                                                                                             loop21:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                loop22:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                   loop23:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                         if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop27:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                                                                                                                               loop28:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop29:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§8"%§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                                                                     addr710:
                                                                                                                                                                                                                                                                     loop30:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break loop28;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop4;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        loop31:
                                                                                                                                                                                                                                                                        while(_loc27_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop21;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc17_ = §§pop();
                                                                                                                                                                                                                                                                              loop32:
                                                                                                                                                                                                                                                                              while(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop30;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc26_ && b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop59;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr801:
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr839:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ && param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr880:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                                                                                                                    addr881:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop52;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             loop26:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                                                                                                                                addr934:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop54;
                                                                                                                                                                                                                                                                                                                                          addr952:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop55;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr880:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr894:
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                                                    addr895:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       continue loop29;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr894:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 addr1016:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1015:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        break loop31;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr934);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr961);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr881);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop27;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr894);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr890:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr1028:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                               break loop32;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1027:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                         addr933:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr932:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr934);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr894);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr895);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr801);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr827:
                                                                                                                                                                                                                                                                                          if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr678:
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!(_loc27_ || b2Collision))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                          addr690:
                                                                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop29;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr880);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       param1[0] = _loc22_;
                                                                                                                                                                                                                                                                                       if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc27_ || b2Collision)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && b2Collision))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop27;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr933);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr852);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr678);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr880);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1068);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr827);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr678);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop53;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc27_ || param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr932);
                                                                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop5;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       loop9:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                                                                          addr1019:
                                                                                                                                                                                                                                                                                          while(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1027);
                                                                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1043:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1015);
                                                                                                                                                                                                                                                                                 §§goto(addr745);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr745:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr753);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr890);
                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1031);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop5;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop17;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1042:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1043);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1028);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr915);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr839);
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
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1016);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1019);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1032);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr966:
                                                                                                                                                                                 return §§pop();
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1042);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1067);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1005);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr610:
                                                                                                                                                               §§goto(addr611);
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr611);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr610);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr611);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr597);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr611);
                                                                                                                                          }
                                                                                                                                          §§goto(addr548);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr548);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                                 §§goto(addr548);
                                                                                                                              }
                                                                                                                              §§goto(addr543);
                                                                                                                           }
                                                                                                                           §§goto(addr509);
                                                                                                                        }
                                                                                                                        §§goto(addr390);
                                                                                                                     }
                                                                                                                     §§goto(addr382);
                                                                                                                  }
                                                                                                                  §§goto(addr390);
                                                                                                               }
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                            §§goto(addr330);
                                                                                                         }
                                                                                                         §§goto(addr341);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr309);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              §§goto(addr327);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr330);
                                                                     }
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                   }
                                                   §§goto(addr301);
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr210);
                                          }
                                       }
                                       §§goto(addr357);
                                    }
                                    §§goto(addr269);
                                 }
                                 §§goto(addr360);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr150);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr150);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr95);
         }
         §§goto(addr103);
      }
      
      public static function §8!d§(param1:Vector.<§1!-§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§1!-§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§6!-§);
         if(!_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§#`§;
         §§push(param5.§6!-§);
         if(_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§^c§;
         var _loc11_:Vector.<b2Vec2> = param5.§#`§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(!(_loc24_ && param2))
         {
            §§push(_loc13_.x);
            if(!_loc24_)
            {
               §§push(§§pop() * §§pop());
               if(_loc25_)
               {
                  addr78:
                  §§push(_loc12_.col2.x);
                  if(_loc25_ || b2Collision)
                  {
                     addr91:
                     §§push(§§pop() + §§pop() * _loc13_.y);
                     if(_loc25_ || param1)
                     {
                        addr99:
                        §§push(Number(§§pop()));
                     }
                     var _loc14_:* = §§pop();
                     §§push(_loc12_.col1.y);
                     if(_loc25_)
                     {
                        §§push(_loc13_.x);
                        if(_loc25_ || b2Collision)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc25_ || param2)
                           {
                              §§push(_loc12_.col2.y);
                              if(_loc25_)
                              {
                                 addr128:
                                 §§push(§§pop() * _loc13_.y);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc24_)
                              {
                              }
                              addr135:
                              var _loc15_:* = §§pop();
                              §§push((_loc12_ = param6.R).col1.x);
                              if(!(_loc24_ && b2Collision))
                              {
                                 §§push(_loc14_);
                                 if(!(_loc24_ && param1))
                                 {
                                    addr177:
                                    §§push(§§pop() * §§pop());
                                    if(_loc25_)
                                    {
                                       §§push(_loc12_.col1.y);
                                       if(!_loc24_)
                                       {
                                          §§push(§§pop() * _loc15_);
                                       }
                                    }
                                    var _loc16_:* = §§pop();
                                    if(_loc25_ || param1)
                                    {
                                       §§push(_loc12_.col2.x);
                                       if(!(_loc24_ && param1))
                                       {
                                          §§push(_loc14_);
                                          if(!(_loc24_ && param3))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc25_)
                                             {
                                                §§push(_loc12_.col2.y);
                                                if(!_loc24_)
                                                {
                                                   addr213:
                                                   §§push(§§pop() + §§pop() * _loc15_);
                                                   if(_loc24_ && param2)
                                                   {
                                                   }
                                                   addr241:
                                                   _loc14_ = §§pop();
                                                   addr242:
                                                   var _loc17_:* = 0;
                                                   var _loc18_:* = Number(Number.MAX_VALUE);
                                                   var _loc19_:int = 0;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(_loc19_);
                                                      if(!_loc24_)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc24_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc17_);
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            _loc13_ = _loc11_[_loc19_];
                                                            if(!_loc24_)
                                                            {
                                                               §§push(_loc14_);
                                                               if(!(_loc24_ && param2))
                                                               {
                                                                  §§push(_loc13_.x);
                                                                  if(_loc25_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(_loc25_ || param2)
                                                                        {
                                                                           addr310:
                                                                           §§push(§§pop() * _loc13_.y);
                                                                           if(!(_loc24_ && b2Collision))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc24_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc25_ || param1)
                                                                                 {
                                                                                    addr331:
                                                                                    §§push(§§pop());
                                                                                    if(_loc25_)
                                                                                    {
                                                                                       _loc23_ = §§pop();
                                                                                       if(_loc24_)
                                                                                       {
                                                                                       }
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc18_ = §§pop();
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc19_);
                                                                                                if(_loc25_ || b2Collision)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                                _loc17_ = §§pop();
                                                                                                loop4:
                                                                                                for(; !_loc24_; while(true)
                                                                                                {
                                                                                                   _loc19_++;
                                                                                                   if(!(_loc25_ || b2Collision))
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr339:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc23_);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                },continue loop0)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr343:
                                                                                    }
                                                                                    addr338:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr260);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                                 §§push(_loc18_);
                                                                              }
                                                                              §§goto(addr343);
                                                                           }
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         addr357:
                                                         var _loc21_:* = §§pop();
                                                         if(!(_loc24_ && b2Collision))
                                                         {
                                                            §§push(1);
                                                            if(_loc25_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc24_ && param1))
                                                               {
                                                                  if(§§pop() < _loc9_)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     if(_loc25_)
                                                                     {
                                                                        addr384:
                                                                        addr383:
                                                                        addr382:
                                                                        §§push(int(§§pop() + 1));
                                                                        if(_loc24_ && param1)
                                                                        {
                                                                        }
                                                                        addr397:
                                                                        var _loc22_:* = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        if(_loc25_)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(param6.position);
                                                                              addr608:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc25_)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc25_ || param2)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_.col2);
                                                                                                addr628:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                }
                                                                                             }
                                                                                             addr626:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_.y);
                                                                                             addr631:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr632:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr629:
                                                                                       }
                                                                                       addr633:
                                                                                       addr519:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§push(_loc12_.col1);
                                                                                       if(!(_loc25_ || param3))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(!(_loc24_ && param3))
                                                                                          {
                                                                                             if(_loc25_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   if(_loc25_ || b2Collision)
                                                                                                   {
                                                                                                      §§push(_loc12_.col2);
                                                                                                      if(_loc25_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc24_ && b2Collision))
                                                                                                         {
                                                                                                            addr574:
                                                                                                            if(_loc25_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc13_.y);
                                                                                                               if(_loc25_ || b2Collision)
                                                                                                               {
                                                                                                                  addr591:
                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     addr595:
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     loop19:
                                                                                                                     for(; !(_loc24_ && param3); if(!(_loc25_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },§§push(_loc20_.id),if(_loc25_)
                                                                                                                     {
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§2!U§);
                                                                                                                           if(_loc25_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc25_ || param1)
                                                                                                                                 {
                                                                                                                                    §§goto(addr450);
                                                                                                                                 }
                                                                                                                                 §§goto(addr465);
                                                                                                                              }
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                           §§goto(addr464);
                                                                                                                        }
                                                                                                                        §§goto(addr491);
                                                                                                                     },§§goto(addr463))
                                                                                                                     {
                                                                                                                        §§push(_loc20_.id);
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§2!U§);
                                                                                                                           addr492:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param4);
                                                                                                                              loop22:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().§%;§ = §§pop();
                                                                                                                                 addr494:
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc20_.id);
                                                                                                                                       addr463:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§2!U§);
                                                                                                                                          addr464:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc21_);
                                                                                                                                             addr465:
                                                                                                                                             while(_loc25_ || param3)
                                                                                                                                             {
                                                                                                                                                §§pop().§0!I§ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc24_ && b2Collision))
                                                                                                                                                   {
                                                                                                                                                      continue loop19;
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                   addr450:
                                                                                                                                                   §§pop().§;!2§ = §§pop();
                                                                                                                                                   if(_loc24_ && b2Collision)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   _loc20_ = param1[1];
                                                                                                                                                   _loc13_ = _loc10_[_loc22_];
                                                                                                                                                   _loc12_ = param6.R;
                                                                                                                                                   if(_loc25_ || param2)
                                                                                                                                                   {
                                                                                                                                                      addr852:
                                                                                                                                                      addr854:
                                                                                                                                                      addr879:
                                                                                                                                                      addr851:
                                                                                                                                                      addr849:
                                                                                                                                                      addr880:
                                                                                                                                                      addr848:
                                                                                                                                                      addr846:
                                                                                                                                                      §§push(_loc20_.v);
                                                                                                                                                      §§push(param6.position.x);
                                                                                                                                                      §§push(_loc12_.col1.x * _loc13_.x);
                                                                                                                                                      if(_loc25_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr877:
                                                                                                                                                         §§push(§§pop() + _loc12_.col2.x * _loc13_.y);
                                                                                                                                                      }
                                                                                                                                                      §§pop().x = §§pop() + §§pop();
                                                                                                                                                      addr881:
                                                                                                                                                      §§push(_loc20_.v);
                                                                                                                                                      if(_loc25_ || b2Collision)
                                                                                                                                                      {
                                                                                                                                                         §§push(param6.position);
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(_loc25_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc24_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc24_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_.col1);
                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                        if(_loc25_ || b2Collision)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_.x);
                                                                                                                                                                           if(!(_loc24_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc25_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr793:
                                                                                                                                                                                    if(!(_loc24_ && b2Collision))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_.col2);
                                                                                                                                                                                       if(_loc25_ || b2Collision)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(!(_loc24_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr817:
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc13_.y);
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr826:
                                                                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                      if(_loc25_ || b2Collision)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr835:
                                                                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                         addr836:
                                                                                                                                                                                                         if(!(_loc24_ && param3))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr717:
                                                                                                                                                                                                            _loc20_.id.§2!U§.§%;§ = param4;
                                                                                                                                                                                                            addr718:
                                                                                                                                                                                                            addr716:
                                                                                                                                                                                                            addr715:
                                                                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr701:
                                                                                                                                                                                                               §§push(_loc20_.id);
                                                                                                                                                                                                               if(!(_loc24_ && b2Collision))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr710:
                                                                                                                                                                                                                  §§pop().§2!U§.§0!I§ = _loc22_;
                                                                                                                                                                                                                  addr711:
                                                                                                                                                                                                                  addr709:
                                                                                                                                                                                                                  §§push(_loc20_.id);
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().§2!U§);
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc25_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc24_ && b2Collision))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§;!2§ = §§pop();
                                                                                                                                                                                                                                 if(_loc25_ || b2Collision)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr718);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr711);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr717);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr710);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr716);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr701);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr715);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr836);
                                                                                                                                                                                                            addr843:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr881);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr852);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr854);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr877);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr826);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr877);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr879);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr826);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr877);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr817);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr793);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr851);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr849);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr880);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr835);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr848);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr846);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr843);
                                                                                                                                                }
                                                                                                                                                continue loop20;
                                                                                                                                             }
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§goto(addr626);
                                                                                                               }
                                                                                                               §§goto(addr631);
                                                                                                            }
                                                                                                            §§goto(addr629);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr628);
                                                                                                   }
                                                                                                   §§goto(addr633);
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             §§goto(addr632);
                                                                                          }
                                                                                          §§goto(addr574);
                                                                                       }
                                                                                       §§goto(addr591);
                                                                                    }
                                                                                 }
                                                                                 addr634:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    continue loop8;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr494);
                                                                     }
                                                                     addr396:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§goto(addr396);
                                                                     }
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr383);
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr357);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr213);
                                             }
                                             §§push(Number(§§pop()));
                                             if(!(_loc24_ && b2Collision))
                                             {
                                                _loc15_ = §§pop();
                                                if(_loc25_)
                                                {
                                                   §§push(_loc16_);
                                                   if(_loc25_ || param3)
                                                   {
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr213);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc24_ && b2Collision))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr135);
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr91);
               }
               §§goto(addr99);
            }
            §§goto(addr91);
         }
         §§goto(addr78);
      }
      
      private static function §'!L§() : Vector.<§1!-§>
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Vector.<§1!-§> = new Vector.<§1!-§>(2);
         if(_loc2_ || b2Collision)
         {
            _loc1_[0] = new §1!-§();
         }
         do
         {
            _loc1_[1] = new §1!-§();
         }
         while(_loc3_);
         
         return _loc1_;
      }
      
      public static function §`!e§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§1!-§ = null;
         var _loc12_:b2PolygonShape = null;
         var _loc13_:b2PolygonShape = null;
         var _loc14_:b2Transform = null;
         var _loc15_:b2Transform = null;
         var _loc16_:* = 0;
         var _loc17_:uint = 0;
         var _loc20_:b2Mat22 = null;
         var _loc25_:b2Vec2 = null;
         var _loc39_:int = 0;
         var _loc42_:Number = NaN;
         var _loc43_:b2ManifoldPoint = null;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         if(_loc46_ || b2Collision)
         {
            param1.§`!>§ = 0;
         }
         var _loc7_:Number = param2.§&!$§ + param4.§&!$§;
         var _loc8_:* = 0;
         if(_loc46_)
         {
            § !-§[0] = _loc8_;
         }
         §§push(§0"2§(§ !-§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_)
         {
            §§push(int(§ !-§[0]));
            if(!(_loc47_ && b2Collision))
            {
               _loc8_ = §§pop();
               if(!_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc46_)
                     {
                        §§goto(addr110);
                     }
                  }
               }
               §§push(0);
            }
            var _loc10_:* = §§pop();
            if(!(_loc47_ && param2))
            {
               §8!H§[0] = _loc10_;
            }
            §§push(§0"2§(§8!H§,param4,param5,param2,param3));
            if(_loc46_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_)
            {
               _loc10_ = int(§8!H§[0]);
               if(!_loc47_)
               {
                  §§push(_loc11_);
                  if(_loc46_ || param2)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!_loc47_)
                        {
                           §§goto(addr161);
                        }
                        else
                        {
                           addr162:
                           §§push(0.98);
                           if(_loc46_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     §§goto(addr162);
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!(_loc47_ && b2Collision))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(_loc46_ || param1)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(!(_loc47_ && param2))
                     {
                        §§push(_loc9_);
                        if(!(_loc47_ && param3))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc46_)
                           {
                              addr205:
                              §§push(§§pop() + _loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr207:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(_loc46_)
                              {
                                 §§push(_loc10_);
                                 loop36:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop37:
                                    while(true)
                                    {
                                       _loc16_ = §§pop();
                                       addr260:
                                       while(true)
                                       {
                                          addr251:
                                          while(true)
                                          {
                                             param1.§0!,§ = b2Manifold.§&O§;
                                             addr256:
                                             while(true)
                                             {
                                                §§push(1);
                                                if(_loc47_ && param1)
                                                {
                                                   break;
                                                }
                                                continue loop36;
                                             }
                                             continue loop37;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr249);
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(_loc46_)
                              {
                                 §§push(_loc8_);
                                 if(!(_loc47_ && param2))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    _loc16_ = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       addr287:
                                       while(true)
                                       {
                                          param1.§0!,§ = b2Manifold.§`!5§;
                                          addr292:
                                          while(true)
                                          {
                                             if(!(_loc47_ && param1))
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr285);
                           }
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr207);
               }
               §§goto(addr162);
            }
            addr161:
            return;
         }
         addr110:
      }
      
      public static function §!!k§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc16_)
         {
            param1.§`!>§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§!X§;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc6_.col1.x);
            if(_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc17_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     addr58:
                     §§push(_loc6_.col2.x);
                     if(!(_loc16_ && param1))
                     {
                        addr71:
                        §§push(§§pop() + §§pop() * _loc7_.y);
                     }
                     §§goto(addr71);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc16_ && param3))
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc17_)
                  {
                     §§push(_loc6_.col1.y);
                     if(_loc17_)
                     {
                        §§push(_loc7_.x);
                        if(!_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc16_ && param3))
                           {
                              addr104:
                              §§push(_loc6_.col2.y);
                              if(_loc17_ || b2Collision)
                              {
                                 addr114:
                                 §§push(§§pop() * _loc7_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc16_)
                           {
                              addr121:
                              §§push(Number(§§pop()));
                           }
                           var _loc9_:* = §§pop();
                           _loc6_ = param5.R;
                           _loc7_ = param4.§!X§;
                           §§push(param5.position.x);
                           if(!_loc16_)
                           {
                              §§push(_loc6_.col1.x);
                              if(_loc17_ || b2Collision)
                              {
                                 §§push(_loc7_.x);
                                 if(!(_loc16_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc17_ || param1)
                                    {
                                       addr163:
                                       §§push(_loc6_.col2.x);
                                       if(_loc17_ || param1)
                                       {
                                          addr176:
                                          §§push(§§pop() + §§pop() * _loc7_.y);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc16_ && param1))
                                    {
                                       addr185:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc10_:* = §§pop();
                                    §§push(param5.position.y);
                                    if(_loc17_ || param2)
                                    {
                                       §§push(_loc6_.col1.y);
                                       if(_loc17_)
                                       {
                                          §§push(_loc7_.x);
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc16_)
                                             {
                                                addr224:
                                                §§push(_loc6_.col2.y);
                                                if(!_loc16_)
                                                {
                                                   addr229:
                                                   §§push(§§pop() * _loc7_.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc17_ || param2)
                                             {
                                                addr242:
                                                var _loc11_:Number = §§pop();
                                                §§push(_loc10_);
                                                if(!_loc16_)
                                                {
                                                   §§push(§§pop() - _loc8_);
                                                   if(_loc17_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc12_:* = §§pop();
                                                §§push(_loc11_);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop() - _loc9_);
                                                   if(_loc17_)
                                                   {
                                                      addr259:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   §§push(_loc12_);
                                                   if(_loc17_)
                                                   {
                                                      §§push(_loc12_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            addr270:
                                                            §§push(_loc13_);
                                                            if(_loc16_ && param1)
                                                            {
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      addr280:
                                                      §§push(§§pop() + §§pop() * _loc13_);
                                                      if(_loc17_)
                                                      {
                                                         addr283:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc14_:* = §§pop();
                                                      var _loc15_:Number = param2.§&!$§ + param4.§&!$§;
                                                      if(_loc17_ || b2Collision)
                                                      {
                                                         §§push(_loc14_);
                                                         §§push(_loc15_);
                                                         if(_loc17_ || param1)
                                                         {
                                                            §§push(§§pop() * _loc15_);
                                                         }
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            loop0:
                                                            while(true)
                                                            {
                                                               param1.§0!,§ = b2Manifold.§%"#§;
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  param1.m_localPoint.SetV(param2.§!X§);
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     param1.§5!=§.§?b§();
                                                                     loop3:
                                                                     for(; !_loc16_; if(_loc17_ || param2)
                                                                     {
                                                                        continue loop2;
                                                                     })
                                                                     {
                                                                        if(!(_loc17_ || param1))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        param1.§`!>§ = 1;
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           param1.§5S§[0].m_localPoint.SetV(param4.§!X§);
                                                                           while(true)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop4;
                                                                              addr347:
                                                                              param1.§5S§[0].m_id.key = 0;
                                                                              if(!_loc16_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                     if(_loc17_ || b2Collision)
                                                                     {
                                                                        if(_loc17_ || b2Collision)
                                                                        {
                                                                           §§goto(addr347);
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr402:
                                                      return;
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr242);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr121);
               }
               §§goto(addr71);
            }
            §§goto(addr58);
         }
         §§goto(addr80);
      }
      
      public static function §%d§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function §6m§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:b2Vec2 = param2.§=!H§;
         var _loc4_:b2Vec2 = param1.§6P§;
         §§push(_loc3_.x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || param2)
            {
               addr39:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc9_ && b2Collision))
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§=!H§;
            _loc4_ = param2.§6P§;
            §§push(_loc3_.x);
            if(_loc10_ || b2Collision)
            {
               §§push(§§pop() - _loc4_.x);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc10_ || param1)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            if(!(_loc9_ && _loc3_))
            {
               §§push(_loc5_);
               loop0:
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() > §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr257:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    addr232:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr233:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                       }
                                    }
                                 }
                              }
                              addr256:
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop12:
                                          while(_loc10_)
                                          {
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§push(§§pop() > §§pop());
                                                do
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop());
                                                   if(!(_loc10_ || param1))
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc9_ && _loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(§§pop() > §§pop());
                                                                     if(_loc9_ && _loc3_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && param2))
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(false);
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           addr192:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        addr138:
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr232);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr236:
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(false);
                                                               }
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         return §§pop();
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr165);
                                                }
                                                while(!(_loc10_ || param2));
                                                
                                                return §§pop();
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr233);
                                       }
                                    }
                                 }
                                 §§goto(addr236);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr192);
         }
         §§goto(addr39);
      }
   }
}
