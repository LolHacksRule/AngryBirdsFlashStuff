package §'!;§
{
   import §#b§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2Collision
   {
      
      public static const b2_nullFeature:uint = 255;
      
      private static var §7!B§:Vector.<§^A§>;
      
      private static var s_clipPoints1:Vector.<§^A§>;
      
      private static var s_clipPoints2:Vector.<§^A§>;
      
      private static var §`c§:Vector.<int>;
      
      private static var §=8§:Vector.<int>;
      
      private static var §[!,§:b2Vec2;
      
      private static var §>X§:b2Vec2;
      
      private static var §#G§:b2Vec2;
      
      private static var §>1§:b2Vec2;
      
      private static var §;!W§:b2Vec2;
      
      private static var s_tangent2:b2Vec2;
      
      private static var s_v11:b2Vec2;
      
      private static var s_v12:b2Vec2 = new b2Vec2();
      
      private static var b2CollidePolyTempVec:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Collision)
         {
            b2_nullFeature = 255;
            if(_loc1_ || b2Collision)
            {
               §7!B§ = §>!%§();
               s_clipPoints1 = §>!%§();
               s_clipPoints2 = §>!%§();
               if(!_loc2_)
               {
                  §`c§ = new Vector.<int>(1);
                  addr64:
                  §=8§ = new Vector.<int>(1);
                  §[!,§ = new b2Vec2();
                  if(!_loc2_)
                  {
                     §>X§ = new b2Vec2();
                     §#G§ = new b2Vec2();
                     §>1§ = new b2Vec2();
                  }
                  §;!W§ = new b2Vec2();
                  s_tangent2 = new b2Vec2();
               }
               s_v11 = new b2Vec2();
               §§goto(addr111);
            }
            §§goto(addr64);
         }
         addr111:
         if(_loc1_)
         {
            b2CollidePolyTempVec = new b2Vec2();
         }
      }
      
      public function b2Collision()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §%!-§(param1:Vector.<§^A§>, param2:Vector.<§^A§>, param3:b2Vec2, param4:Number) : int
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§^A§ = null;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc9_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:§^A§ = null;
         if(_loc14_)
         {
            _loc6_ = 0;
         }
         _loc7_ = (_loc5_ = param2[0]).v;
         var _loc8_:b2Vec2 = (_loc5_ = param2[1]).v;
         if(_loc14_)
         {
            §§push(param3.x);
            if(_loc14_)
            {
               §§push(§§pop() * _loc7_.x);
               if(!_loc15_)
               {
                  addr67:
                  §§push(param3.y);
                  §§push(_loc7_.y);
                  if(!(_loc15_ && param2))
                  {
                     §§push(§§pop() + §§pop() * §§pop());
                     if(_loc14_)
                     {
                        §§push(Number(§§pop() - param4));
                        if(!_loc15_)
                        {
                           _loc9_ = §§pop();
                           addr90:
                           §§push(param3.x);
                           §§push(_loc8_.x);
                           if(!_loc15_)
                           {
                              addr95:
                              §§push(§§pop() * §§pop());
                              §§push(param3.y);
                              if(!_loc15_)
                              {
                                 addr101:
                                 §§push(§§pop() * _loc8_.y);
                              }
                           }
                           §§push(§§pop() + §§pop() - param4);
                           if(!_loc15_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc10_:* = §§pop();
                        if(!(_loc15_ && b2Collision))
                        {
                           §§push(_loc9_);
                           §§push(0);
                           if(_loc14_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 param1[_loc6_++].Set(param2[0]);
                              }
                              §§push(_loc10_);
                              §§push(0);
                              if(!_loc15_)
                              {
                                 addr135:
                                 if(§§pop() <= §§pop())
                                 {
                                    param1[_loc6_++].Set(param2[1]);
                                    if(!(_loc15_ && param3))
                                    {
                                       addr163:
                                       §§push(_loc9_);
                                       if(!(_loc15_ && b2Collision))
                                       {
                                          §§push(_loc10_);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc15_ && param3))
                                             {
                                                §§push(0);
                                                if(_loc14_ || b2Collision)
                                                {
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr163);
                              }
                              addr190:
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    §§push(_loc9_);
                                    if(_loc14_)
                                    {
                                       addr196:
                                       §§push(_loc9_);
                                       if(_loc14_ || param1)
                                       {
                                          addr206:
                                          §§push(§§pop() / (§§pop() - _loc10_));
                                       }
                                       §§goto(addr206);
                                    }
                                    addr208:
                                    _loc11_ = §§pop();
                                    addr209:
                                    §§push(_loc12_ = (_loc5_ = param1[_loc6_]).v);
                                    §§push(_loc7_.x);
                                    if(!_loc15_)
                                    {
                                       §§push(_loc11_);
                                       if(_loc14_)
                                       {
                                          §§push(_loc8_.x);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() - _loc7_.x);
                                          }
                                          §§push(§§pop() * §§pop());
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    if(!(_loc15_ && param1))
                                    {
                                       §§push(_loc12_);
                                       §§push(_loc7_.y);
                                       if(!_loc15_)
                                       {
                                          §§push(_loc11_);
                                          if(!_loc15_)
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
                                    if(_loc14_ || param3)
                                    {
                                       if(_loc9_ > 0)
                                       {
                                          addr276:
                                          _loc13_ = param2[0];
                                          if(_loc14_ || b2Collision)
                                          {
                                             _loc5_.id = _loc13_.id;
                                             if(_loc15_)
                                             {
                                             }
                                             §§goto(addr322);
                                          }
                                       }
                                       else
                                       {
                                          _loc13_ = param2[1];
                                          if(!(_loc15_ && param3))
                                          {
                                             _loc5_.id = _loc13_.id;
                                          }
                                       }
                                       _loc6_++;
                                       §§goto(addr322);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr209);
                              }
                              addr322:
                              return _loc6_;
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr101);
               }
               §§goto(addr95);
            }
            §§goto(addr67);
         }
         §§goto(addr90);
      }
      
      public static function §'h§(param1:b2PolygonShape, param2:b2Transform, param3:int, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc11_:b2Mat22 = null;
         var _loc12_:b2Vec2 = null;
         var _loc25_:* = NaN;
         §§push(param1.§8k§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param1.§>!+§;
         var _loc8_:Vector.<b2Vec2> = param1.§+!]§;
         §§push(param4.§8k§);
         if(!_loc26_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param4.§>!+§;
         _loc11_ = param2.R;
         _loc12_ = _loc8_[param3];
         §§push(_loc11_.col1.x);
         if(_loc27_ || param1)
         {
            §§push(_loc12_.x);
            if(_loc27_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!_loc26_)
               {
                  §§push(_loc11_.col2.x);
                  if(_loc27_ || param3)
                  {
                     addr93:
                     §§push(§§pop() + §§pop() * _loc12_.y);
                     if(_loc27_ || param1)
                     {
                        addr101:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr93);
               }
               var _loc13_:* = §§pop();
               §§push(_loc11_.col1.y);
               if(!(_loc26_ && b2Collision))
               {
                  §§push(_loc12_.x);
                  if(!_loc26_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc26_ && param1))
                     {
                        §§push(_loc11_.col2.y);
                        if(_loc27_)
                        {
                           addr130:
                           §§push(§§pop() * _loc12_.y);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc26_)
                        {
                           addr136:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc14_:* = §§pop();
                     §§push((_loc11_ = param5.R).col1.x);
                     if(_loc27_ || param1)
                     {
                        §§push(_loc13_);
                        if(_loc27_ || b2Collision)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc26_ && param3))
                           {
                              §§push(_loc11_.col1.y);
                              if(_loc27_)
                              {
                                 addr173:
                                 §§push(§§pop() * _loc14_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc27_)
                              {
                                 addr179:
                                 var _loc15_:Number = §§pop();
                                 §§push(_loc11_.col2.x);
                                 if(_loc27_ || param1)
                                 {
                                    §§push(_loc13_);
                                    if(!_loc26_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc26_ && param3))
                                       {
                                          addr201:
                                          §§push(_loc11_.col2.y);
                                          if(!_loc26_)
                                          {
                                             addr206:
                                             §§push(§§pop() * _loc14_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc26_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc16_:* = §§pop();
                                       var _loc17_:* = 0;
                                       var _loc18_:Number = Number.MAX_VALUE;
                                       var _loc19_:int = 0;
                                       while(_loc19_ < _loc9_)
                                       {
                                          §§push((_loc12_ = _loc10_[_loc19_]).x);
                                          §§push(_loc15_);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc27_ || param3)
                                             {
                                                §§push(_loc12_.y);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop() * _loc16_);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc26_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc27_)
                                                         {
                                                            addr260:
                                                            §§push(§§pop());
                                                            if(!(_loc26_ && param1))
                                                            {
                                                               _loc25_ = §§pop();
                                                               addr270:
                                                               if(§§pop() < _loc18_)
                                                               {
                                                                  if(!_loc26_)
                                                                  {
                                                                     addr275:
                                                                     _loc18_ = _loc25_;
                                                                     if(!_loc27_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc19_);
                                                                     if(!_loc26_)
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
                                                            §§goto(addr270);
                                                         }
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr260);
                                          }
                                          §§goto(addr270);
                                       }
                                       _loc12_ = _loc7_[param3];
                                       _loc11_ = param2.R;
                                       §§push(param2.position.x);
                                       if(!_loc26_)
                                       {
                                          §§push(_loc11_.col1.x);
                                          if(_loc27_)
                                          {
                                             §§push(_loc12_.x);
                                             if(!(_loc26_ && param3))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc26_)
                                                {
                                                   addr335:
                                                   §§push(_loc11_.col2.x);
                                                   if(_loc27_ || b2Collision)
                                                   {
                                                      addr345:
                                                      §§push(§§pop() * _loc12_.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc26_)
                                                {
                                                   addr353:
                                                   var _loc20_:Number = §§pop();
                                                   §§push(param2.position.y);
                                                   if(!(_loc26_ && param3))
                                                   {
                                                      §§push(_loc11_.col1.y);
                                                      if(_loc27_)
                                                      {
                                                         §§push(_loc12_.x);
                                                         if(!(_loc26_ && param2))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc27_)
                                                            {
                                                               addr390:
                                                               §§push(_loc11_.col2.y);
                                                               if(!_loc26_)
                                                               {
                                                                  addr386:
                                                                  §§push(§§pop() * _loc12_.y);
                                                               }
                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                               if(!(_loc26_ && param2))
                                                               {
                                                                  addr398:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc21_:* = §§pop();
                                                               _loc12_ = _loc10_[_loc17_];
                                                               _loc11_ = param5.R;
                                                               §§push(param5.position.x);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(_loc11_.col1.x);
                                                                  if(!(_loc26_ && param2))
                                                                  {
                                                                     §§push(_loc12_.x);
                                                                     if(_loc27_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc27_)
                                                                        {
                                                                           addr431:
                                                                           §§push(_loc11_.col2.x);
                                                                           if(!(_loc26_ && param1))
                                                                           {
                                                                              addr444:
                                                                              §§push(§§pop() + §§pop() * _loc12_.y);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc26_ && param2))
                                                                        {
                                                                           addr453:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc22_:* = §§pop();
                                                                        §§push(param5.position.y);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(_loc11_.col1.y);
                                                                           if(_loc27_ || param1)
                                                                           {
                                                                              §§push(_loc12_.x);
                                                                              if(!_loc26_)
                                                                              {
                                                                                 addr496:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc26_ && b2Collision))
                                                                                 {
                                                                                    §§push(_loc11_.col2.y);
                                                                                    if(_loc27_ || b2Collision)
                                                                                    {
                                                                                       §§push(§§pop() * _loc12_.y);
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc26_ && b2Collision))
                                                                                 {
                                                                                    addr504:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc23_:* = §§pop();
                                                                                 if(!(_loc26_ && param2))
                                                                                 {
                                                                                    §§push(_loc22_);
                                                                                    if(!(_loc26_ && b2Collision))
                                                                                    {
                                                                                       §§push(_loc20_);
                                                                                       if(!(_loc26_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc27_ || param3)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc22_ = §§pop();
                                                                                          if(!(_loc26_ && param2))
                                                                                          {
                                                                                             §§push(_loc23_);
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                §§push(_loc21_);
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   addr559:
                                                                                                   _loc23_ = Number(§§pop() - §§pop());
                                                                                                   §§push(_loc22_);
                                                                                                   if(_loc27_ || param3)
                                                                                                   {
                                                                                                      §§goto(addr578);
                                                                                                   }
                                                                                                   §§goto(addr601);
                                                                                                   addr557:
                                                                                                }
                                                                                                §§goto(addr601);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr559);
                                                                                       }
                                                                                       §§goto(addr557);
                                                                                    }
                                                                                    addr578:
                                                                                    §§push(_loc13_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc27_ || param3)
                                                                                       {
                                                                                          §§push(_loc23_);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             §§goto(addr597);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr601);
                                                                                    }
                                                                                    addr597:
                                                                                    §§push(§§pop() * _loc14_);
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       addr601:
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                    }
                                                                                    var _loc24_:* = §§pop();
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr559);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                        §§goto(addr504);
                                                                     }
                                                                     §§goto(addr444);
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               §§goto(addr453);
                                                            }
                                                            §§goto(addr390);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr398);
                                                }
                                                §§goto(addr353);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr353);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr201);
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr130);
               }
               §§goto(addr136);
            }
            §§goto(addr93);
         }
         §§goto(addr101);
      }
      
      public static function §,n§(param1:Vector.<int>, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : Number
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Mat22 = null;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = 0;
         var _loc25_:* = NaN;
         §§push(param2.§8k§);
         if(_loc26_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<b2Vec2> = param2.§+!]§;
         _loc9_ = param5.R;
         _loc8_ = param4.§#M§;
         §§push(param5.position.x);
         if(!_loc27_)
         {
            §§push(_loc9_.col1.x);
            if(!(_loc27_ && param2))
            {
               §§push(_loc8_.x);
               if(_loc26_ || b2Collision)
               {
                  addr94:
                  §§push(§§pop() * §§pop());
                  if(_loc26_ || b2Collision)
                  {
                     §§push(_loc9_.col2.x);
                     if(!_loc27_)
                     {
                        §§push(§§pop() * _loc8_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc27_)
                  {
                     addr97:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  §§push(param5.position.y);
                  if(_loc26_ || param1)
                  {
                     §§push(_loc9_.col1.y);
                     if(_loc26_ || b2Collision)
                     {
                        §§push(_loc8_.x);
                        if(!(_loc27_ && param1))
                        {
                           addr150:
                           §§push(§§pop() * §§pop());
                           if(!(_loc27_ && param1))
                           {
                              §§push(_loc9_.col2.y);
                              if(_loc26_ || b2Collision)
                              {
                                 §§push(§§pop() * _loc8_.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc26_)
                           {
                              addr153:
                              §§push(Number(§§pop()));
                           }
                           var _loc11_:* = §§pop();
                           _loc9_ = param3.R;
                           _loc8_ = param2.§#M§;
                           if(_loc26_ || param2)
                           {
                              §§push(_loc10_);
                              if(!_loc27_)
                              {
                                 §§push(param3.position);
                                 if(_loc26_)
                                 {
                                    §§push(§§pop().x);
                                    §§push(_loc9_.col1);
                                    if(_loc26_ || b2Collision)
                                    {
                                       §§push(§§pop().x);
                                       §§push(_loc8_.x);
                                       if(_loc26_ || param3)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc27_)
                                          {
                                             §§push(_loc9_.col2);
                                             if(!_loc27_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc27_)
                                                {
                                                   addr207:
                                                   §§push(_loc8_.y);
                                                   if(!_loc27_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc27_ && param1))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc27_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc26_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc26_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc26_)
                                                                  {
                                                                     addr236:
                                                                     _loc10_ = §§pop();
                                                                     if(!(_loc27_ && param3))
                                                                     {
                                                                        addr247:
                                                                        §§push(_loc11_);
                                                                        §§push(param3.position.y);
                                                                        if(_loc26_ || param1)
                                                                        {
                                                                           §§push(_loc9_.col1);
                                                                           if(!(_loc27_ && param1))
                                                                           {
                                                                              addr264:
                                                                              §§push(§§pop().y);
                                                                              if(_loc26_ || param1)
                                                                              {
                                                                                 addr272:
                                                                                 §§push(_loc8_.x);
                                                                                 if(!_loc27_)
                                                                                 {
                                                                                    addr276:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc27_)
                                                                                    {
                                                                                       addr279:
                                                                                       §§push(_loc9_.col2.y);
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          addr284:
                                                                                          §§push(§§pop() * _loc8_.y);
                                                                                       }
                                                                                       §§push(§§pop() + (§§pop() + §§pop()));
                                                                                       if(!(_loc27_ && b2Collision))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc26_ || b2Collision)
                                                                                          {
                                                                                             _loc11_ = Number(§§pop());
                                                                                             addr306:
                                                                                             §§push(_loc10_);
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                addr309:
                                                                                                §§push(param3.R.col1.x);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   addr322:
                                                                                                   §§push(§§pop() * §§pop() + _loc11_ * param3.R.col1.y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      addr325:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc12_:* = §§pop();
                                                                                                   §§push(_loc10_);
                                                                                                   if(!(_loc27_ && param3))
                                                                                                   {
                                                                                                      §§push(param3.R.col2.x);
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            addr344:
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc26_ || param1)
                                                                                                            {
                                                                                                               addr352:
                                                                                                               §§push(§§pop() * param3.R.col2.y);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         var _loc14_:* = 0;
                                                                                                         §§push(-Number.MAX_VALUE);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc15_:* = §§pop();
                                                                                                         var _loc16_:int = 0;
                                                                                                         while(_loc16_ < _loc6_)
                                                                                                         {
                                                                                                            §§push((_loc8_ = _loc7_[_loc16_]).x);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc26_ || param3)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  §§push(_loc8_.y);
                                                                                                                  if(_loc26_ || param1)
                                                                                                                  {
                                                                                                                     addr402:
                                                                                                                     §§push(§§pop() * _loc13_);
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           addr409:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 addr415:
                                                                                                                                 _loc25_ = §§pop();
                                                                                                                                 addr416:
                                                                                                                                 §§push(_loc15_);
                                                                                                                              }
                                                                                                                              if(§§pop() > §§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc26_ || param1))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(_loc25_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr428:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 if(_loc26_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                 if(_loc27_ && param1)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc16_++;
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr428);
                                                                                                                        }
                                                                                                                        §§goto(addr416);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr415);
                                                                                                               }
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                            §§goto(addr409);
                                                                                                         }
                                                                                                         §§push(§'h§(param2,param3,_loc14_,param4,param5));
                                                                                                         if(_loc26_ || param3)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc17_:* = §§pop();
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!(_loc27_ && param3))
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  if(§§pop() >= 0)
                                                                                                                  {
                                                                                                                     addr495:
                                                                                                                     §§push(_loc14_);
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                        if(_loc26_ || b2Collision)
                                                                                                                        {
                                                                                                                           addr506:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc26_ || b2Collision)
                                                                                                                           {
                                                                                                                              addr527:
                                                                                                                              §§push(int(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr524:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§goto(addr527);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc18_:* = §§pop();
                                                                                                                        §§push(§'h§(param2,param3,_loc18_,param4,param5));
                                                                                                                        if(!(_loc27_ && param1))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc19_:* = §§pop();
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(1);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc26_ || b2Collision)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < _loc6_)
                                                                                                                                    {
                                                                                                                                       addr564:
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          addr569:
                                                                                                                                          §§push(int(§§pop() + 1));
                                                                                                                                          if(_loc26_ || param3)
                                                                                                                                          {
                                                                                                                                             addr586:
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr586);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr586);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc20_:* = §§pop();
                                                                                                                                    §§push(§'h§(param2,param3,_loc20_,param4,param5));
                                                                                                                                    if(_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    var _loc21_:* = §§pop();
                                                                                                                                    §§push(_loc19_);
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                             {
                                                                                                                                                addr625:
                                                                                                                                                §§pop();
                                                                                                                                                if(!(_loc27_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   if(_loc26_ || b2Collision)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr645:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(-1);
                                                                                                                                                            if(_loc26_ || param3)
                                                                                                                                                            {
                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                               _loc22_ = int(_loc18_);
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  if(!(_loc27_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     _loc23_ = Number(§§pop());
                                                                                                                                                                     addr722:
                                                                                                                                                                     loop16:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-1);
                                                                                                                                                                           if(_loc26_ || b2Collision)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - 1);
                                                                                                                                                                                    if(_loc26_ || b2Collision)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() >= §§pop());
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc26_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                         if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                                                                               if(_loc26_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr783:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr787:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc14_ = int(§§pop());
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr847:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§'h§(param2,param3,_loc14_,param4,param5)));
                                                                                                                                                                                                                              addr855:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(!(_loc27_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                                                                                                                       §§push(_loc23_);
                                                                                                                                                                                                                                       addr865:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                if(_loc26_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr891:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                                                                                                                      §§goto(addr892);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr891:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr892:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             param1[0] = _loc22_;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr912);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr863:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr865);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr847:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                                                                    addr825:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr826:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                                                                          if(_loc26_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr843:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc14_ = int(§§pop());
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr847);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr895);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr843:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr891);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr824:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr843);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr816:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr895:
                                                                                                                                                                                                                        loop4:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                           addr896:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(!(_loc26_ || b2Collision))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop4;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr912);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr783:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr892);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr775:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr826);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr767:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr912:
                                                                                                                                                                                                   do
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc22_ = §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(_loc26_);
                                                                                                                                                                                                   
                                                                                                                                                                                                   return _loc23_;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc6_ - 1);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr787);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr786:
                                                                                                                                                                                                §§goto(addr787);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr758:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr813:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr816);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr847);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   if(!(_loc27_ && b2Collision))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr843);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr813:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr892);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr812:
                                                                                                                                                                                          §§goto(addr813);
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr813);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr855);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr783);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                 if(_loc26_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr812);
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr825);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr824);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr825);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr787);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr706:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr722);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr767);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                               if(_loc26_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(1);
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc24_ = §§pop();
                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                        if(!(_loc27_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(_loc21_));
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                                                                    §§goto(addr706);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr775);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr722);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr843);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr891);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr783);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     param1[0] = _loc14_;
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        return _loc17_;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr895);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr865);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr786);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr813);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr863);
                                                                                                                                                }
                                                                                                                                                §§goto(addr706);
                                                                                                                                             }
                                                                                                                                             §§goto(addr758);
                                                                                                                                          }
                                                                                                                                          §§goto(addr645);
                                                                                                                                       }
                                                                                                                                       §§goto(addr625);
                                                                                                                                    }
                                                                                                                                    §§goto(addr865);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr569);
                                                                                                                           }
                                                                                                                           §§goto(addr586);
                                                                                                                        }
                                                                                                                        §§goto(addr564);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr523:
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                     §§goto(addr524);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!(_loc27_ && b2Collision))
                                                                                                                     {
                                                                                                                        §§goto(addr523);
                                                                                                                     }
                                                                                                                     §§goto(addr527);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr506);
                                                                                                            }
                                                                                                            §§goto(addr527);
                                                                                                         }
                                                                                                         §§goto(addr495);
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr325);
                                                                                          }
                                                                                          §§goto(addr309);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr284);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                }
                                                §§goto(addr284);
                                             }
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr236);
                           }
                           §§goto(addr247);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr153);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr94);
         }
         §§goto(addr97);
      }
      
      public static function §<!d§(param1:Vector.<§^A§>, param2:b2PolygonShape, param3:b2Transform, param4:int, param5:b2PolygonShape, param6:b2Transform) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc12_:b2Mat22 = null;
         var _loc13_:b2Vec2 = null;
         var _loc20_:§^A§ = null;
         var _loc23_:* = NaN;
         §§push(param2.§8k§);
         if(_loc25_ || b2Collision)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:Vector.<b2Vec2> = param2.§+!]§;
         §§push(param5.§8k§);
         if(_loc25_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:Vector.<b2Vec2> = param5.§>!+§;
         var _loc11_:Vector.<b2Vec2> = param5.§+!]§;
         _loc12_ = param3.R;
         _loc13_ = _loc8_[param4];
         §§push(_loc12_.col1.x);
         if(_loc25_)
         {
            §§push(_loc13_.x);
            if(_loc25_ || param3)
            {
               §§push(§§pop() * §§pop());
               if(_loc25_)
               {
                  §§push(_loc12_.col2.x);
                  if(!_loc24_)
                  {
                     addr88:
                     §§push(§§pop() * _loc13_.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc24_ && b2Collision)
                  {
                  }
                  addr100:
                  var _loc14_:* = §§pop();
                  §§push(_loc12_.col1.y);
                  if(!(_loc24_ && param1))
                  {
                     §§push(_loc13_.x);
                     if(!_loc24_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc25_ || b2Collision)
                        {
                           addr123:
                           §§push(_loc12_.col2.y);
                           if(!(_loc24_ && param2))
                           {
                              addr133:
                              §§push(§§pop() * _loc13_.y);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc25_ || param2)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc15_:* = §§pop();
                        §§push((_loc12_ = param6.R).col1.x);
                        if(_loc25_ || param2)
                        {
                           §§push(_loc14_);
                           if(_loc25_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc25_ || param1)
                              {
                                 addr171:
                                 §§push(_loc12_.col1.y);
                                 if(!_loc24_)
                                 {
                                    addr176:
                                    §§push(§§pop() * _loc15_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc24_ && param3))
                                 {
                                    addr186:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc16_:* = §§pop();
                                 if(_loc25_ || param2)
                                 {
                                    §§push(_loc12_.col2.x);
                                    if(!_loc24_)
                                    {
                                       §§push(_loc14_);
                                       if(!(_loc24_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc25_)
                                          {
                                             §§push(_loc12_.col2.y);
                                             if(_loc25_ || param3)
                                             {
                                                addr221:
                                                §§push(§§pop() * _loc15_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc24_)
                                             {
                                                addr226:
                                                §§push(Number(§§pop()));
                                                if(_loc25_ || b2Collision)
                                                {
                                                   addr234:
                                                   _loc15_ = §§pop();
                                                   if(!(_loc24_ && b2Collision))
                                                   {
                                                      addr242:
                                                      §§push(_loc16_);
                                                      if(_loc25_ || param3)
                                                      {
                                                         addr251:
                                                         _loc14_ = Number(§§pop());
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   var _loc17_:* = 0;
                                                   var _loc18_:Number = Number.MAX_VALUE;
                                                   var _loc19_:int = 0;
                                                   while(true)
                                                   {
                                                      §§push(_loc19_);
                                                      if(_loc25_ || b2Collision)
                                                      {
                                                         §§push(_loc9_);
                                                         if(!_loc24_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§push(_loc17_);
                                                               if(_loc25_ || param1)
                                                               {
                                                                  break;
                                                               }
                                                               addr351:
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               _loc13_ = _loc11_[_loc19_];
                                                               if(!_loc24_)
                                                               {
                                                                  §§push(_loc14_);
                                                                  §§push(_loc13_.x);
                                                                  if(!_loc24_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(_loc15_);
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(§§pop() * _loc13_.y);
                                                                        if(!(_loc24_ && b2Collision))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc25_ || param2)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc24_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc24_ && b2Collision))
                                                                                 {
                                                                                    addr307:
                                                                                    _loc23_ = §§pop();
                                                                                    addr309:
                                                                                    if(§§pop() < _loc18_)
                                                                                    {
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr314:
                                                                                       _loc18_ = _loc23_;
                                                                                       addr313:
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          §§push(_loc19_);
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          _loc17_ = §§pop();
                                                                                          if(!(_loc25_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    _loc19_++;
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                         }
                                                         var _loc21_:* = §§pop();
                                                         if(_loc25_)
                                                         {
                                                            §§push(1);
                                                            if(_loc25_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc24_)
                                                               {
                                                                  if(§§pop() < _loc9_)
                                                                  {
                                                                     §§push(_loc21_);
                                                                     if(_loc25_ || param3)
                                                                     {
                                                                        addr374:
                                                                        addr373:
                                                                        §§push(int(§§pop() + 1));
                                                                        if(!_loc25_)
                                                                        {
                                                                        }
                                                                        addr387:
                                                                        var _loc22_:* = §§pop();
                                                                        _loc20_ = param1[0];
                                                                        _loc13_ = _loc10_[_loc21_];
                                                                        _loc12_ = param6.R;
                                                                        if(_loc25_ || param2)
                                                                        {
                                                                           §§push(_loc20_.v);
                                                                           if(!(_loc24_ && param3))
                                                                           {
                                                                              §§push(param6.position);
                                                                              if(_loc25_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    §§push(_loc12_.col1);
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc24_ && param1))
                                                                                       {
                                                                                          §§push(_loc13_.x);
                                                                                          if(_loc25_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                §§push(_loc12_.col2);
                                                                                                if(_loc25_ || b2Collision)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc24_ && param2))
                                                                                                   {
                                                                                                      addr471:
                                                                                                      §§push(_loc13_.y);
                                                                                                      if(!_loc24_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc24_ && b2Collision))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc25_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc24_ && param3))
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!_loc24_)
                                                                                                                  {
                                                                                                                     addr506:
                                                                                                                     §§push(_loc20_.v);
                                                                                                                     §§push(param6.position.y);
                                                                                                                     if(_loc25_)
                                                                                                                     {
                                                                                                                        addr509:
                                                                                                                        §§push(_loc12_.col1.y);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           addr514:
                                                                                                                           §§push(_loc13_.x);
                                                                                                                           if(_loc25_ || param3)
                                                                                                                           {
                                                                                                                              addr545:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc25_ || param1)
                                                                                                                              {
                                                                                                                                 addr531:
                                                                                                                                 §§push(_loc12_.col2.y);
                                                                                                                                 if(_loc25_ || param3)
                                                                                                                                 {
                                                                                                                                    addr541:
                                                                                                                                    §§push(§§pop() * _loc13_.y);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop() + §§pop();
                                                                                                                              if(_loc25_)
                                                                                                                              {
                                                                                                                                 addr549:
                                                                                                                                 §§push(_loc20_.id);
                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§8!Y§);
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(param4);
                                                                                                                                       if(_loc25_ || b2Collision)
                                                                                                                                       {
                                                                                                                                          §§pop().§5!3§ = §§pop();
                                                                                                                                          if(!_loc24_)
                                                                                                                                          {
                                                                                                                                             addr572:
                                                                                                                                             §§push(_loc20_.id);
                                                                                                                                             if(_loc25_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().§8!Y§);
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr592:
                                                                                                                                                      §§pop().§`J§ = §§pop();
                                                                                                                                                      addr605:
                                                                                                                                                      if(!(_loc24_ && b2Collision))
                                                                                                                                                      {
                                                                                                                                                         addr603:
                                                                                                                                                         §§push(_loc20_.id.§8!Y§);
                                                                                                                                                         §§push(0);
                                                                                                                                                      }
                                                                                                                                                      _loc20_ = param1[1];
                                                                                                                                                      _loc13_ = _loc10_[_loc22_];
                                                                                                                                                      _loc12_ = param6.R;
                                                                                                                                                      if(!(_loc24_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_.v);
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param6.position);
                                                                                                                                                            if(!(_loc24_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_.col1);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_.x);
                                                                                                                                                                        if(!(_loc24_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc25_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc12_.col2);
                                                                                                                                                                              if(!(_loc24_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_.y);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr685:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc24_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr708:
                                                                                                                                                                                                   §§push(_loc20_.v);
                                                                                                                                                                                                   §§push(param6.position.y);
                                                                                                                                                                                                   if(_loc25_ || b2Collision)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr718:
                                                                                                                                                                                                      §§push(_loc12_.col1.y);
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr721:
                                                                                                                                                                                                         §§push(_loc13_.x);
                                                                                                                                                                                                         if(_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr725:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr728:
                                                                                                                                                                                                               §§push(_loc12_.col2.y);
                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr736:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * _loc13_.y);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr736);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr738:
                                                                                                                                                                                                            §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr741:
                                                                                                                                                                                                               §§push(_loc20_.id);
                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§8!Y§);
                                                                                                                                                                                                                  if(!(_loc24_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param4);
                                                                                                                                                                                                                     if(_loc25_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().§5!3§ = §§pop();
                                                                                                                                                                                                                        if(_loc25_ || b2Collision)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc20_.id);
                                                                                                                                                                                                                           if(!(_loc24_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr788:
                                                                                                                                                                                                                              §§push(§§pop().§8!Y§);
                                                                                                                                                                                                                              if(_loc25_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr796:
                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr799:
                                                                                                                                                                                                                                    §§pop().§`J§ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr807);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§'!P§ = §§pop();
                                                                                                                                                                                                                                 §§goto(addr807);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr805);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr807:
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr805:
                                                                                                                                                                                                                           §§push(_loc20_.id.§8!Y§);
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr799);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr796);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr788);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr799);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr736);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr728);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr738);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr741);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr738);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr721);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr736);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr685);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr728);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr725);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr728);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr718);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr708);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr799);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§'!P§ = §§pop();
                                                                                                                                                   §§goto(addr605);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                       §§goto(addr592);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr603);
                                                                                                                              }
                                                                                                                              §§goto(addr572);
                                                                                                                           }
                                                                                                                           §§goto(addr545);
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr531);
                                                                                                                     }
                                                                                                                     §§goto(addr545);
                                                                                                                  }
                                                                                                                  §§goto(addr592);
                                                                                                               }
                                                                                                               §§goto(addr509);
                                                                                                            }
                                                                                                            §§goto(addr531);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr545);
                                                                                                }
                                                                                                §§goto(addr531);
                                                                                             }
                                                                                             §§goto(addr514);
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                    §§goto(addr509);
                                                                                 }
                                                                                 §§goto(addr545);
                                                                              }
                                                                           }
                                                                           §§goto(addr506);
                                                                        }
                                                                        §§goto(addr549);
                                                                     }
                                                                     addr386:
                                                                     §§goto(addr387);
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc24_ && param2))
                                                                     {
                                                                        §§goto(addr386);
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr374);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr351);
                                                   §§push(int(§§pop()));
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr251);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr123);
               }
               §§goto(addr100);
               §§push(Number(§§pop()));
            }
            §§goto(addr88);
         }
         §§goto(addr100);
      }
      
      private static function §>!%§() : Vector.<§^A§>
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Vector.<§^A§> = new Vector.<§^A§>(2);
         if(_loc3_)
         {
            _loc1_[0] = new §^A§();
            if(!(_loc2_ && _loc3_))
            {
               addr48:
               _loc1_[1] = new §^A§();
            }
            return _loc1_;
         }
         §§goto(addr48);
      }
      
      public static function §4@§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2PolygonShape, param5:b2Transform) : void
      {
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = false;
         var _loc6_:§^A§ = null;
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
         if(!(_loc47_ && param3))
         {
            param1.§+!X§ = 0;
         }
         var _loc7_:Number = param2.§%+§ + param4.§%+§;
         var _loc8_:* = 0;
         if(_loc46_ || b2Collision)
         {
            §`c§[0] = _loc8_;
         }
         §§push(§,n§(§`c§,param2,param3,param4,param5));
         if(_loc46_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         if(_loc46_ || param2)
         {
            §§push(int(§`c§[0]));
            if(!(_loc47_ && param3))
            {
               _loc8_ = §§pop();
               if(_loc46_)
               {
                  addr115:
                  if(_loc9_ > _loc7_)
                  {
                     if(_loc46_)
                     {
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr122);
               }
               addr120:
               return;
            }
            addr122:
            var _loc10_:int = 0;
            if(!_loc47_)
            {
               §=8§[0] = _loc10_;
            }
            §§push(§,n§(§=8§,param4,param5,param2,param3));
            if(_loc46_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc46_ || param2)
            {
               _loc10_ = §=8§[0];
               if(!(_loc47_ && param2))
               {
                  §§push(_loc11_);
                  if(!_loc47_)
                  {
                     if(§§pop() > _loc7_)
                     {
                        if(_loc46_ || b2Collision)
                        {
                           §§goto(addr171);
                        }
                     }
                     §§push(0.98);
                     if(_loc46_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc18_:* = §§pop();
                  §§push(0.001);
                  if(!(_loc47_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc19_:* = §§pop();
                  if(!_loc47_)
                  {
                     §§push(_loc11_);
                     §§push(_loc18_);
                     if(!_loc47_)
                     {
                        §§push(_loc9_);
                        if(_loc46_ || b2Collision)
                        {
                           addr206:
                           §§push(§§pop() * §§pop());
                           if(_loc46_)
                           {
                              §§push(_loc19_);
                           }
                           if(§§pop() > §§pop())
                           {
                              addr207:
                              _loc12_ = param4;
                              _loc13_ = param2;
                              _loc14_ = param5;
                              _loc15_ = param3;
                              if(!_loc47_)
                              {
                                 §§push(_loc10_);
                                 if(_loc46_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!(_loc47_ && b2Collision))
                                    {
                                       addr232:
                                       _loc16_ = §§pop();
                                       if(_loc46_ || param2)
                                       {
                                          param1.§5!Z§ = b2Manifold.§%!5§;
                                          if(!_loc46_)
                                          {
                                          }
                                          addr287:
                                          var _loc21_:Vector.<§^A§> = §7!B§;
                                          if(!(_loc47_ && param1))
                                          {
                                             §<!d§(_loc21_,_loc12_,_loc14_,_loc16_,_loc13_,_loc15_);
                                          }
                                          addr249:
                                          §§push(_loc12_.§8k§);
                                          if(!(_loc47_ && param2))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          var _loc22_:* = §§pop();
                                          var _loc23_:Vector.<b2Vec2>;
                                          var _loc24_:b2Vec2 = (_loc23_ = _loc12_.§>!+§)[_loc16_];
                                          if(!_loc47_)
                                          {
                                             if(_loc16_ + 1 < _loc22_)
                                             {
                                                addr332:
                                                _loc25_ = _loc23_[int(_loc16_ + 1)];
                                             }
                                             else
                                             {
                                                _loc25_ = _loc23_[0];
                                             }
                                             var _loc26_:b2Vec2;
                                             §§push(_loc26_ = §[!,§);
                                             §§push(_loc25_.x);
                                             if(!(_loc47_ && b2Collision))
                                             {
                                                §§push(_loc24_.x);
                                                if(_loc46_ || param1)
                                                {
                                                   addr370:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(_loc25_.y);
                                                   if(!_loc47_)
                                                   {
                                                      addr374:
                                                      §§push(§§pop() - _loc24_.y);
                                                   }
                                                   §§pop().Set(§§pop(),§§pop());
                                                   if(!(_loc47_ && b2Collision))
                                                   {
                                                      _loc26_.Normalize();
                                                   }
                                                   var _loc27_:b2Vec2;
                                                   (_loc27_ = §>X§).x = _loc26_.y;
                                                   if(_loc46_)
                                                   {
                                                      §§push(_loc27_);
                                                      §§push(_loc26_.x);
                                                      if(_loc46_)
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                   var _loc28_:b2Vec2;
                                                   §§push(_loc28_ = §#G§);
                                                   §§push(0.5);
                                                   if(!_loc47_)
                                                   {
                                                      §§push(_loc24_.x);
                                                      if(!(_loc47_ && param3))
                                                      {
                                                         §§push(_loc25_.x);
                                                         if(_loc46_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc46_ || param3)
                                                            {
                                                               addr432:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(0.5);
                                                               if(!(_loc47_ && b2Collision))
                                                               {
                                                                  addr440:
                                                                  §§push(_loc24_.y);
                                                                  if(_loc46_)
                                                                  {
                                                                     addr447:
                                                                     §§push(§§pop() * (§§pop() + _loc25_.y));
                                                                  }
                                                                  §§goto(addr447);
                                                               }
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            var _loc29_:b2Vec2 = §;!W§;
                                                            _loc20_ = _loc14_.R;
                                                            if(_loc46_ || param1)
                                                            {
                                                               §§push(_loc29_);
                                                               §§push(_loc20_.col1.x);
                                                               if(!_loc47_)
                                                               {
                                                                  §§push(_loc26_.x);
                                                                  if(!(_loc47_ && param1))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc46_ || param1)
                                                                     {
                                                                        addr486:
                                                                        §§push(_loc20_.col2.x);
                                                                        if(_loc46_ || param1)
                                                                        {
                                                                           addr496:
                                                                           §§push(§§pop() * _loc26_.y);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§pop().x = §§pop();
                                                                     if(_loc46_ || b2Collision)
                                                                     {
                                                                        addr508:
                                                                        §§push(_loc29_);
                                                                        §§push(_loc20_.col1.y);
                                                                        if(_loc46_)
                                                                        {
                                                                           §§push(_loc26_.x);
                                                                           if(!(_loc47_ && param3))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc46_)
                                                                              {
                                                                                 addr526:
                                                                                 §§push(_loc20_.col2.y);
                                                                                 if(_loc46_)
                                                                                 {
                                                                                    addr531:
                                                                                    §§push(§§pop() * _loc26_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              addr536:
                                                                              var _loc30_:b2Vec2;
                                                                              §§push(_loc30_ = s_tangent2);
                                                                              §§push(_loc29_.x);
                                                                              if(_loc46_ || param1)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§pop().x = §§pop();
                                                                              if(!_loc47_)
                                                                              {
                                                                                 §§push(_loc30_);
                                                                                 §§push(_loc29_.y);
                                                                                 if(!_loc47_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                              }
                                                                              var _loc31_:b2Vec2;
                                                                              (_loc31_ = §>1§).x = _loc29_.y;
                                                                              if(_loc46_)
                                                                              {
                                                                                 §§push(_loc31_);
                                                                                 §§push(_loc29_.x);
                                                                                 if(_loc46_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                              }
                                                                              var _loc32_:b2Vec2 = s_v11;
                                                                              var _loc33_:b2Vec2 = s_v12;
                                                                              if(_loc46_ || b2Collision)
                                                                              {
                                                                                 §§push(_loc32_);
                                                                                 §§push(_loc14_.position.x);
                                                                                 if(!(_loc47_ && param3))
                                                                                 {
                                                                                    §§push(_loc20_.col1.x);
                                                                                    if(!_loc47_)
                                                                                    {
                                                                                       §§push(_loc24_.x);
                                                                                       if(_loc46_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc47_)
                                                                                          {
                                                                                             addr636:
                                                                                             §§push(_loc20_.col2.x);
                                                                                             if(_loc46_ || param1)
                                                                                             {
                                                                                                addr622:
                                                                                                §§push(§§pop() * _loc24_.y);
                                                                                             }
                                                                                             §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                             if(!_loc47_)
                                                                                             {
                                                                                                §§push(_loc32_);
                                                                                                §§push(_loc14_.position.y);
                                                                                                if(!(_loc47_ && b2Collision))
                                                                                                {
                                                                                                   §§push(_loc20_.col1.y);
                                                                                                   if(!_loc47_)
                                                                                                   {
                                                                                                      §§push(_loc24_.x);
                                                                                                      if(!_loc47_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc46_)
                                                                                                         {
                                                                                                            addr677:
                                                                                                            §§push(_loc20_.col2.y);
                                                                                                            if(_loc46_ || b2Collision)
                                                                                                            {
                                                                                                               addr673:
                                                                                                               §§push(§§pop() * _loc24_.y);
                                                                                                            }
                                                                                                            §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                            if(_loc46_)
                                                                                                            {
                                                                                                               addr681:
                                                                                                               §§push(_loc33_);
                                                                                                               §§push(_loc14_.position.x);
                                                                                                               if(_loc46_ || param2)
                                                                                                               {
                                                                                                                  §§push(_loc20_.col1.x);
                                                                                                                  if(!_loc47_)
                                                                                                                  {
                                                                                                                     §§push(_loc25_.x);
                                                                                                                     if(_loc46_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc47_ && param3))
                                                                                                                        {
                                                                                                                           addr723:
                                                                                                                           §§push(_loc20_.col2.x);
                                                                                                                           if(!_loc47_)
                                                                                                                           {
                                                                                                                              addr719:
                                                                                                                              §§push(§§pop() * _loc25_.y);
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                           if(_loc46_)
                                                                                                                           {
                                                                                                                              addr727:
                                                                                                                              §§push(_loc33_);
                                                                                                                              §§push(_loc14_.position.y);
                                                                                                                              if(!_loc47_)
                                                                                                                              {
                                                                                                                                 §§push(_loc20_.col1.y);
                                                                                                                                 if(!(_loc47_ && b2Collision))
                                                                                                                                 {
                                                                                                                                    §§push(_loc25_.x);
                                                                                                                                    if(_loc46_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc47_)
                                                                                                                                       {
                                                                                                                                          addr764:
                                                                                                                                          addr765:
                                                                                                                                          §§push(_loc20_.col2.y);
                                                                                                                                          if(_loc46_)
                                                                                                                                          {
                                                                                                                                             addr760:
                                                                                                                                             §§push(§§pop() * _loc25_.y);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                                          §§push(_loc31_.x);
                                                                                                                                          if(!_loc47_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc32_.x);
                                                                                                                                             if(_loc46_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc47_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc31_.y);
                                                                                                                                                   if(!_loc47_)
                                                                                                                                                   {
                                                                                                                                                      addr786:
                                                                                                                                                      §§push(§§pop() * _loc32_.y);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc47_ && b2Collision)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr798:
                                                                                                                                                   var _loc34_:* = §§pop();
                                                                                                                                                   §§push(_loc29_.x);
                                                                                                                                                   if(_loc46_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(_loc46_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc32_.x);
                                                                                                                                                         if(_loc46_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc47_)
                                                                                                                                                            {
                                                                                                                                                               addr818:
                                                                                                                                                               §§push(_loc29_.y);
                                                                                                                                                               if(_loc46_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc32_.y);
                                                                                                                                                                  if(!(_loc47_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr837:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!(_loc47_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        addr846:
                                                                                                                                                                        §§push(§§pop() + _loc7_);
                                                                                                                                                                        if(_loc46_)
                                                                                                                                                                        {
                                                                                                                                                                           addr849:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     var _loc35_:* = §§pop();
                                                                                                                                                                     §§push(_loc29_.x);
                                                                                                                                                                     if(!(_loc47_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc33_.x);
                                                                                                                                                                        if(_loc46_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc47_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc29_.y);
                                                                                                                                                                              if(_loc46_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 addr876:
                                                                                                                                                                                 §§push(§§pop() * _loc33_.y);
                                                                                                                                                                                 if(_loc46_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr886);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr895);
                                                                                                                                                                              }
                                                                                                                                                                              addr886:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc47_ && b2Collision))
                                                                                                                                                                              {
                                                                                                                                                                                 addr895:
                                                                                                                                                                                 §§push(§§pop() + _loc7_);
                                                                                                                                                                                 if(!(_loc47_ && b2Collision))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              var _loc36_:* = §§pop();
                                                                                                                                                                              var _loc37_:Vector.<§^A§> = s_clipPoints1;
                                                                                                                                                                              var _loc38_:Vector.<§^A§> = s_clipPoints2;
                                                                                                                                                                              §§push(int(§%!-§(_loc37_,_loc21_,_loc30_,_loc35_)));
                                                                                                                                                                              §§push(int(§%!-§(_loc37_,_loc21_,_loc30_,_loc35_)));
                                                                                                                                                                              if(!(_loc47_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc39_ = §§pop();
                                                                                                                                                                                 if(_loc46_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(2);
                                                                                                                                                                                    if(!(_loc47_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr937);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr968);
                                                                                                                                                                              }
                                                                                                                                                                              addr937:
                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc46_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(int(§%!-§(_loc38_,_loc37_,_loc29_,_loc36_)));
                                                                                                                                                                                 §§push(int(§%!-§(_loc38_,_loc37_,_loc29_,_loc36_)));
                                                                                                                                                                                 if(_loc46_ || b2Collision)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr968:
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              param1.§]!h§.SetV(_loc27_);
                                                                                                                                                                              param1.m_localPoint.SetV(_loc28_);
                                                                                                                                                                              var _loc40_:int = 0;
                                                                                                                                                                              var _loc41_:int = 0;
                                                                                                                                                                              while(_loc41_ < b2Settings.b2_maxManifoldPoints)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc6_ = _loc38_[_loc41_];
                                                                                                                                                                                 if(!(_loc47_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc31_.x);
                                                                                                                                                                                    if(!(_loc47_ && b2Collision))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.v.x);
                                                                                                                                                                                       if(_loc46_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc47_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc31_.y);
                                                                                                                                                                                             if(_loc46_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc6_.v.y);
                                                                                                                                                                                                if(!(_loc47_ && b2Collision))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!_loc47_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1050:
                                                                                                                                                                                                      §§push(_loc34_);
                                                                                                                                                                                                      if(_loc46_ || b2Collision)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1058:
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(_loc46_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(!_loc47_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1064:
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc46_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1072:
                                                                                                                                                                                                                  _loc42_ = §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc46_ || b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1082:
                                                                                                                                                                                                                  _loc43_ = param1.§`?§[_loc40_];
                                                                                                                                                                                                                  _loc20_ = _loc15_.R;
                                                                                                                                                                                                                  if(_loc46_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.v);
                                                                                                                                                                                                                     if(!_loc47_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(!(_loc47_ && b2Collision))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc15_.position);
                                                                                                                                                                                                                           if(!(_loc47_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                              if(!(_loc47_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc46_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1126:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    if(_loc46_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1134:
                                                                                                                                                                                                                                       _loc44_ = §§pop();
                                                                                                                                                                                                                                       if(_loc46_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1139:
                                                                                                                                                                                                                                          §§push(_loc6_.v.y);
                                                                                                                                                                                                                                          if(_loc46_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1145:
                                                                                                                                                                                                                                             §§push(§§pop() - _loc15_.position.y);
                                                                                                                                                                                                                                             if(_loc46_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1149:
                                                                                                                                                                                                                                                _loc45_ = §§pop();
                                                                                                                                                                                                                                                if(!(_loc47_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1157:
                                                                                                                                                                                                                                                   §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                                                   if(!_loc47_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc44_);
                                                                                                                                                                                                                                                      if(_loc46_ || b2Collision)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_.col1.x);
                                                                                                                                                                                                                                                         if(_loc46_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc46_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc45_);
                                                                                                                                                                                                                                                               if(!(_loc47_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1190:
                                                                                                                                                                                                                                                                  §§push(_loc20_.col1.y);
                                                                                                                                                                                                                                                                  if(_loc46_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!(_loc47_ && param3))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1208:
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(_loc46_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           addr1219:
                                                                                                                                                                                                                                                                           §§push(_loc43_.m_localPoint);
                                                                                                                                                                                                                                                                           §§push(_loc44_);
                                                                                                                                                                                                                                                                           if(!_loc47_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1222:
                                                                                                                                                                                                                                                                              §§push(_loc20_.col2.x);
                                                                                                                                                                                                                                                                              if(!(_loc47_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc46_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1235:
                                                                                                                                                                                                                                                                                    §§push(_loc45_);
                                                                                                                                                                                                                                                                                    if(_loc46_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1242:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * _loc20_.col2.y);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1242);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                 §§push(_loc43_.m_id);
                                                                                                                                                                                                                                                                                 if(!_loc47_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().Set(_loc6_.id);
                                                                                                                                                                                                                                                                                    §§push(_loc43_.m_id);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().§8!Y§.§=p§ = _loc17_;
                                                                                                                                                                                                                                                                                 _loc40_++;
                                                                                                                                                                                                                                                                                 addr1267:
                                                                                                                                                                                                                                                                                 _loc41_++;
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1235);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1222);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1242);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1208);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1235);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1190);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1222);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1219);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1149);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1219);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1149);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1134);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1145);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1126);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1139);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1157);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1267);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1064);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1072);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1064);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1058);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1064);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1072);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1050);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1082);
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc47_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 param1.§+!X§ = _loc40_;
                                                                                                                                                                              }
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr895);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr876);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr895);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr846);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr837);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr849);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr837);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr818);
                                                                                                                                                }
                                                                                                                                                §§goto(addr798);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             §§goto(addr786);
                                                                                                                                          }
                                                                                                                                          §§goto(addr798);
                                                                                                                                       }
                                                                                                                                       §§goto(addr764);
                                                                                                                                    }
                                                                                                                                    §§goto(addr760);
                                                                                                                                 }
                                                                                                                                 §§goto(addr764);
                                                                                                                              }
                                                                                                                              §§goto(addr765);
                                                                                                                           }
                                                                                                                           §§goto(addr764);
                                                                                                                        }
                                                                                                                        §§goto(addr723);
                                                                                                                     }
                                                                                                                     §§goto(addr719);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr723);
                                                                                                            }
                                                                                                            §§goto(addr727);
                                                                                                         }
                                                                                                         §§goto(addr677);
                                                                                                      }
                                                                                                      §§goto(addr673);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr677);
                                                                                             }
                                                                                             §§goto(addr764);
                                                                                          }
                                                                                          §§goto(addr636);
                                                                                       }
                                                                                       §§goto(addr622);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr636);
                                                                              }
                                                                              §§goto(addr681);
                                                                           }
                                                                           §§goto(addr531);
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     §§goto(addr536);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               §§goto(addr486);
                                                            }
                                                            §§goto(addr508);
                                                         }
                                                         §§goto(addr447);
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr370);
                                          }
                                          §§goto(addr332);
                                          addr249:
                                       }
                                       §§push(1);
                                    }
                                    _loc17_ = §§pop();
                                    §§goto(addr249);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr249);
                           }
                           else
                           {
                              _loc12_ = param2;
                              _loc13_ = param4;
                              _loc14_ = param3;
                              _loc15_ = param5;
                              if(_loc46_ || b2Collision)
                              {
                                 §§push(_loc8_);
                                 if(_loc46_)
                                 {
                                    §§push(int(§§pop()));
                                    if(!_loc47_)
                                    {
                                       _loc16_ = §§pop();
                                       if(!_loc47_)
                                       {
                                          param1.§5!Z§ = b2Manifold.§ !N§;
                                          if(_loc46_)
                                          {
                                             §§push(0);
                                          }
                                       }
                                       §§goto(addr287);
                                    }
                                 }
                                 _loc17_ = §§pop();
                              }
                           }
                           §§goto(addr287);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr207);
               }
            }
            addr171:
            return;
         }
         §§goto(addr115);
      }
      
      public static function §`>§(param1:b2Manifold, param2:b2CircleShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:b2Mat22 = null;
         var _loc7_:b2Vec2 = null;
         if(!_loc17_)
         {
            param1.§+!X§ = 0;
         }
         _loc6_ = param3.R;
         _loc7_ = param2.§,!#§;
         §§push(param3.position.x);
         if(!_loc17_)
         {
            §§push(_loc6_.col1.x);
            if(!_loc17_)
            {
               §§push(_loc7_.x);
               if(_loc16_ || b2Collision)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param3))
                  {
                     addr62:
                     §§push(_loc6_.col2.x);
                     if(_loc16_ || b2Collision)
                     {
                        addr75:
                        §§push(§§pop() + §§pop() * _loc7_.y);
                     }
                     §§goto(addr75);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(param3.position.y);
                  if(!_loc17_)
                  {
                     §§push(_loc6_.col1.y);
                     if(_loc16_ || b2Collision)
                     {
                        §§push(_loc7_.x);
                        if(_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc17_ && param2))
                           {
                              addr117:
                              §§push(_loc6_.col2.y);
                              if(!_loc17_)
                              {
                                 addr113:
                                 §§push(§§pop() * _loc7_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc17_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              _loc6_ = param5.R;
                              _loc7_ = param4.§,!#§;
                              §§push(param5.position.x);
                              if(_loc16_ || param3)
                              {
                                 §§push(_loc6_.col1.x);
                                 if(!(_loc17_ && param3))
                                 {
                                    §§push(_loc7_.x);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc16_)
                                       {
                                          addr181:
                                          §§push(_loc6_.col2.x);
                                          if(_loc16_ || param1)
                                          {
                                             addr177:
                                             §§push(§§pop() * _loc7_.y);
                                          }
                                          §§push(§§pop() + (§§pop() + §§pop()));
                                          if(_loc16_ || param3)
                                          {
                                             addr189:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(param5.position.y);
                                          if(!(_loc17_ && param3))
                                          {
                                             §§push(_loc6_.col1.y);
                                             if(_loc16_ || param3)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc16_ || param3)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc16_)
                                                   {
                                                      addr232:
                                                      §§push(_loc6_.col2.y);
                                                      if(_loc16_)
                                                      {
                                                         addr228:
                                                         §§push(§§pop() * _loc7_.y);
                                                      }
                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                      if(!(_loc17_ && b2Collision))
                                                      {
                                                         addr241:
                                                         var _loc11_:Number = §§pop();
                                                         §§push(_loc10_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() - _loc8_);
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               addr254:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc12_:* = §§pop();
                                                            §§push(_loc11_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop() - _loc9_);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc13_:* = §§pop();
                                                            §§push(_loc12_);
                                                            if(!(_loc17_ && b2Collision))
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        addr284:
                                                                        §§push(§§pop() + §§pop() * _loc13_);
                                                                        if(_loc16_)
                                                                        {
                                                                           addr287:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  var _loc15_:Number = param2.§%+§ + param4.§%+§;
                                                                  §§push(_loc14_);
                                                                  §§push(_loc15_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(§§pop() * _loc15_);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     return;
                                                                  }
                                                                  param1.§5!Z§ = b2Manifold.§;!P§;
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     param1.m_localPoint.SetV(param2.§,!#§);
                                                                     param1.§]!h§.§22§();
                                                                  }
                                                                  param1.§+!X§ = 1;
                                                                  param1.§`?§[0].m_localPoint.SetV(param4.§,!#§);
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     param1.§`?§[0].m_id.key = 0;
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr241);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr120);
               }
               §§goto(addr75);
            }
            §§goto(addr62);
         }
         §§goto(addr79);
      }
      
      public static function §2!4§(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2CircleShape, param5:b2Transform) : void
      {
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = false;
         var _loc6_:b2ManifoldPoint = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Mat22 = null;
         var _loc17_:Number = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:Number = NaN;
         if(!(_loc35_ && param3))
         {
            param1.§+!X§ = 0;
         }
         _loc12_ = param5.R;
         _loc11_ = param4.§,!#§;
         §§push(param5.position.x);
         if(_loc34_ || param2)
         {
            §§push(_loc12_.col1.x);
            if(_loc34_ || param1)
            {
               §§push(_loc11_.x);
               if(!(_loc35_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc34_)
                  {
                     addr91:
                     §§push(_loc12_.col2.x);
                     if(_loc34_ || param3)
                     {
                        addr101:
                        §§push(§§pop() * _loc11_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc34_)
                  {
                     addr109:
                     var _loc13_:Number = §§pop();
                     §§push(param5.position.y);
                     if(_loc34_)
                     {
                        §§push(_loc12_.col1.y);
                        if(_loc34_)
                        {
                           §§push(_loc11_.x);
                           if(_loc34_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc34_ || param1)
                              {
                                 addr137:
                                 §§push(_loc12_.col2.y);
                                 if(_loc34_)
                                 {
                                    addr145:
                                    §§push(§§pop() + §§pop() * _loc11_.y);
                                 }
                                 §§goto(addr145);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc34_)
                              {
                                 addr150:
                                 var _loc14_:Number = §§pop();
                                 if(!_loc35_)
                                 {
                                    §§push(_loc13_);
                                    if(!(_loc35_ && b2Collision))
                                    {
                                       §§push(param3.position);
                                       if(_loc34_ || param2)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc34_ || param2)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc35_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc34_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc35_ && param2))
                                                   {
                                                      addr192:
                                                      §§push(_loc14_);
                                                      if(_loc34_ || param1)
                                                      {
                                                         addr203:
                                                         §§push(§§pop() - param3.position.y);
                                                         if(_loc34_)
                                                         {
                                                            addr207:
                                                            _loc8_ = Number(§§pop());
                                                         }
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   _loc12_ = param3.R;
                                                   §§push(_loc7_);
                                                   if(!(_loc35_ && param1))
                                                   {
                                                      §§push(_loc12_.col1.x);
                                                      if(!_loc35_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc34_ || b2Collision)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!(_loc35_ && param2))
                                                            {
                                                               addr241:
                                                               §§push(§§pop() * _loc12_.col1.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc35_)
                                                            {
                                                               addr248:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc15_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!(_loc35_ && param1))
                                                            {
                                                               §§push(_loc12_.col2.x);
                                                               if(_loc34_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc35_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(!_loc35_)
                                                                     {
                                                                        addr269:
                                                                        §§push(§§pop() * _loc12_.col2.y);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc35_ && param2))
                                                                     {
                                                                        addr282:
                                                                        var _loc16_:Number = §§pop();
                                                                        var _loc18_:* = 0;
                                                                        §§push(-Number.MAX_VALUE);
                                                                        if(!(_loc35_ && param3))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc19_:* = §§pop();
                                                                        var _loc20_:Number = param2.§%+§ + param4.§%+§;
                                                                        §§push(param2.§8k§);
                                                                        if(_loc34_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        var _loc21_:* = §§pop();
                                                                        var _loc22_:Vector.<b2Vec2> = param2.§>!+§;
                                                                        var _loc23_:Vector.<b2Vec2> = param2.§+!]§;
                                                                        var _loc24_:int = 0;
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc24_);
                                                                           if(_loc34_ || b2Collision)
                                                                           {
                                                                              §§push(_loc21_);
                                                                              if(!(_loc35_ && param3))
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr503:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc11_ = _loc22_[_loc24_];
                                                                                    if(_loc34_ || param3)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       if(!_loc35_)
                                                                                       {
                                                                                          §§push(_loc11_.x);
                                                                                          if(_loc34_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(_loc34_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc34_ || param1)
                                                                                                {
                                                                                                   addr357:
                                                                                                   _loc7_ = §§pop();
                                                                                                   addr370:
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(_loc34_)
                                                                                                      {
                                                                                                         addr365:
                                                                                                         §§push(§§pop() - _loc11_.y);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push((_loc11_ = _loc23_[_loc24_]).x);
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc34_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc35_)
                                                                                                      {
                                                                                                         §§push(_loc11_.y);
                                                                                                         if(!(_loc35_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc8_);
                                                                                                            if(!(_loc35_ && param3))
                                                                                                            {
                                                                                                               §§push(Number(§§pop() + §§pop()));
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc35_ && param3))
                                                                                                                  {
                                                                                                                     addr418:
                                                                                                                     _loc31_ = §§pop();
                                                                                                                     if(!(_loc35_ && param1))
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(_loc34_)
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc35_ && param3))
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(_loc31_);
                                                                                                                              if(!(_loc35_ && param1))
                                                                                                                              {
                                                                                                                                 addr454:
                                                                                                                                 if(§§pop() > _loc19_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc31_);
                                                                                                                                       if(!(_loc35_ && param3))
                                                                                                                                       {
                                                                                                                                          addr471:
                                                                                                                                          _loc19_ = Number(§§pop());
                                                                                                                                          if(_loc35_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§push(_loc24_);
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                          }
                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                          if(!_loc34_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr471);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr471);
                                                                                                                           }
                                                                                                                           _loc24_++;
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr454);
                                                                                                                     }
                                                                                                                     §§goto(addr471);
                                                                                                                  }
                                                                                                                  §§goto(addr454);
                                                                                                               }
                                                                                                               §§goto(addr471);
                                                                                                            }
                                                                                                            §§goto(addr454);
                                                                                                         }
                                                                                                         §§goto(addr418);
                                                                                                      }
                                                                                                      §§goto(addr471);
                                                                                                   }
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                             }
                                                                                             _loc8_ = §§pop();
                                                                                             §§goto(addr370);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                              }
                                                                              var _loc25_:* = §§pop();
                                                                              if(_loc34_ || param3)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!(_loc35_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc35_)
                                                                                    {
                                                                                       if(§§pop() < _loc21_)
                                                                                       {
                                                                                          §§push(_loc25_);
                                                                                          if(!_loc35_)
                                                                                          {
                                                                                             addr531:
                                                                                             addr530:
                                                                                             §§push(int(§§pop() + 1));
                                                                                             if(_loc35_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr544);
                                                                                          }
                                                                                          addr543:
                                                                                          addr544:
                                                                                          var _loc26_:* = §§pop();
                                                                                          var _loc27_:b2Vec2 = _loc22_[_loc25_];
                                                                                          var _loc28_:b2Vec2 = _loc22_[_loc26_];
                                                                                          if(!(_loc35_ && param3))
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             if(_loc34_ || param1)
                                                                                             {
                                                                                                if(§§pop() < Number.MIN_VALUE)
                                                                                                {
                                                                                                   param1.§+!X§ = 1;
                                                                                                   param1.§5!Z§ = b2Manifold.§ !N§;
                                                                                                   param1.§]!h§.SetV(_loc23_[_loc18_]);
                                                                                                   §§push(param1.m_localPoint);
                                                                                                   if(_loc34_)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(!(_loc35_ && param2))
                                                                                                      {
                                                                                                         §§push(_loc27_.x);
                                                                                                         if(!_loc35_)
                                                                                                         {
                                                                                                            §§push(_loc28_.x);
                                                                                                            if(!_loc35_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc35_)
                                                                                                               {
                                                                                                                  addr609:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc35_)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr615:
                                                                                                                     §§push(param1.m_localPoint);
                                                                                                                     §§push(0.5);
                                                                                                                     if(_loc35_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr631:
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(!_loc35_)
                                                                                                                     {
                                                                                                                        param1.§`?§[0].m_localPoint.SetV(param4.§,!#§);
                                                                                                                     }
                                                                                                                     param1.§`?§[0].m_id.key = 0;
                                                                                                                     if(!(_loc35_ && param3))
                                                                                                                     {
                                                                                                                        §§goto(addr666);
                                                                                                                     }
                                                                                                                     addr667:
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(!(_loc35_ && param2))
                                                                                                                     {
                                                                                                                        addr675:
                                                                                                                        §§push(_loc27_.x);
                                                                                                                        if(!(_loc35_ && b2Collision))
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc35_ && param2))
                                                                                                                           {
                                                                                                                              addr692:
                                                                                                                              §§push(_loc28_.x);
                                                                                                                              if(_loc34_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc27_.x);
                                                                                                                                 if(_loc34_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc34_)
                                                                                                                                    {
                                                                                                                                       addr713:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc35_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          if(_loc34_)
                                                                                                                                          {
                                                                                                                                             addr719:
                                                                                                                                             §§push(_loc27_.y);
                                                                                                                                             if(!_loc35_)
                                                                                                                                             {
                                                                                                                                                addr723:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc35_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr744:
                                                                                                                                                   §§push(_loc28_.y);
                                                                                                                                                   if(_loc34_ || b2Collision)
                                                                                                                                                   {
                                                                                                                                                      addr740:
                                                                                                                                                      §§push(§§pop() - _loc27_.y);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   if(!(_loc35_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr753:
                                                                                                                                                      var _loc29_:Number = §§pop();
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc34_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc28_.x);
                                                                                                                                                         if(!(_loc35_ && b2Collision))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc34_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc27_.x);
                                                                                                                                                               if(!_loc35_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc28_.x);
                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc34_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        addr785:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc34_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                           if(!(_loc35_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc28_.y);
                                                                                                                                                                              if(_loc34_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!_loc35_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr813:
                                                                                                                                                                                    §§push(_loc27_.y);
                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr822:
                                                                                                                                                                                       §§push(§§pop() - _loc28_.y);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr822);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr813);
                                                                                                                                                                        }
                                                                                                                                                                        addr830:
                                                                                                                                                                        var _loc30_:* = §§pop();
                                                                                                                                                                        if(_loc34_ || b2Collision)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc29_);
                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(!(_loc35_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc27_.x);
                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(_loc34_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                             if(!_loc35_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc27_.x);
                                                                                                                                                                                                if(_loc34_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                   if(_loc34_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr886:
                                                                                                                                                                                                      §§push(_loc16_ - _loc27_.y);
                                                                                                                                                                                                      if(!_loc35_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr892:
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                                                                         if(!(_loc35_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                            if(_loc34_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                               if(!_loc35_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                                                                  if(_loc34_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() > §§pop() * §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc35_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1281:
                                                                                                                                                                                                                        param1.§]!h§.y = _loc23_[_loc25_].y;
                                                                                                                                                                                                                        addr1279:
                                                                                                                                                                                                                        if(_loc34_ || param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1305:
                                                                                                                                                                                                                           param1.§]!h§.Normalize();
                                                                                                                                                                                                                           §§goto(addr1303);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1323);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        param1.§+!X§ = 1;
                                                                                                                                                                                                                        if(_loc34_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           param1.§5!Z§ = b2Manifold.§ !N§;
                                                                                                                                                                                                                           if(_loc34_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§]!h§);
                                                                                                                                                                                                                              if(_loc34_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 if(_loc34_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc27_.x);
                                                                                                                                                                                                                                    if(!(_loc35_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().x = §§pop() - §§pop();
                                                                                                                                                                                                                                       §§push(param1.§]!h§);
                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                       §§push(_loc27_.y);
                                                                                                                                                                                                                                       if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr969:
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(!_loc35_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr972:
                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                             if(_loc34_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                param1.§]!h§.Normalize();
                                                                                                                                                                                                                                                §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().SetV(_loc27_);
                                                                                                                                                                                                                                                   param1.§`?§[0].m_localPoint.SetV(param4.§,!#§);
                                                                                                                                                                                                                                                   if(!_loc35_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param1.§`?§[0].m_id.key = 0;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1182:
                                                                                                                                                                                                                                                      §§push(0.5);
                                                                                                                                                                                                                                                      if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1190:
                                                                                                                                                                                                                                                         §§push(_loc27_.y);
                                                                                                                                                                                                                                                         if(!_loc35_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1196:
                                                                                                                                                                                                                                                            §§push(§§pop() + _loc28_.y);
                                                                                                                                                                                                                                                            if(!_loc35_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1199:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc34_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1208:
                                                                                                                                                                                                                                                                  _loc33_ = §§pop();
                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                  if(!_loc35_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1212:
                                                                                                                                                                                                                                                                     §§push(_loc32_);
                                                                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(_loc34_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1223:
                                                                                                                                                                                                                                                                           §§push(§§pop() * _loc23_[_loc25_].x);
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1233:
                                                                                                                                                                                                                                                                              §§push((_loc16_ - _loc33_) * _loc23_[_loc25_].y);
                                                                                                                                                                                                                                                                              if(!(_loc35_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1245:
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 if(_loc35_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1249);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1258:
                                                                                                                                                                                                                                                                           addr1249:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc35_ && param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           param1.§+!X§ = 1;
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              param1.§5!Z§ = b2Manifold.§ !N§;
                                                                                                                                                                                                                                                                              if(!_loc35_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1274:
                                                                                                                                                                                                                                                                                 param1.§]!h§.x = _loc23_[_loc25_].x;
                                                                                                                                                                                                                                                                                 §§goto(addr1279);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1308);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1303:
                                                                                                                                                                                                                                                                           if(!_loc35_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1310:
                                                                                                                                                                                                                                                                              param1.m_localPoint.Set(_loc32_,_loc33_);
                                                                                                                                                                                                                                                                              addr1308:
                                                                                                                                                                                                                                                                              if(_loc34_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1315:
                                                                                                                                                                                                                                                                                 param1.§`?§[0].m_localPoint.SetV(param4.§,!#§);
                                                                                                                                                                                                                                                                                 addr1323:
                                                                                                                                                                                                                                                                                 param1.§`?§[0].m_id.key = 0;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1323);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1249);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1258);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1249);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1233);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1135:
                                                                                                                                                                                                                                                   §§pop().SetV(_loc28_);
                                                                                                                                                                                                                                                   if(_loc34_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param1.§`?§[0].m_localPoint.SetV(param4.§,!#§);
                                                                                                                                                                                                                                                      addr1147:
                                                                                                                                                                                                                                                      param1.§`?§[0].m_id.key = 0;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1279);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1303);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1069:
                                                                                                                                                                                                                                                param1.§5!Z§ = b2Manifold.§ !N§;
                                                                                                                                                                                                                                                §§push(param1.§]!h§);
                                                                                                                                                                                                                                                if(_loc34_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1077:
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   §§push(_loc28_.x);
                                                                                                                                                                                                                                                   if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      if(_loc34_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1090:
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         §§push(param1.§]!h§);
                                                                                                                                                                                                                                                         if(_loc34_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                            if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1106:
                                                                                                                                                                                                                                                               §§pop().y = §§pop() - _loc28_.y;
                                                                                                                                                                                                                                                               if(_loc34_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1.§]!h§);
                                                                                                                                                                                                                                                                  if(_loc34_ || param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().Normalize();
                                                                                                                                                                                                                                                                     if(_loc34_ || b2Collision)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(param1.m_localPoint);
                                                                                                                                                                                                                                                                        if(!(_loc35_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1135);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1310);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1274);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1279);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1147);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1106);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1281);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1106);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1305);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1090);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1106);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr969);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr972);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1077);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1090);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1069);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1045:
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     §§push(_loc16_ - _loc28_.y);
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1055:
                                                                                                                                                                                                                        if(§§pop() + §§pop() * §§pop() > _loc20_ * _loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        param1.§+!X§ = 1;
                                                                                                                                                                                                                        §§goto(addr1069);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1165:
                                                                                                                                                                                                                        §§push(§§pop() * (§§pop() + §§pop()));
                                                                                                                                                                                                                        if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           if(!(_loc35_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc32_ = §§pop();
                                                                                                                                                                                                                              §§goto(addr1182);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1258);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1190);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1190);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1027:
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  if(!(_loc35_ && b2Collision))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * (§§pop() - _loc28_.x));
                                                                                                                                                                                                                     if(!_loc35_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1045);
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        §§push(_loc28_.y);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1208);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1055);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1199);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1045);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1165);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1223);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1165);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1249);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1212);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr892);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1233);
                                                                                                                                                                                 }
                                                                                                                                                                                 else if(_loc30_ <= 0)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc35_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                       if(!(_loc35_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1027);
                                                                                                                                                                                          §§push(_loc28_.x);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1208);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1274);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    §§push(_loc27_.x);
                                                                                                                                                                                    if(!_loc35_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc28_.x);
                                                                                                                                                                                       if(_loc34_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1165);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1196);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1245);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1165);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr886);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1315);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc34_)
                                                                                                                                                                     {
                                                                                                                                                                        addr829:
                                                                                                                                                                        §§goto(addr830);
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr830);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr822);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr785);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr829);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr813);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr785);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr753);
                                                                                                                                                }
                                                                                                                                                §§goto(addr744);
                                                                                                                                             }
                                                                                                                                             §§goto(addr740);
                                                                                                                                          }
                                                                                                                                          §§goto(addr744);
                                                                                                                                       }
                                                                                                                                       §§goto(addr753);
                                                                                                                                    }
                                                                                                                                    §§goto(addr744);
                                                                                                                                 }
                                                                                                                                 §§goto(addr723);
                                                                                                                              }
                                                                                                                              §§goto(addr713);
                                                                                                                           }
                                                                                                                           §§goto(addr753);
                                                                                                                        }
                                                                                                                        §§goto(addr719);
                                                                                                                     }
                                                                                                                     §§goto(addr692);
                                                                                                                  }
                                                                                                                  §§push(_loc27_.y);
                                                                                                                  if(_loc34_ || param3)
                                                                                                                  {
                                                                                                                     addr627:
                                                                                                                     §§push(§§pop() + _loc28_.y);
                                                                                                                  }
                                                                                                                  §§goto(addr631);
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr627);
                                                                                                         }
                                                                                                         §§goto(addr609);
                                                                                                      }
                                                                                                      §§goto(addr631);
                                                                                                   }
                                                                                                   §§goto(addr615);
                                                                                                }
                                                                                                §§goto(addr667);
                                                                                             }
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          addr666:
                                                                                          return;
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!(_loc35_ && param2))
                                                                                          {
                                                                                             §§goto(addr543);
                                                                                          }
                                                                                          §§goto(addr544);
                                                                                       }
                                                                                       §§goto(addr544);
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 §§goto(addr530);
                                                                              }
                                                                              §§goto(addr531);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr503);
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr248);
                                                }
                                             }
                                             §§goto(addr207);
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr109);
               }
               §§goto(addr101);
            }
            §§goto(addr91);
         }
         §§goto(addr109);
      }
      
      public static function §,!r§(param1:b2AABB, param2:b2AABB) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Vec2 = param2.§ !d§;
         var _loc4_:b2Vec2 = param1.§=!j§;
         §§push(_loc3_.x);
         if(!_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc10_ && param1))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc9_ || param1)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc9_ || _loc3_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc3_ = param1.§ !d§;
               _loc4_ = param2.§=!j§;
               §§push(_loc3_.x);
               if(!(_loc10_ && param2))
               {
                  §§push(§§pop() - _loc4_.x);
                  if(!_loc10_)
                  {
                     addr83:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc3_.y);
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop() - _loc4_.y);
                     if(!(_loc10_ && param2))
                     {
                        addr114:
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     if(_loc9_ || param2)
                     {
                        §§push(_loc5_);
                        if(!_loc10_)
                        {
                           §§push(0);
                           if(_loc9_ || param1)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(_loc6_);
                                          if(_loc9_)
                                          {
                                             §§push(0);
                                             if(!_loc10_)
                                             {
                                                addr160:
                                                §§push(§§pop() > §§pop());
                                                if(_loc9_)
                                                {
                                                   addr163:
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§push(false);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      else
                                                      {
                                                         addr182:
                                                         §§push(_loc7_);
                                                         if(_loc9_)
                                                         {
                                                            addr185:
                                                            §§push(0);
                                                            if(_loc9_ || b2Collision)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  addr211:
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr182);
                                                }
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr163);
                                 }
                                 addr212:
                                 if(!§§pop())
                                 {
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       addr220:
                                       §§pop();
                                       addr222:
                                       §§push(_loc8_ > 0);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    addr225:
                                    §§push(false);
                                    if(!(_loc10_ && param2))
                                    {
                                       addr233:
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§push(true);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr114);
               }
               §§goto(addr83);
            }
            §§goto(addr59);
         }
         §§goto(addr38);
      }
   }
}
