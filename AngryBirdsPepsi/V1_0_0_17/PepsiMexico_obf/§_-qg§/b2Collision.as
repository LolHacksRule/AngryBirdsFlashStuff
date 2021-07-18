package §_-qg§
{
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §_-eV§:Vector.<§_-uS§> = §_-vc§();
      
      private static var s_clipPoints1:Vector.<§_-uS§>;
      
      private static var s_clipPoints2:Vector.<§_-uS§>;
      
      private static var §_-Z2§:Vector.<int>;
      
      private static var §case§:Vector.<int>;
      
      private static var §_-TT§:b2Vec2;
      
      private static var §_-IS§:b2Vec2;
      
      private static var §_-rb§:b2Vec2;
      
      private static var §_-ou§:b2Vec2;
      
      private static var §_-i2§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2;
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            s_clipPoints1 = §_-vc§();
            s_clipPoints2 = §_-vc§();
            §_-Z2§ = new Vector.<int>(1);
            if(!_loc2_)
            {
               §case§ = new Vector.<int>(1);
               if(!(_loc2_ && b2Collision))
               {
                  §_-TT§ = new b2Vec2();
                  §_-IS§ = new b2Vec2();
                  if(_loc1_)
                  {
                     §_-rb§ = new b2Vec2();
                     §_-ou§ = new b2Vec2();
                     if(_loc1_)
                     {
                        addr85:
                        §_-i2§ = new b2Vec2();
                        addr89:
                        s_tangent2 = new b2Vec2();
                        s_v11 = new b2Vec2();
                     }
                     §§goto(addr89);
                  }
                  s_v12 = new b2Vec2();
                  b2CollidePolyTempVec = new b2Vec2();
                  return;
               }
            }
            §§goto(addr89);
         }
         §§goto(addr85);
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-cp§(param1:Vector.<§_-uS§>, param2:Vector.<§_-uS§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§_-uS§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§_-uS§ = null;
         if(_loc14_ || param3)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(!(_loc15_ && param1))
         {
            §§push(param3.x);
            if(_loc14_ || param1)
            {
               §§push(§§pop() * _loc7_.x);
               if(_loc14_)
               {
                  §§push(param3.y);
                  if(!_loc15_)
                  {
                     §§push(_loc7_.y);
                     if(_loc14_ || param3)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc14_)
                        {
                           addr97:
                           §§push(§§pop() + §§pop() - param4);
                           if(!(_loc15_ && b2Collision))
                           {
                              addr105:
                              _loc9_ = §§pop();
                              §§push(param3.x);
                              if(_loc14_)
                              {
                                 §§push(_loc8_.x);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§push(param3.y);
                                    if(_loc14_)
                                    {
                                       addr123:
                                       §§push(§§pop() + §§pop() * _loc8_.y);
                                       §§push(param4);
                                    }
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(!_loc15_)
                                 {
                                    addr128:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc10_:* = §§pop();
                                 §§push(_loc9_);
                                 §§push(0);
                                 if(!_loc15_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       param1[_loc6_++].Set(param2[0]);
                                    }
                                    §§push(_loc10_);
                                    if(!_loc15_)
                                    {
                                       §§push(0);
                                       if(!_loc15_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!(_loc15_ && b2Collision))
                                             {
                                                param1[_loc6_++].Set(param2[1]);
                                                if(_loc14_ || b2Collision)
                                                {
                                                   §§goto(addr183);
                                                }
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr210);
                                    }
                                    addr183:
                                    §§push(_loc9_);
                                    §§push(_loc10_);
                                    if(_loc14_ || b2Collision)
                                    {
                                       addr192:
                                       §§push(§§pop() * §§pop());
                                       if(_loc14_)
                                       {
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             §§goto(addr198);
                                          }
                                          §§goto(addr210);
                                       }
                                       §§goto(addr216);
                                    }
                                    addr198:
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          §§push(_loc9_);
                                          §§push(_loc9_);
                                          if(!(_loc15_ && param1))
                                          {
                                             addr210:
                                             §§push(§§pop() - _loc10_);
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(_loc14_)
                                          {
                                             addr216:
                                             _loc11_ = §§pop();
                                             addr217:
                                             §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                             §§push(_loc7_.x);
                                             if(_loc14_)
                                             {
                                                §§push(_loc11_);
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc8_.x);
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() - _loc7_.x);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().x = §§pop();
                                             if(_loc14_ || param1)
                                             {
                                                §§push(_loc12_);
                                                §§push(_loc7_.y);
                                                if(_loc14_ || param2)
                                                {
                                                   §§push(_loc11_);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      §§push(_loc8_.y);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop() - _loc7_.y);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                             }
                                             _loc5_ = param1[_loc6_];
                                             if(_loc14_ || param2)
                                             {
                                                if(_loc9_ > 0)
                                                {
                                                   addr294:
                                                   _loc13_ = param2[0];
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      _loc5_.id = _loc13_.id;
                                                      if(!_loc14_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr332);
                                                }
                                                else
                                                {
                                                   _loc13_ = param2[1];
                                                   if(_loc14_)
                                                   {
                                                      _loc5_.id = _loc13_.id;
                                                   }
                                                }
                                                _loc6_++;
                                                §§goto(addr332);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr217);
                                    }
                                    addr332:
                                    return _loc6_;
                                 }
                                 §§goto(addr192);
                              }
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr105);
      }
      
      public static function §_-Sl§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§_-Wz§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§_-Ui§;
         var _loc8_:Vector.<b2Vec2> = param1.§_-3s§;
         §§push(param4.§_-Wz§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§_-Ui§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc27_ || param1)
         {
            §§push(_loc12_.x);
            if(_loc27_ || param2)
            {
               addr99:
               §§push(§§pop() * §§pop());
               if(!_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc27_ || b2Collision)
                  {
                     §§push(§§pop() * _loc12_.y);
                  }
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(_loc27_)
               {
                  §§push(_loc12_.x);
                  if(_loc27_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc27_)
                     {
                        §§push(_loc11_.col2.y);
                        if(_loc27_)
                        {
                           addr117:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc27_)
                        {
                        }
                        addr124:
                        var _loc14_:* = §§pop();
                        §§push((_loc11_ = param5.R).col1.x);
                        if(_loc27_)
                        {
                           §§push(_loc13_);
                           if(_loc27_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_ || param1)
                              {
                                 addr145:
                                 §§push(_loc11_.col1.y);
                                 if(_loc27_)
                                 {
                                    addr152:
                                    §§push(§§pop() + §§pop() * _loc14_);
                                    if(_loc27_ || param1)
                                    {
                                       addr160:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc15_:* = §§pop();
                                    §§push(_loc11_.col2.x);
                                    if(!(_loc26_ && param1))
                                    {
                                       §§push(_loc13_);
                                       if(_loc27_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc27_ || param1)
                                          {
                                             §§push(_loc11_.col2.y);
                                             if(!(_loc26_ && b2Collision))
                                             {
                                                addr195:
                                                §§push(§§pop() + §§pop() * _loc14_);
                                                if(_loc26_ && b2Collision)
                                                {
                                                }
                                                addr204:
                                                var _loc16_:* = §§pop();
                                                var _loc17_:* = 0;
                                                var _loc18_:Number = Number.MAX_VALUE;
                                                var _loc19_:int = 0;
                                                while(_loc19_ < _loc9_)
                                                {
                                                   §§push((_loc12_ = _loc10_[_loc19_]).x);
                                                   §§push(_loc15_);
                                                   if(_loc27_ || param1)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      §§push(_loc12_.y);
                                                      if(_loc27_ || param2)
                                                      {
                                                         §§push(§§pop() * _loc16_);
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc27_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               §§push(Number(§§pop()));
                                                               if(_loc27_)
                                                               {
                                                                  _loc25_ = §§pop();
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr260:
                                                                     addr259:
                                                                     if(§§pop() < _loc18_)
                                                                     {
                                                                        if(!(_loc26_ && param1))
                                                                        {
                                                                           addr269:
                                                                           _loc18_ = _loc25_;
                                                                           if(!_loc27_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc19_);
                                                                           if(_loc27_ || b2Collision)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           _loc17_ = §§pop();
                                                                           if(!(_loc27_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc19_++;
                                                                     continue;
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr260);
                                                }
                                                _loc12_ = _loc7_[param3];
                                                _loc11_ = param2.R;
                                                §§push(param2.position.x);
                                                if(_loc27_ || param2)
                                                {
                                                   §§push(_loc11_.col1.x);
                                                   if(!(_loc26_ && b2Collision))
                                                   {
                                                      §§push(_loc12_.x);
                                                      if(_loc27_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc26_)
                                                         {
                                                            addr342:
                                                            §§push(_loc11_.col2.x);
                                                            if(_loc27_)
                                                            {
                                                               addr350:
                                                               §§push(§§pop() + §§pop() * _loc12_.y);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc26_ && param3))
                                                         {
                                                            addr359:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc20_:* = §§pop();
                                                         §§push(param2.position.y);
                                                         if(_loc27_ || param1)
                                                         {
                                                            §§push(_loc11_.col1.y);
                                                            if(_loc27_)
                                                            {
                                                               §§push(_loc12_.x);
                                                               if(_loc27_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr388:
                                                                     §§push(_loc11_.col2.y);
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr396:
                                                                        §§push(§§pop() + §§pop() * _loc12_.y);
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr400:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc21_:* = §§pop();
                                                                  _loc12_ = _loc10_[_loc17_];
                                                                  _loc11_ = param5.R;
                                                                  §§push(param5.position.x);
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(_loc11_.col1.x);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(_loc12_.x);
                                                                        if(_loc27_ || b2Collision)
                                                                        {
                                                                           addr447:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc27_ || b2Collision)
                                                                           {
                                                                              §§push(_loc11_.col2.x);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(§§pop() * _loc12_.y);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc27_ || param2)
                                                                           {
                                                                              addr455:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc22_:* = §§pop();
                                                                           §§push(param5.position.y);
                                                                           if(!_loc26_)
                                                                           {
                                                                              §§push(_loc11_.col1.y);
                                                                              if(!(_loc26_ && param2))
                                                                              {
                                                                                 §§push(_loc12_.x);
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    addr498:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc26_ && param1))
                                                                                    {
                                                                                       §§push(_loc11_.col2.y);
                                                                                       if(!(_loc26_ && b2Collision))
                                                                                       {
                                                                                          §§push(§§pop() * _loc12_.y);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       addr501:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc23_:* = §§pop();
                                                                                    if(_loc27_ || param2)
                                                                                    {
                                                                                       §§push(_loc22_);
                                                                                       if(!(_loc26_ && param3))
                                                                                       {
                                                                                          §§push(_loc20_);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             _loc22_ = Number(§§pop() - §§pop());
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                addr531:
                                                                                                §§push(_loc23_);
                                                                                                §§push(_loc21_);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(Number(§§pop() - §§pop()));
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      _loc23_ = §§pop();
                                                                                                      addr540:
                                                                                                      §§push(_loc22_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         addr543:
                                                                                                         §§push(_loc13_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc26_ && param2))
                                                                                                            {
                                                                                                               addr554:
                                                                                                               §§push(_loc23_);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§goto(addr578);
                                                                                                               }
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                            addr578:
                                                                                                            §§push(§§pop() * _loc14_);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               addr561:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc26_ && param2))
                                                                                                               {
                                                                                                                  addr576:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc24_:* = §§pop();
                                                                                                            return §§pop();
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                   }
                                                                                                   §§goto(addr554);
                                                                                                }
                                                                                                §§goto(addr578);
                                                                                             }
                                                                                             §§goto(addr540);
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr498);
                                                                           }
                                                                           §§goto(addr501);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  §§goto(addr455);
                                                               }
                                                               §§goto(addr396);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr400);
                                                      }
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr342);
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr204);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr124);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr117);
               }
               §§goto(addr124);
            }
            §§push(§§pop() + §§pop());
            if(!(_loc26_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr99);
      }
      
      public static function §_-ll§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:int = 0;
         var _loc25_:* = NaN;
         §§push(param2.§_-Wz§);
         if(_loc26_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§_-3s§;
         _loc9_ = param5.R;
         _loc8_ = param4.§_-5h§;
         §§push(param5.position.x);
         if(_loc26_)
         {
            §§push(_loc9_.col1.x);
            if(_loc26_ || param1)
            {
               §§push(_loc8_.x);
               if(!(_loc27_ && param2))
               {
                  addr96:
                  §§push(§§pop() * §§pop());
                  if(_loc26_ || param1)
                  {
                     §§push(_loc9_.col2.x);
                     if(_loc26_ || param2)
                     {
                        §§push(§§pop() * _loc8_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc27_)
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(!_loc27_)
                  {
                     §§push(_loc9_.col1.y);
                     if(!_loc27_)
                     {
                        §§push(_loc8_.x);
                        if(!(_loc27_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc27_ && param3))
                           {
                              addr142:
                              §§push(_loc9_.col2.y);
                              if(_loc26_ || param2)
                              {
                                 addr138:
                                 §§push(§§pop() * _loc8_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc27_)
                              {
                                 addr146:
                                 var _loc11_:Number = §§pop();
                                 _loc9_ = param3.R;
                                 _loc8_ = param2.§_-5h§;
                                 if(_loc26_)
                                 {
                                    §§push(_loc10_);
                                    if(!(_loc27_ && param3))
                                    {
                                       §§push(param3.position);
                                       if(!(_loc27_ && param1))
                                       {
                                          §§push(§§pop().x);
                                          §§push(_loc9_.col1);
                                          if(!(_loc27_ && b2Collision))
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc27_ && param3))
                                             {
                                                §§push(_loc8_.x);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   §§push(_loc9_.col2);
                                                   if(_loc26_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc26_ || b2Collision)
                                                      {
                                                         §§push(_loc8_.y);
                                                         if(_loc26_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc26_ || param1)
                                                            {
                                                               addr221:
                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                               if(_loc26_ || param1)
                                                               {
                                                                  §§push(Number(§§pop() - §§pop()));
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr234:
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc27_)
                                                                     {
                                                                        addr241:
                                                                        §§push(_loc11_);
                                                                        §§push(param3.position.y);
                                                                        §§push(_loc9_.col1);
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc26_ || param3)
                                                                           {
                                                                              addr268:
                                                                              §§push(_loc8_.x);
                                                                              if(_loc26_ || b2Collision)
                                                                              {
                                                                                 addr262:
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(§§pop() - (§§pop() + (§§pop() + §§pop() * _loc8_.y)));
                                                                              if(!(_loc27_ && b2Collision))
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 addr283:
                                                                                 §§push(_loc10_ * param3.R.col1.x);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       addr297:
                                                                                       §§push(§§pop() * param3.R.col1.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc26_)
                                                                                    {
                                                                                       addr302:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc10_);
                                                                                    if(!(_loc27_ && param2))
                                                                                    {
                                                                                       §§push(param3.R.col2.x);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc27_ && param1))
                                                                                          {
                                                                                             addr326:
                                                                                             §§push(_loc11_);
                                                                                             if(_loc26_ || param3)
                                                                                             {
                                                                                                addr339:
                                                                                                §§push(§§pop() + §§pop() * param3.R.col2.y);
                                                                                                if(_loc26_ || param3)
                                                                                                {
                                                                                                   addr347:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc13_:* = §§pop();
                                                                                                var _loc14_:* = 0;
                                                                                                §§push(-Number.MAX_VALUE);
                                                                                                if(_loc26_ || param2)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc15_:* = §§pop();
                                                                                                var _loc16_:int = 0;
                                                                                                while(_loc16_ < _loc6_)
                                                                                                {
                                                                                                   §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc27_ && b2Collision))
                                                                                                      {
                                                                                                         §§push(_loc8_.y);
                                                                                                         if(!(_loc27_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc13_);
                                                                                                            if(_loc26_ || b2Collision)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  addr406:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr422:
                                                                                                                     _loc25_ = §§pop();
                                                                                                                     addr424:
                                                                                                                     if(§§pop() > _loc15_)
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr429:
                                                                                                                        _loc15_ = Number(_loc25_);
                                                                                                                        if(_loc26_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc16_);
                                                                                                                           if(_loc26_ || param3)
                                                                                                                           {
                                                                                                                              §§push(int(§§pop()));
                                                                                                                           }
                                                                                                                           _loc14_ = §§pop();
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc16_++;
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               §§goto(addr429);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr422);
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                §§push(§_-Sl§(param2,param3,_loc14_,param4,param5));
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc17_:* = §§pop();
                                                                                                if(_loc26_ || b2Collision)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   if(!(_loc27_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() - 1);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         if(§§pop() >= 0)
                                                                                                         {
                                                                                                            addr485:
                                                                                                            §§push(_loc14_);
                                                                                                            if(!(_loc27_ && b2Collision))
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  addr496:
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  if(_loc26_ || b2Collision)
                                                                                                                  {
                                                                                                                     addr513:
                                                                                                                     var _loc18_:int = §§pop();
                                                                                                                     §§push(§_-Sl§(param2,param3,_loc18_,param4,param5));
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc19_:* = §§pop();
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           if(_loc26_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc26_ || param2)
                                                                                                                              {
                                                                                                                                 if(§§pop() < _loc6_)
                                                                                                                                 {
                                                                                                                                    addr549:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc27_ && param1))
                                                                                                                                    {
                                                                                                                                       addr559:
                                                                                                                                       addr558:
                                                                                                                                       addr557:
                                                                                                                                       §§push(int(§§pop() + 1));
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          addr562:
                                                                                                                                       }
                                                                                                                                       addr567:
                                                                                                                                       var _loc20_:int = §§pop();
                                                                                                                                       addr566:
                                                                                                                                       §§push(§_-Sl§(param2,param3,_loc20_,param4,param5));
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc21_:* = §§pop();
                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          if(!(_loc27_ && b2Collision))
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_);
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc27_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         if(_loc26_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(!(_loc27_ && b2Collision))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr636:
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        _loc24_ = -1;
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc22_ = int(_loc18_);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Number(_loc19_));
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr648:
                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                           if(!(_loc27_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr693:
                                                                                                                                                                              loop13:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc24_);
                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc22_ - 1);
                                                                                                                                                                                       if(!(_loc27_ && b2Collision))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() >= §§pop());
                                                                                                                                                                                             if(!(_loc27_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(int(_loc22_ - 1));
                                                                                                                                                                                                            addr745:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc14_ = int(§§pop());
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr749:
                                                                                                                                                                                                                  loop3:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§_-Sl§(param2,param3,_loc14_,param4,param5));
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc17_ = §§pop();
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc23_);
                                                                                                                                                                                                                           while(§§pop() > §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           param1[0] = _loc22_;
                                                                                                                                                                                                                           addr830:
                                                                                                                                                                                                                           return _loc23_;
                                                                                                                                                                                                                           addr801:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop4:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr821:
                                                                                                                                                                                                                           addr761:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                              continue loop13;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                              addr763:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                 addr764:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          addr767:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop4;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr765:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr772:
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                             if(!(_loc26_ || param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop4;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr775:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr803:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr803:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc22_ = §§pop();
                                                                                                                                                                                                                                          §§push(_loc17_);
                                                                                                                                                                                                                                          if(_loc26_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr821);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr775);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr813:
                                                                                                                                                                                                                        addr770:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr801);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr784:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr738:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr803);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(int(_loc6_ - 1));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr745);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr730:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr764);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr772);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr763);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr813);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr761);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr767);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr753:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr803);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr761);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr784);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr676:
                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr693);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                        if(!(_loc27_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           addr666:
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              _loc24_ = 1;
                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc22_ = int(§§pop());
                                                                                                                                                                                 §§goto(addr676);
                                                                                                                                                                                 §§push(Number(_loc21_));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr753);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              param1[0] = _loc14_;
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 return §§pop();
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr801);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr764);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr801);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr830);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr738);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr730);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr636);
                                                                                                                                             }
                                                                                                                                             §§goto(addr666);
                                                                                                                                          }
                                                                                                                                          §§goto(addr648);
                                                                                                                                       }
                                                                                                                                       §§goto(addr765);
                                                                                                                                    }
                                                                                                                                    §§goto(addr562);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr566);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr567);
                                                                                                                              }
                                                                                                                              §§goto(addr559);
                                                                                                                           }
                                                                                                                           §§goto(addr558);
                                                                                                                        }
                                                                                                                        §§goto(addr557);
                                                                                                                     }
                                                                                                                     §§goto(addr549);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr508:
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            §§push(int(§§pop()));
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§goto(addr508);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr513);
                                                                                                      }
                                                                                                      §§goto(addr496);
                                                                                                   }
                                                                                                   §§goto(addr513);
                                                                                                }
                                                                                                §§goto(addr485);
                                                                                             }
                                                                                             §§goto(addr339);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           addr265:
                                                                           §§push(_loc9_.col2.y);
                                                                           if(_loc27_)
                                                                           {
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr302);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr262);
                                                   }
                                                   §§goto(addr265);
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr146);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr96);
         }
         §§goto(addr99);
      }
      
      public static function §_-E7§(param1:Vector.<§_-uS§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§_-uS§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§_-Wz§);
         if(!_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§_-3s§;
         §§push(param5.§_-Wz§);
         if(_loc24_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§_-Ui§;
         var _loc11_:Vector.<b2Vec2> = param5.§_-3s§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc24_)
         {
            §§push(_loc13_.x);
            if(!_loc25_)
            {
               §§push(§§pop() * §§pop());
               if(_loc24_ || param1)
               {
                  §§push(_loc12_.col2.x);
                  if(_loc24_ || param1)
                  {
                     addr87:
                     §§push(§§pop() + §§pop() * _loc13_.y);
                     if(_loc24_)
                     {
                        addr90:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr87);
               }
               var _loc14_:* = §§pop();
               §§push(_loc12_.col1.y);
               if(_loc24_ || param2)
               {
                  §§push(_loc13_.x);
                  if(!(_loc25_ && b2Collision))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc24_ || param1)
                     {
                        §§push(_loc12_.col2.y);
                        if(!(_loc25_ && param3))
                        {
                           addr129:
                           §§push(§§pop() * _loc13_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc25_ && param1))
                        {
                           addr140:
                           §§push(Number(§§pop()));
                        }
                        var _loc15_:* = §§pop();
                        §§push((_loc12_ = param6.R).col1.x);
                        if(_loc24_ || b2Collision)
                        {
                           §§push(_loc14_);
                           if(_loc24_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc25_ && param3))
                              {
                                 §§push(_loc12_.col1.y);
                                 if(!(_loc25_ && b2Collision))
                                 {
                                    addr177:
                                    §§push(§§pop() * _loc15_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc25_ && b2Collision))
                                 {
                                    addr187:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc16_:* = §§pop();
                                 if(!_loc25_)
                                 {
                                    §§push(_loc12_.col2.x);
                                    if(!_loc25_)
                                    {
                                       §§push(_loc14_);
                                       if(_loc24_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc25_)
                                          {
                                             addr202:
                                             §§push(_loc12_.col2.y);
                                             if(!_loc25_)
                                             {
                                                addr209:
                                                §§push(§§pop() + §§pop() * _loc15_);
                                                if(_loc24_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc25_)
                                                   {
                                                   }
                                                   addr222:
                                                   _loc14_ = §§pop();
                                                   addr223:
                                                   var _loc17_:* = 0;
                                                   var _loc18_:Number = Number.MAX_VALUE;
                                                   var _loc19_:int = 0;
                                                   while(true)
                                                   {
                                                      §§push(_loc19_);
                                                      if(_loc24_ || b2Collision)
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc24_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc17_);
                                                               if(!(_loc25_ && param3))
                                                               {
                                                                  break;
                                                               }
                                                               addr307:
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               _loc13_ = _loc11_[_loc19_];
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(_loc14_);
                                                                  §§push(_loc13_.x);
                                                                  if(_loc24_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc25_ && param2))
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(!_loc25_)
                                                                        {
                                                                           addr256:
                                                                           §§push(§§pop() * _loc13_.y);
                                                                           if(!_loc25_)
                                                                           {
                                                                              addr261:
                                                                              §§push(Number(§§pop() + §§pop()));
                                                                              if(!_loc25_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc25_)
                                                                                 {
                                                                                    addr268:
                                                                                    _loc23_ = §§pop();
                                                                                    addr269:
                                                                                    §§push(_loc18_);
                                                                                 }
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       addr275:
                                                                                       _loc18_ = _loc23_;
                                                                                       if(_loc25_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§push(_loc19_);
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    _loc17_ = §§pop();
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       addr285:
                                                                                       _loc19_++;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr268);
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                         }
                                                         var _loc21_:* = §§pop();
                                                         if(_loc24_)
                                                         {
                                                            §§push(1);
                                                            if(_loc24_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc24_)
                                                               {
                                                                  if(§§pop() < _loc9_)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     if(_loc24_)
                                                                     {
                                                                        addr325:
                                                                        addr324:
                                                                        §§push(int(§§pop() + 1));
                                                                        if(_loc25_ && param1)
                                                                        {
                                                                        }
                                                                        addr338:
                                                                        var _loc22_:int = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        addr337:
                                                                        if(!_loc25_)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           if(!_loc25_)
                                                                           {
                                                                              §§push(param6.position);
                                                                              if(_loc24_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(_loc24_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                addr392:
                                                                                                §§push(_loc12_.col2);
                                                                                                if(_loc24_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!_loc25_)
                                                                                                   {
                                                                                                      §§push(_loc13_.y);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            addr411:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc24_ || param2)
                                                                                                            {
                                                                                                               addr419:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc25_ && param2))
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!(_loc25_ && param2))
                                                                                                                  {
                                                                                                                     addr439:
                                                                                                                     §§push(_loc20_.v);
                                                                                                                     §§push(param6.position.y);
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        addr442:
                                                                                                                        §§push(_loc12_.col1.y);
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(_loc13_.x);
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc24_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr469:
                                                                                                                              §§pop().y = §§pop() + §§pop();
                                                                                                                              addr468:
                                                                                                                              if(!(_loc25_ && b2Collision))
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.id);
                                                                                                                                 if(!(_loc25_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§_-0P§);
                                                                                                                                    if(_loc24_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(param4);
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          §§pop().§_-cf§ = §§pop();
                                                                                                                                          if(_loc24_ || param3)
                                                                                                                                          {
                                                                                                                                             §§push(_loc20_.id);
                                                                                                                                             if(!_loc25_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§_-0P§);
                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr520:
                                                                                                                                                      §§pop().§_-qC§ = §§pop();
                                                                                                                                                      addr533:
                                                                                                                                                      if(_loc24_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr531:
                                                                                                                                                         §§push(_loc20_.id.§_-0P§);
                                                                                                                                                         §§push(0);
                                                                                                                                                      }
                                                                                                                                                      _loc20_ = param1[1];
                                                                                                                                                      _loc13_ = _loc10_[_loc22_];
                                                                                                                                                      _loc12_ = param6.R;
                                                                                                                                                      if(!(_loc25_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_.v);
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param6.position);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_.col1);
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_.x);
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc12_.col2);
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(_loc24_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_.y);
                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr598:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc24_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr616:
                                                                                                                                                                                                   §§push(_loc20_.v);
                                                                                                                                                                                                   §§push(param6.position.y);
                                                                                                                                                                                                   if(!(_loc25_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr624:
                                                                                                                                                                                                      §§push(_loc12_.col1.y);
                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr629:
                                                                                                                                                                                                         §§push(_loc13_.x);
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr645);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr645:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr638:
                                                                                                                                                                                                            §§push(_loc12_.col2.y);
                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr641:
                                                                                                                                                                                                               §§push(§§pop() * _loc13_.y);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc20_.id);
                                                                                                                                                                                                            if(!(_loc25_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().§_-0P§);
                                                                                                                                                                                                               if(!(_loc25_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param4);
                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§_-cf§ = §§pop();
                                                                                                                                                                                                                     if(_loc24_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc20_.id);
                                                                                                                                                                                                                        if(_loc24_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().§_-0P§);
                                                                                                                                                                                                                           if(!(_loc25_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§_-qC§ = §§pop();
                                                                                                                                                                                                                                 §§goto(addr712);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr710);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§_-qs§ = §§pop();
                                                                                                                                                                                                                  §§goto(addr712);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr710);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr712:
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr710:
                                                                                                                                                                                                            §§push(_loc20_.id.§_-0P§);
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         return;
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr645);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr710);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr624);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr629);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr641);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr645);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr638);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr645);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr598);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr638);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr624);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr645);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr616);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§_-qs§ = §§pop();
                                                                                                                                                   §§goto(addr533);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr531);
                                                                                                                                       }
                                                                                                                                       §§goto(addr520);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr531);
                                                                                                                              }
                                                                                                                              §§goto(addr520);
                                                                                                                           }
                                                                                                                           addr464:
                                                                                                                           §§goto(addr468);
                                                                                                                           §§push(§§pop() + §§pop() * _loc13_.y);
                                                                                                                        }
                                                                                                                        §§push(_loc12_.col2.y);
                                                                                                                        if(_loc24_ || param1)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr464);
                                                                                                                     }
                                                                                                                     §§goto(addr469);
                                                                                                                  }
                                                                                                                  §§goto(addr520);
                                                                                                               }
                                                                                                               §§goto(addr442);
                                                                                                            }
                                                                                                            §§goto(addr469);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr464);
                                                                                                   }
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                                §§goto(addr442);
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          §§goto(addr464);
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr442);
                                                                              }
                                                                           }
                                                                           §§goto(addr439);
                                                                        }
                                                                        §§goto(addr531);
                                                                        addr337:
                                                                     }
                                                                     §§goto(addr337);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc24_)
                                                                     {
                                                                        §§goto(addr337);
                                                                     }
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr307);
                                                   §§push(int(§§pop()));
                                                }
                                                _loc15_ = §§pop();
                                                if(_loc24_)
                                                {
                                                   §§push(_loc16_);
                                                   if(!_loc25_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr140);
                  }
                  §§goto(addr129);
               }
               §§goto(addr140);
            }
            §§goto(addr87);
         }
         §§goto(addr90);
      }
      
      private static function §_-vc§() : Vector.<§_-uS§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§_-uS§> = new Vector.<§_-uS§>(2);
         if(!(_loc2_ && _loc2_))
         {
            _loc1_[0] = new §_-uS§();
            if(!(_loc2_ && _loc1_))
            {
               addr54:
               _loc1_[1] = new §_-uS§();
            }
            return _loc1_;
         }
         §§goto(addr54);
      }
      
      public static function §_-ZL§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = true;
         var _loc6_:§_-uS§ = null;
         var _loc12_:b2PolygonShape = null;
         var _loc13_:b2PolygonShape = null;
         var _loc14_:b2Transform = null;
         var _loc15_:b2Transform = null;
         var _loc16_:* = 0;
         var _loc17_:uint = 0;
         var _loc20_:b2Mat22 = null;
         var _loc25_:b2Vec2 = null;
         var _loc39_:* = 0;
         var _loc42_:* = NaN;
         var _loc43_:b2ManifoldPoint = null;
         var _loc44_:* = NaN;
         var _loc45_:Number = NaN;
         if(!(_loc46_ && param3))
         {
            param1.§_-Tu§ = 0;
         }
         var _loc7_:Number = param2.§_-Q2§ + param4.§_-Q2§;
         var _loc8_:* = 0;
         if(!(_loc46_ && b2Collision))
         {
            §_-Z2§[0] = _loc8_;
         }
         §§push(§_-ll§(§_-Z2§,param2,param3,param4,param5));
         if(_loc47_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(!(_loc46_ && b2Collision))
         {
            §§push(int(§_-Z2§[0]));
            if(!(_loc46_ && param1))
            {
               _loc8_ = §§pop();
               if(_loc47_)
               {
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc47_)
                     {
                        §§goto(addr118);
                     }
                  }
                  §§push(0);
               }
               §§goto(addr118);
            }
            var _loc10_:* = §§pop();
            if(!(_loc46_ && b2Collision))
            {
               §case§[0] = _loc10_;
            }
            §§push(§_-ll§(§case§,param4,param5,param2,param3));
            if(!_loc46_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc47_)
            {
               _loc10_ = int(§case§[0]);
               if(_loc47_)
               {
                  §§push(_loc11_);
                  if(!_loc46_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(!(_loc46_ && param3))
                        {
                           §§goto(addr164);
                        }
                        else
                        {
                           addr165:
                           §§push(0.98);
                           if(_loc47_ || b2Collision)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     §§goto(addr165);
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!_loc46_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(_loc47_ || param2)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(!(_loc46_ && param1))
                     {
                        §§push(_loc9_);
                        if(_loc47_ || param3)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc46_)
                           {
                              addr208:
                              §§push(§§pop() + _loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr210:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!(_loc46_ && b2Collision))
                              {
                                 §§push(_loc10_);
                                 if(!_loc46_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc46_ && param2))
                                    {
                                       addr240:
                                       _loc16_ = §§pop();
                                       if(!_loc46_)
                                       {
                                          param1.§_-Sj§ = b2Manifold.§_-77§;
                                          addr252:
                                          addr295:
                                          if(!_loc46_)
                                          {
                                             §§push(1);
                                          }
                                          var _loc21_:Vector.<§_-uS§> = §_-eV§;
                                          if(!_loc46_)
                                          {
                                             §_-E7§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                          }
                                          §§push(_loc12_.§_-Wz§);
                                          if(_loc47_ || b2Collision)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var _loc22_:* = §§pop();
                                          var _loc23_:Vector.<b2Vec2>;
                                          var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§_-Ui§)[_loc16_];
                                          if(_loc47_ || param2)
                                          {
                                             if(_loc16_ + 1 < _loc22_)
                                             {
                                                addr340:
                                                _loc25_ = _loc23_[int(_loc16_ + 1)];
                                             }
                                             else
                                             {
                                                _loc25_ = _loc23_[0];
                                             }
                                             var _loc26_:b2Vec2;
                                             §§push(_loc26_ = §_-TT§);
                                             §§push(_loc25_.x);
                                             if(!_loc46_)
                                             {
                                                §§push(_loc24_.x);
                                                if(!_loc46_)
                                                {
                                                   addr368:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(_loc25_.y);
                                                   if(!_loc46_)
                                                   {
                                                      addr372:
                                                      §§push(§§pop() - _loc24_.y);
                                                   }
                                                   §§pop().Set(§§pop(),§§pop());
                                                   if(_loc47_ || param3)
                                                   {
                                                      _loc26_.Normalize();
                                                   }
                                                   var _loc27_:b2Vec2;
                                                   (_loc27_ = §_-IS§).x = _loc26_.y;
                                                   if(!(_loc46_ && param1))
                                                   {
                                                      §§push(_loc27_);
                                                      §§push(_loc26_.x);
                                                      if(!_loc46_)
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                   var _loc28_:b2Vec2;
                                                   §§push(_loc28_ = §_-rb§);
                                                   §§push(0.5);
                                                   if(_loc47_ || param3)
                                                   {
                                                      §§push(_loc24_.x);
                                                      if(_loc47_ || b2Collision)
                                                      {
                                                         §§push(_loc25_.x);
                                                         if(!(_loc46_ && b2Collision))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc47_)
                                                            {
                                                               addr440:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(0.5);
                                                               if(_loc47_ || b2Collision)
                                                               {
                                                               }
                                                               addr461:
                                                               §§pop().Set(§§pop(),§§pop());
                                                               var _loc29_:b2Vec2 = §_-i2§;
                                                               _loc20_ = _loc14_.R;
                                                               if(_loc47_)
                                                               {
                                                                  §§push(_loc29_);
                                                                  §§push(_loc20_.col1.x);
                                                                  if(_loc47_)
                                                                  {
                                                                     §§push(_loc26_.x);
                                                                     if(!_loc46_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc46_)
                                                                        {
                                                                           addr484:
                                                                           §§push(_loc20_.col2.x);
                                                                           if(_loc47_ || param1)
                                                                           {
                                                                              addr497:
                                                                              §§push(§§pop() + §§pop() * _loc26_.y);
                                                                           }
                                                                           §§goto(addr497);
                                                                        }
                                                                        §§pop().x = §§pop();
                                                                        if(!(_loc46_ && b2Collision))
                                                                        {
                                                                           addr506:
                                                                           §§push(_loc29_);
                                                                           §§push(_loc20_.col1.y);
                                                                           if(!_loc46_)
                                                                           {
                                                                              §§push(_loc26_.x);
                                                                              if(_loc47_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc46_)
                                                                                 {
                                                                                    addr533:
                                                                                    §§push(_loc20_.col2.y);
                                                                                    if(_loc47_ || param2)
                                                                                    {
                                                                                       addr529:
                                                                                       §§push(§§pop() * _loc26_.y);
                                                                                    }
                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                    addr534:
                                                                                    var _loc30_:b2Vec2;
                                                                                    §§push(_loc30_ = s_tangent2);
                                                                                    §§push(_loc29_.x);
                                                                                    if(!_loc46_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                    §§pop().x = §§pop();
                                                                                    if(!_loc46_)
                                                                                    {
                                                                                       §§push(_loc30_);
                                                                                       §§push(_loc29_.y);
                                                                                       if(!(_loc46_ && param2))
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                    }
                                                                                    var _loc31_:b2Vec2;
                                                                                    (_loc31_ = §_-ou§).x = _loc29_.y;
                                                                                    if(!(_loc46_ && param1))
                                                                                    {
                                                                                       §§push(_loc31_);
                                                                                       §§push(_loc29_.x);
                                                                                       if(_loc47_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                    }
                                                                                    var _loc32_:b2Vec2 = s_v11;
                                                                                    var _loc33_:b2Vec2 = s_v12;
                                                                                    if(_loc47_)
                                                                                    {
                                                                                       §§push(_loc32_);
                                                                                       §§push(_loc14_.position.x);
                                                                                       if(!_loc46_)
                                                                                       {
                                                                                          §§push(_loc20_.col1.x);
                                                                                          if(_loc47_)
                                                                                          {
                                                                                             §§push(_loc24_.x);
                                                                                             if(!(_loc46_ && param1))
                                                                                             {
                                                                                                addr637:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc47_ || param3)
                                                                                                {
                                                                                                   addr615:
                                                                                                   §§push(_loc20_.col2.x);
                                                                                                   if(!(_loc46_ && b2Collision))
                                                                                                   {
                                                                                                      addr625:
                                                                                                      §§push(§§pop() * _loc24_.y);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().x = §§pop() + §§pop();
                                                                                                if(_loc47_ || param1)
                                                                                                {
                                                                                                   §§push(_loc32_);
                                                                                                   §§push(_loc14_.position.y);
                                                                                                   if(_loc47_)
                                                                                                   {
                                                                                                      §§push(_loc20_.col1.y);
                                                                                                      if(!(_loc46_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc24_.x);
                                                                                                         if(!(_loc46_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc47_)
                                                                                                            {
                                                                                                               addr687:
                                                                                                               §§push(_loc20_.col2.y);
                                                                                                               if(_loc47_ || param1)
                                                                                                               {
                                                                                                                  addr683:
                                                                                                                  §§push(§§pop() * _loc24_.y);
                                                                                                               }
                                                                                                               §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                               if(_loc47_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc33_);
                                                                                                                  §§push(_loc14_.position.x);
                                                                                                                  if(_loc47_ || b2Collision)
                                                                                                                  {
                                                                                                                     §§push(_loc20_.col1.x);
                                                                                                                     if(_loc47_)
                                                                                                                     {
                                                                                                                        §§push(_loc25_.x);
                                                                                                                        if(_loc47_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc46_)
                                                                                                                           {
                                                                                                                              addr724:
                                                                                                                              §§push(_loc20_.col2.x);
                                                                                                                              if(!(_loc46_ && param2))
                                                                                                                              {
                                                                                                                                 addr737:
                                                                                                                                 §§push(§§pop() + §§pop() * _loc25_.y);
                                                                                                                              }
                                                                                                                              §§goto(addr737);
                                                                                                                           }
                                                                                                                           addr739:
                                                                                                                           §§pop().x = §§pop() + §§pop();
                                                                                                                           if(!_loc46_)
                                                                                                                           {
                                                                                                                              addr742:
                                                                                                                              §§push(_loc33_);
                                                                                                                              §§push(_loc14_.position.y);
                                                                                                                              if(_loc47_)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.col1.y);
                                                                                                                                 if(!(_loc46_ && b2Collision))
                                                                                                                                 {
                                                                                                                                    §§push(_loc25_.x);
                                                                                                                                    if(_loc47_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc47_)
                                                                                                                                       {
                                                                                                                                          addr765:
                                                                                                                                          §§push(_loc20_.col2.y);
                                                                                                                                          if(!(_loc46_ && param3))
                                                                                                                                          {
                                                                                                                                             addr778:
                                                                                                                                             §§push(§§pop() + §§pop() * _loc25_.y);
                                                                                                                                          }
                                                                                                                                          §§goto(addr778);
                                                                                                                                       }
                                                                                                                                       addr780:
                                                                                                                                       §§pop().y = §§pop() + §§pop();
                                                                                                                                       §§push(_loc31_.x);
                                                                                                                                       if(_loc47_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(_loc32_.x);
                                                                                                                                          if(_loc47_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc46_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(_loc31_.y);
                                                                                                                                                if(_loc47_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr819:
                                                                                                                                                   §§push(§§pop() + §§pop() * _loc32_.y);
                                                                                                                                                   if(_loc46_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   var _loc34_:* = §§pop();
                                                                                                                                                   §§push(_loc29_.x);
                                                                                                                                                   if(_loc47_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(_loc47_ || b2Collision)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc32_.x);
                                                                                                                                                         if(_loc47_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc46_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc29_.y);
                                                                                                                                                               if(_loc47_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc32_.y);
                                                                                                                                                                  if(_loc46_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr861:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc46_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr870:
                                                                                                                                                                     var _loc35_:Number = §§pop();
                                                                                                                                                                     §§push(_loc29_.x);
                                                                                                                                                                     if(_loc47_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc33_.x);
                                                                                                                                                                        if(!(_loc46_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc47_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc29_.y);
                                                                                                                                                                              if(_loc47_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc33_.y);
                                                                                                                                                                                 if(!_loc46_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr896:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc47_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr900:
                                                                                                                                                                                       §§push(§§pop() + _loc7_);
                                                                                                                                                                                       if(_loc46_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr904:
                                                                                                                                                                                       var _loc36_:* = §§pop();
                                                                                                                                                                                       var _loc37_:Vector.<§_-uS§> = s_clipPoints1;
                                                                                                                                                                                       var _loc38_:Vector.<§_-uS§> = s_clipPoints2;
                                                                                                                                                                                       §§push(§_-cp§(_loc37_,_loc21_,_loc30_,_loc35_));
                                                                                                                                                                                       if(!(_loc46_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          if(!_loc46_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc39_ = §§pop();
                                                                                                                                                                                             §§push(2);
                                                                                                                                                                                             if(!(_loc46_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc47_ || b2Collision)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr952:
                                                                                                                                                                                                   §§push(int(§_-cp§(_loc38_,_loc37_,_loc29_,_loc36_)));
                                                                                                                                                                                                   if(!_loc46_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(!(_loc46_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr963:
                                                                                                                                                                                                         _loc39_ = §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr965:
                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr966);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         param1.§_-Pv§.SetV(_loc27_);
                                                                                                                                                                                                         param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                                                         var _loc40_:int = 0;
                                                                                                                                                                                                         var _loc41_:int = 0;
                                                                                                                                                                                                         while(_loc41_ < b2Settings.b2_maxManifoldPoints)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc6_ = _loc38_[_loc41_];
                                                                                                                                                                                                            if(_loc46_ && b2Collision)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc31_.x);
                                                                                                                                                                                                            if(!(_loc46_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_.v.x);
                                                                                                                                                                                                               if(_loc47_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc46_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc31_.y);
                                                                                                                                                                                                                     if(!(_loc46_ && b2Collision))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * _loc6_.v.y);
                                                                                                                                                                                                                        if(!_loc46_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1030:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc47_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1038:
                                                                                                                                                                                                                              §§push(_loc34_);
                                                                                                                                                                                                                              if(_loc47_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1041:
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(!(_loc46_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1049:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    if(_loc47_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1052:
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(!_loc46_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1055:
                                                                                                                                                                                                                                          _loc42_ = §§pop();
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc47_ || param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc43_ = param1.§_-hn§[_loc40_];
                                                                                                                                                                                                                                          _loc20_ = _loc15_.R;
                                                                                                                                                                                                                                          if(_loc47_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.v);
                                                                                                                                                                                                                                             if(!_loc46_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                if(_loc47_ || param3)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_.position);
                                                                                                                                                                                                                                                   if(!_loc46_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                      if(!(_loc46_ && param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(_loc47_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            if(!_loc46_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc44_ = §§pop();
                                                                                                                                                                                                                                                               if(_loc47_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1117:
                                                                                                                                                                                                                                                                  §§push(_loc6_.v.y);
                                                                                                                                                                                                                                                                  if(_loc47_ || b2Collision)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1128:
                                                                                                                                                                                                                                                                     §§push(§§pop() - _loc15_.position.y);
                                                                                                                                                                                                                                                                     if(_loc47_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1137:
                                                                                                                                                                                                                                                                        _loc45_ = §§pop();
                                                                                                                                                                                                                                                                        if(!(_loc46_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                                                                           if(!(_loc46_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc44_);
                                                                                                                                                                                                                                                                              if(!(_loc46_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc20_.col1.x);
                                                                                                                                                                                                                                                                                 if(_loc47_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(!(_loc46_ && b2Collision))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc45_);
                                                                                                                                                                                                                                                                                       if(!(_loc46_ && param3))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc20_.col1.y);
                                                                                                                                                                                                                                                                                          if(!_loc46_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(!_loc46_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1191:
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                if(!_loc46_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                   addr1197:
                                                                                                                                                                                                                                                                                                   §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                                                                                                   §§push(_loc44_);
                                                                                                                                                                                                                                                                                                   if(!_loc46_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc20_.col2.x);
                                                                                                                                                                                                                                                                                                      if(!(_loc46_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1221:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(!_loc46_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1213:
                                                                                                                                                                                                                                                                                                            §§push(_loc45_);
                                                                                                                                                                                                                                                                                                            if(!_loc46_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1219:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * _loc20_.col2.y);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                         if(_loc47_ || param3)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1229:
                                                                                                                                                                                                                                                                                                            §§push(_loc43_.m_id);
                                                                                                                                                                                                                                                                                                            if(!_loc46_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().Set(_loc6_.id);
                                                                                                                                                                                                                                                                                                               addr1249:
                                                                                                                                                                                                                                                                                                               if(_loc47_ || param3)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1243:
                                                                                                                                                                                                                                                                                                                  §§push(_loc43_.m_id);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               _loc41_++;
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§pop().§_-0P§.§_-oN§ = _loc17_;
                                                                                                                                                                                                                                                                                                            _loc40_++;
                                                                                                                                                                                                                                                                                                            §§goto(addr1249);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1243);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1221);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1213);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1221);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1219);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1213);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1191);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1213);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1197);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1137);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1243);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1137);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1128);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1137);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1117);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1229);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1249);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1052);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1055);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1030);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1038);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1041);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1049);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc47_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param1.§_-Tu§ = _loc40_;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         return;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr965);
                                                                                                                                                                                                   §§push(2);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr966:
                                                                                                                                                                                                return;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr965);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr963);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr952);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr904);
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr900);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr896);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr900);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr870);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc47_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr861);
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr870);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr861);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr870);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr819);
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr819);
                                                                                                                                    }
                                                                                                                                    §§goto(addr778);
                                                                                                                                 }
                                                                                                                                 §§goto(addr765);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr780);
                                                                                                                        }
                                                                                                                        §§goto(addr737);
                                                                                                                     }
                                                                                                                     §§goto(addr724);
                                                                                                                  }
                                                                                                                  §§goto(addr739);
                                                                                                               }
                                                                                                               §§goto(addr742);
                                                                                                            }
                                                                                                            §§goto(addr687);
                                                                                                         }
                                                                                                         §§goto(addr683);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr687);
                                                                                                }
                                                                                                §§goto(addr742);
                                                                                             }
                                                                                             §§goto(addr625);
                                                                                          }
                                                                                          §§goto(addr615);
                                                                                       }
                                                                                       §§goto(addr637);
                                                                                    }
                                                                                    §§goto(addr742);
                                                                                 }
                                                                                 §§goto(addr533);
                                                                              }
                                                                              §§goto(addr529);
                                                                           }
                                                                           §§goto(addr533);
                                                                        }
                                                                        §§goto(addr534);
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr506);
                                                            }
                                                            §§push(_loc24_.y);
                                                            if(!(_loc46_ && param1))
                                                            {
                                                               §§push(§§pop() + _loc25_.y);
                                                            }
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   §§goto(addr440);
                                                }
                                                §§goto(addr372);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr340);
                                       }
                                       §§goto(addr252);
                                    }
                                    _loc17_ = §§pop();
                                    §§goto(addr252);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr252);
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(_loc47_)
                              {
                                 §§push(_loc8_);
                                 if(_loc47_ || param2)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc47_ || b2Collision)
                                    {
                                       _loc16_ = §§pop();
                                       if(_loc47_)
                                       {
                                          addr286:
                                          param1.§_-Sj§ = b2Manifold.§_-zO§;
                                          if(!_loc47_)
                                          {
                                          }
                                          §§goto(addr295);
                                       }
                                       §§push(0);
                                    }
                                 }
                                 _loc17_ = §§pop();
                                 §§goto(addr252);
                              }
                              §§goto(addr286);
                           }
                        }
                     }
                     §§goto(addr208);
                  }
                  §§goto(addr210);
               }
               addr164:
               return;
            }
            §§goto(addr165);
         }
         addr118:
      }
      
      public static function §_-QS§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(_loc17_)
         {
            param1.§_-Tu§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§_-Ga§;
         §§push(param3.position.x);
         if(!(_loc16_ && param1))
         {
            §§push(_loc6_.col1.x);
            if(!_loc16_)
            {
               §§push(_loc7_.x);
               if(!_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc16_ && b2Collision))
                  {
                     addr60:
                     §§push(_loc6_.col2.x);
                     if(!(_loc16_ && param3))
                     {
                        addr70:
                        §§push(§§pop() * _loc7_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ || param2)
                  {
                     addr83:
                     var _loc8_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc17_ || param3)
                     {
                        §§push(_loc6_.col1.y);
                        if(_loc17_ || b2Collision)
                        {
                           §§push(_loc7_.x);
                           if(_loc17_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc16_)
                              {
                                 addr111:
                                 §§push(_loc6_.col2.y);
                                 if(!(_loc16_ && b2Collision))
                                 {
                                    addr124:
                                    §§push(§§pop() + §§pop() * _loc7_.y);
                                 }
                                 §§goto(addr124);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 addr129:
                                 var _loc9_:Number = §§pop();
                                 _loc6_ = param5.R;
                                 _loc7_ = param4.§_-Ga§;
                                 §§push(param5.position.x);
                                 if(!(_loc16_ && param3))
                                 {
                                    §§push(_loc6_.col1.x);
                                    if(_loc17_ || param1)
                                    {
                                       §§push(_loc7_.x);
                                       if(!_loc16_)
                                       {
                                          addr181:
                                          §§push(§§pop() * §§pop());
                                          if(!_loc16_)
                                          {
                                             §§push(_loc6_.col2.x);
                                             if(_loc17_)
                                             {
                                                §§push(§§pop() * _loc7_.y);
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc16_)
                                          {
                                             addr185:
                                             var _loc10_:Number = §§pop();
                                             §§push(param5.position.y);
                                             if(!(_loc16_ && param2))
                                             {
                                                §§push(_loc6_.col1.y);
                                                if(!(_loc16_ && param2))
                                                {
                                                   §§push(_loc7_.x);
                                                   if(_loc17_ || b2Collision)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_ || param3)
                                                      {
                                                         addr232:
                                                         §§push(_loc6_.col2.y);
                                                         if(_loc17_)
                                                         {
                                                            addr228:
                                                            §§push(§§pop() * _loc7_.y);
                                                         }
                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                         if(_loc17_)
                                                         {
                                                            addr235:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc10_);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(§§pop() - _loc8_);
                                                            if(_loc17_ || param1)
                                                            {
                                                               addr249:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            §§push(_loc11_);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(!_loc16_)
                                                               {
                                                                  addr258:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(_loc12_);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(_loc13_);
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           addr277:
                                                                           §§push(§§pop() * _loc13_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               addr283:
                                                               var _loc14_:Number = §§pop();
                                                               var _loc15_:Number = param2.§_-Q2§ + param4.§_-Q2§;
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(_loc14_);
                                                                  §§push(_loc15_);
                                                                  if(!(_loc16_ && param2))
                                                                  {
                                                                     §§push(§§pop() * _loc15_);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               param1.§_-Sj§ = b2Manifold.§_-1§;
                                                               param1.m_localPoint.SetV(param2.§_-Ga§);
                                                               param1.§_-Pv§.§_-0a§();
                                                               param1.§_-Tu§ = 1;
                                                               if(_loc17_)
                                                               {
                                                                  param1.§_-hn§[0].m_localPoint.SetV(param4.§_-Ga§);
                                                                  param1.§_-hn§[0].m_id.key = 0;
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr83);
               }
               §§goto(addr70);
            }
            §§goto(addr60);
         }
         §§goto(addr83);
      }
      
      public static function §_-Ip§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = true;
         var _loc6_:b2ManifoldPoint = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Mat22 = null;
         var _loc17_:Number = NaN;
         var _loc31_:* = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         if(!(_loc34_ && param2))
         {
            param1.§_-Tu§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§_-Ga§;
         §§push(param5.position.x);
         if(!_loc34_)
         {
            §§push(_loc12_.col1.x);
            if(_loc35_)
            {
               §§push(_loc11_.x);
               if(!_loc34_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc35_ || param1)
                  {
                     addr79:
                     §§push(_loc12_.col2.x);
                     if(!_loc34_)
                     {
                        addr87:
                        §§push(§§pop() + §§pop() * _loc11_.y);
                     }
                     §§goto(addr87);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc34_ && b2Collision))
                  {
                     addr96:
                     §§push(Number(§§pop()));
                  }
                  var _loc13_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc35_)
                  {
                     §§push(_loc12_.col1.y);
                     if(_loc35_)
                     {
                        §§push(_loc11_.x);
                        if(!(_loc34_ && param2))
                        {
                           addr139:
                           §§push(§§pop() * §§pop());
                           if(!(_loc34_ && b2Collision))
                           {
                              §§push(_loc12_.col2.y);
                              if(_loc35_ || param2)
                              {
                                 §§push(§§pop() * _loc11_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc34_ && param3))
                           {
                              addr147:
                              §§push(Number(§§pop()));
                           }
                           var _loc14_:* = §§pop();
                           if(_loc35_)
                           {
                              §§push(_loc13_);
                              if(_loc35_)
                              {
                                 §§push(param3.position);
                                 if(!(_loc34_ && param3))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc34_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc34_)
                                       {
                                          addr169:
                                          §§push(Number(§§pop()));
                                          if(_loc35_ || b2Collision)
                                          {
                                             addr177:
                                             _loc7_ = §§pop();
                                             if(!(_loc34_ && param3))
                                             {
                                                addr185:
                                                §§push(_loc14_);
                                                if(_loc35_ || param1)
                                                {
                                                   addr196:
                                                   §§push(§§pop() - param3.position.y);
                                                   if(_loc35_)
                                                   {
                                                      addr199:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                }
                                                §§goto(addr199);
                                             }
                                             _loc12_ = param3.R;
                                             §§push(_loc7_);
                                             if(_loc35_)
                                             {
                                                §§push(_loc12_.col1.x);
                                                if(_loc35_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc35_ || param1)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc34_ && b2Collision))
                                                      {
                                                         addr238:
                                                         §§push(§§pop() + §§pop() * _loc12_.col1.y);
                                                         if(_loc35_ || param2)
                                                         {
                                                            addr246:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   var _loc15_:* = §§pop();
                                                   §§push(_loc7_);
                                                   if(_loc35_)
                                                   {
                                                      §§push(_loc12_.col2.x);
                                                      if(!(_loc34_ && param3))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc35_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc35_ || param1)
                                                            {
                                                               addr272:
                                                               §§push(§§pop() * _loc12_.col2.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc34_)
                                                            {
                                                            }
                                                            addr280:
                                                            var _loc16_:* = §§pop();
                                                            var _loc18_:* = 0;
                                                            §§push(-Number.MAX_VALUE);
                                                            if(_loc35_ || param2)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc19_:* = §§pop();
                                                            var _loc20_:Number = param2.§_-Q2§ + param4.§_-Q2§;
                                                            §§push(param2.§_-Wz§);
                                                            if(_loc35_ || param3)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            var _loc21_:* = §§pop();
                                                            var _loc22_:Vector.<b2Vec2> = param2.§_-Ui§;
                                                            var _loc23_:Vector.<b2Vec2> = param2.§_-3s§;
                                                            var _loc24_:int = 0;
                                                            while(true)
                                                            {
                                                               §§push(_loc24_);
                                                               if(_loc35_)
                                                               {
                                                                  §§push(_loc21_);
                                                                  if(!(_loc34_ && b2Collision))
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        §§push(_loc18_);
                                                                        if(!(_loc34_ && param1))
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     _loc11_ = _loc22_[_loc24_];
                                                                     if(!_loc34_)
                                                                     {
                                                                        §§push(_loc15_);
                                                                        if(_loc35_ || param3)
                                                                        {
                                                                           §§push(_loc11_.x);
                                                                           if(_loc35_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!(_loc34_ && param2))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr355:
                                                                                    _loc7_ = §§pop();
                                                                                    addr373:
                                                                                    if(_loc35_ || param1)
                                                                                    {
                                                                                       §§push(_loc16_);
                                                                                       if(_loc35_)
                                                                                       {
                                                                                          addr368:
                                                                                          §§push(§§pop() - _loc11_.y);
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             addr371:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                    §§push(_loc7_);
                                                                                    if(_loc35_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc34_)
                                                                                       {
                                                                                          §§push(_loc11_.y);
                                                                                          if(_loc35_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() * _loc8_);
                                                                                             if(!(_loc34_ && param2))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc35_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         addr413:
                                                                                                         _loc31_ = §§pop();
                                                                                                         if(!_loc34_)
                                                                                                         {
                                                                                                            §§push(_loc20_);
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               addr419:
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  if(_loc35_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(_loc31_);
                                                                                                               §§push(_loc19_);
                                                                                                            }
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               if(!(_loc34_ && param3))
                                                                                                               {
                                                                                                                  addr442:
                                                                                                                  _loc19_ = Number(_loc31_);
                                                                                                                  if(_loc35_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc24_);
                                                                                                                     if(_loc35_ || param2)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                     }
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     if(!(_loc35_ || param3))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            _loc24_++;
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr442);
                                                                                                      }
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                       §§goto(addr442);
                                                                                    }
                                                                                    §§goto(addr413);
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 §§goto(addr373);
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        §§goto(addr371);
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  addr490:
                                                                  var _loc25_:* = §§pop();
                                                                  if(!_loc34_)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc35_ || b2Collision)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc34_ && b2Collision))
                                                                        {
                                                                           if(§§pop() < _loc21_)
                                                                           {
                                                                              §§push(_loc25_);
                                                                              if(!(_loc34_ && param1))
                                                                              {
                                                                                 addr522:
                                                                                 §§push(int(§§pop() + 1));
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr534:
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc34_ && param1))
                                                                              {
                                                                                 §§goto(addr534);
                                                                              }
                                                                           }
                                                                           var _loc26_:* = §§pop();
                                                                           var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                           var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                           §§push(_loc19_);
                                                                           if(_loc35_)
                                                                           {
                                                                              if(§§pop() < Number.MIN_VALUE)
                                                                              {
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    param1.§_-Tu§ = 1;
                                                                                    param1.§_-Sj§ = b2Manifold.§_-zO§;
                                                                                    param1.§_-Pv§.SetV(_loc23_[_loc18_]);
                                                                                    §§push(param1.m_localPoint);
                                                                                    if(_loc35_ || b2Collision)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       if(_loc35_ || param1)
                                                                                       {
                                                                                          §§push(_loc27_.x);
                                                                                          if(!_loc34_)
                                                                                          {
                                                                                             §§push(_loc28_.x);
                                                                                             if(_loc35_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc34_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc34_)
                                                                                                   {
                                                                                                      addr605:
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!_loc34_)
                                                                                                      {
                                                                                                         §§goto(addr610);
                                                                                                      }
                                                                                                      addr643:
                                                                                                      §§push(_loc15_);
                                                                                                      if(_loc35_)
                                                                                                      {
                                                                                                         §§push(_loc27_.x);
                                                                                                         if(_loc35_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc35_)
                                                                                                            {
                                                                                                               §§push(_loc28_.x);
                                                                                                               if(!_loc34_)
                                                                                                               {
                                                                                                                  §§push(_loc27_.x);
                                                                                                                  if(!(_loc34_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc34_ && b2Collision))
                                                                                                                     {
                                                                                                                        addr674:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc35_)
                                                                                                                        {
                                                                                                                           §§push(_loc16_);
                                                                                                                           if(_loc35_)
                                                                                                                           {
                                                                                                                              §§push(_loc27_.y);
                                                                                                                              if(_loc35_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc35_)
                                                                                                                                 {
                                                                                                                                    addr687:
                                                                                                                                    §§push(_loc28_.y);
                                                                                                                                    if(_loc34_ && b2Collision)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr700:
                                                                                                                                    §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                    if(!_loc34_)
                                                                                                                                    {
                                                                                                                                       addr704:
                                                                                                                                       var _loc29_:Number = §§pop();
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                          if(_loc35_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc34_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc27_.x);
                                                                                                                                                if(_loc35_)
                                                                                                                                                {
                                                                                                                                                   addr724:
                                                                                                                                                   §§push(_loc28_.x);
                                                                                                                                                   if(!(_loc34_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc35_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc34_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            if(!(_loc34_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc28_.y);
                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr764:
                                                                                                                                                                     §§push(_loc27_.y);
                                                                                                                                                                     if(_loc35_)
                                                                                                                                                                     {
                                                                                                                                                                        addr768:
                                                                                                                                                                        §§push(§§pop() - _loc28_.y);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc34_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr781:
                                                                                                                                                                     var _loc30_:Number = §§pop();
                                                                                                                                                                     if(_loc29_ <= 0)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        if(!(_loc34_ && b2Collision))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc27_.x);
                                                                                                                                                                           if(_loc35_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              §§push(_loc27_.x);
                                                                                                                                                                              if(_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(!(_loc34_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr822:
                                                                                                                                                                                       §§push(§§pop() - _loc27_.y);
                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                       §§push(_loc27_.y);
                                                                                                                                                                                       if(!_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          if(_loc35_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() > §§pop() * §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr910:
                                                                                                                                                                                                param1.§_-hn§[0].m_id.key = 0;
                                                                                                                                                                                                if(_loc34_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr1132);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                param1.§_-Tu§ = 1;
                                                                                                                                                                                                param1.§_-Sj§ = b2Manifold.§_-zO§;
                                                                                                                                                                                                §§push(param1.§_-Pv§);
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc27_.x);
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop() - §§pop();
                                                                                                                                                                                                      if(_loc35_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param1.§_-Pv§);
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         if(!(_loc34_ && b2Collision))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc27_.y);
                                                                                                                                                                                                            if(!(_loc34_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().y = §§pop() - §§pop();
                                                                                                                                                                                                               param1.§_-Pv§.Normalize();
                                                                                                                                                                                                               §§push(param1.m_localPoint);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().SetV(_loc27_);
                                                                                                                                                                                                                  param1.§_-hn§[0].m_localPoint.SetV(param4.§_-Ga§);
                                                                                                                                                                                                                  §§goto(addr910);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1202);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1000:
                                                                                                                                                                                                            §§pop().x = §§pop() - §§pop();
                                                                                                                                                                                                            addr999:
                                                                                                                                                                                                            §§push(param1.§_-Pv§);
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1009);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1009:
                                                                                                                                                                                                            §§pop().y = §§pop() - _loc28_.y;
                                                                                                                                                                                                            addr1008:
                                                                                                                                                                                                            addr1006:
                                                                                                                                                                                                            if(!_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               param1.§_-Pv§.Normalize();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(param1.m_localPoint);
                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1175:
                                                                                                                                                                                                               §§pop().Set(_loc32_,_loc33_);
                                                                                                                                                                                                               addr1178:
                                                                                                                                                                                                               param1.§_-hn§[0].m_localPoint.SetV(param4.§_-Ga§);
                                                                                                                                                                                                               if(!_loc34_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1195:
                                                                                                                                                                                                                  param1.§_-hn§[0].m_id.key = 0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1202);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1202:
                                                                                                                                                                                                            return;
                                                                                                                                                                                                            §§pop().SetV(_loc28_);
                                                                                                                                                                                                            param1.§_-hn§[0].m_localPoint.SetV(param4.§_-Ga§);
                                                                                                                                                                                                            param1.§_-hn§[0].m_id.key = 0;
                                                                                                                                                                                                            §§goto(addr1202);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1009);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr990:
                                                                                                                                                                                                         §§push(param1.§_-Pv§);
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         if(_loc35_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc28_.x);
                                                                                                                                                                                                            if(_loc35_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr999);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1008);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1006);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr999);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1000);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1202);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr951:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(!(_loc34_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc34_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr969:
                                                                                                                                                                                                   §§push(§§pop() + (_loc16_ - _loc28_.y) * (_loc16_ - _loc28_.y));
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   if(_loc35_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!_loc34_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr979:
                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            return;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         param1.§_-Tu§ = 1;
                                                                                                                                                                                                         param1.§_-Sj§ = b2Manifold.§_-zO§;
                                                                                                                                                                                                         §§goto(addr990);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1097:
                                                                                                                                                                                                         §§push((§§pop() - _loc33_) * _loc23_[_loc25_].y);
                                                                                                                                                                                                         if(!_loc34_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1105:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc35_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1113:
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(!(_loc34_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1121:
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(_loc35_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1129:
                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1131:
                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1132:
                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  param1.§_-Tu§ = 1;
                                                                                                                                                                                                                  param1.§_-Sj§ = b2Manifold.§_-zO§;
                                                                                                                                                                                                                  §§push(param1.§_-Pv§);
                                                                                                                                                                                                                  if(_loc35_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                     if(!_loc34_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(param1.§_-Pv§);
                                                                                                                                                                                                                        if(!(_loc34_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1165:
                                                                                                                                                                                                                           §§pop().y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                           §§push(param1.§_-Pv§);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                                                                        §§goto(addr1175);
                                                                                                                                                                                                                        §§push(param1.m_localPoint);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1195);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1165);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1131);
                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1121);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1097);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1113);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr979);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr969);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1129);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1113);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr822);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1097);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr1072:
                                                                                                                                                                           §§push(_loc32_);
                                                                                                                                                                           if(_loc35_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr1080:
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc35_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                 if(!_loc34_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1095:
                                                                                                                                                                                    §§goto(addr1097);
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1121);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1095);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1105);
                                                                                                                                                                     }
                                                                                                                                                                     else if(_loc30_ <= 0)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           §§push(_loc28_.x);
                                                                                                                                                                           if(_loc35_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              §§push(_loc28_.x);
                                                                                                                                                                              if(_loc35_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr951);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr969);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1080);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1178);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        §§push(_loc27_.x);
                                                                                                                                                                        if(!_loc34_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc28_.x);
                                                                                                                                                                           if(_loc35_ || b2Collision)
                                                                                                                                                                           {
                                                                                                                                                                              _loc32_ = §§pop() * (§§pop() + §§pop());
                                                                                                                                                                              §§push(0.5 * (_loc27_.y + _loc28_.y));
                                                                                                                                                                              if(_loc35_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc33_ = §§pop();
                                                                                                                                                                                 §§goto(addr1072);
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1095);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1097);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1097);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr781);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr764);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr781);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr764);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr768);
                                                                                                                                                }
                                                                                                                                                §§goto(addr764);
                                                                                                                                             }
                                                                                                                                             §§goto(addr781);
                                                                                                                                          }
                                                                                                                                          §§goto(addr724);
                                                                                                                                       }
                                                                                                                                       §§goto(addr781);
                                                                                                                                    }
                                                                                                                                    §§goto(addr704);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr700);
                                                                                                                              §§push(§§pop() - _loc27_.y);
                                                                                                                           }
                                                                                                                           §§goto(addr700);
                                                                                                                        }
                                                                                                                        §§goto(addr704);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr687);
                                                                                                            }
                                                                                                            §§goto(addr704);
                                                                                                         }
                                                                                                         §§goto(addr674);
                                                                                                      }
                                                                                                      §§goto(addr704);
                                                                                                   }
                                                                                                   §§goto(addr613);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr625);
                                                                                       }
                                                                                       §§goto(addr605);
                                                                                    }
                                                                                    §§goto(addr610);
                                                                                 }
                                                                                 addr610:
                                                                                 §§push(param1.m_localPoint);
                                                                                 §§push(0.5);
                                                                                 if(_loc35_)
                                                                                 {
                                                                                    addr613:
                                                                                    §§push(_loc27_.y);
                                                                                    if(_loc35_ || b2Collision)
                                                                                    {
                                                                                       addr625:
                                                                                       §§push(§§pop() * (§§pop() + _loc28_.y));
                                                                                    }
                                                                                    §§goto(addr625);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 param1.§_-hn§[0].m_localPoint.SetV(param4.§_-Ga§);
                                                                                 param1.§_-hn§[0].m_id.key = 0;
                                                                                 return;
                                                                              }
                                                                              §§goto(addr643);
                                                                           }
                                                                           §§goto(addr704);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr522);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr490);
                                                            §§push(§§pop());
                                                         }
                                                         §§goto(addr280);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr185);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr147);
               }
               §§goto(addr87);
            }
            §§goto(addr79);
         }
         §§goto(addr96);
      }
      
      public static function §_-pb§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§_-N-§;
         var _loc4_:b2Vec2 = param1.§_-TE§;
         §§push(_loc3_.x);
         if(_loc9_ || b2Collision)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc9_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(!_loc10_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            _loc3_ = param1.§_-N-§;
            _loc4_ = param2.§_-TE§;
            §§push(_loc3_.x);
            if(_loc9_)
            {
               §§push(§§pop() - _loc4_.x);
               if(!(_loc10_ && b2Collision))
               {
                  addr70:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(_loc3_.y);
               if(_loc9_)
               {
                  §§push(§§pop() - _loc4_.y);
                  if(_loc9_)
                  {
                     addr81:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  if(!(_loc10_ && param2))
                  {
                     §§push(_loc5_);
                     if(_loc9_ || _loc3_)
                     {
                        §§push(0);
                        if(!_loc10_)
                        {
                           §§push(§§pop() > §§pop());
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              if(!(_loc10_ && _loc3_))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§pop();
                                       §§push(_loc6_);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(0);
                                          if(_loc9_ || param1)
                                          {
                                             addr140:
                                             if(§§pop() > §§pop())
                                             {
                                                §§goto(addr189);
                                             }
                                             else
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc10_ && b2Collision))
                                                {
                                                   addr160:
                                                   §§push(0);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§goto(addr168);
                                                   }
                                                   addr183:
                                                   §§goto(addr184);
                                                   §§push(§§pop() > §§pop());
                                                }
                                             }
                                             §§goto(addr183);
                                             §§push(0);
                                          }
                                          addr168:
                                          §§push(§§pop() > §§pop());
                                          if(!_loc10_)
                                          {
                                             addr172:
                                             if(!§§pop())
                                             {
                                                §§goto(addr173);
                                             }
                                             addr184:
                                             if(§§pop())
                                             {
                                                §§push(false);
                                                if(!_loc10_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr189);
                                             }
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr160);
                  }
                  addr189:
                  if(!_loc10_)
                  {
                     §§push(false);
                     if(_loc9_ || param1)
                     {
                        return §§pop();
                     }
                     addr173:
                     §§pop();
                     §§push(_loc8_);
                  }
                  return true;
               }
               §§goto(addr81);
            }
            §§goto(addr70);
         }
         §§goto(addr35);
      }
   }
}
