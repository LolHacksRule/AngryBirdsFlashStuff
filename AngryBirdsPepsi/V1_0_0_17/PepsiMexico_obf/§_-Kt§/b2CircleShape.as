package §_-Kt§
{
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2AABB;
   import §_-qg§.b2RayCastInput;
   import §_-qg§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §_-Ga§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Ga§ = new b2Vec2();
            if(!(_loc3_ && param1))
            {
               super();
               if(!_loc3_)
               {
                  §_-Sj§ = b2internal::_-n7;
                  if(!(_loc3_ && param1))
                  {
                     addr54:
                     §_-Q2§ = param1;
                  }
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!(_loc2_ && this))
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         if(_loc3_)
         {
            super.Set(param1);
            if(!_loc4_)
            {
               if(param1 is b2CircleShape)
               {
                  addr34:
                  _loc2_ = param1 as b2CircleShape;
                  if(_loc3_ || param1)
                  {
                     this.§_-Ga§.SetV(_loc2_.§_-Ga§);
                  }
               }
               return;
            }
         }
         §§goto(addr34);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc7_ || this)
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§_-Ga§.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr56:
                     §§push(_loc3_.col2.x);
                     if(!(_loc6_ && this))
                     {
                        addr51:
                        §§push(§§pop() * this.§_-Ga§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!_loc6_)
                     {
                        addr59:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param1.position.y);
                     if(_loc7_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(this.§_-Ga§.x);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc7_ || _loc3_)
                              {
                                 addr111:
                                 §§push(_loc3_.col2.y);
                                 if(_loc7_)
                                 {
                                    addr106:
                                    §§push(§§pop() * this.§_-Ga§.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr119:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(param2.x);
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc6_ && param1))
                                       {
                                          _loc4_ = Number(§§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(param2.y);
                                             if(!_loc6_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      addr151:
                                                      _loc5_ = Number(§§pop());
                                                      addr153:
                                                      §§push(_loc4_);
                                                      §§push(_loc4_);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr167:
                                                               §§push(§§pop() * _loc5_);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                               }
                                                               §§goto(addr187);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         addr187:
                                                         return §§pop() <= §§pop();
                                                         §§push(b2internal::_-Q2 * b2internal::_-Q2);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr56);
               }
               §§goto(addr51);
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc16_)
         {
            §§push(_loc4_.col1.x);
            if(_loc16_ || this)
            {
               §§push(this.§_-Ga§.x);
               if(_loc16_ || param2)
               {
                  addr62:
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param2))
                  {
                     §§push(_loc4_.col2.x);
                     if(!_loc17_)
                     {
                        §§push(§§pop() * this.§_-Ga§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_ || param3)
                  {
                     addr71:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc16_ || this)
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc16_ || param2)
                        {
                           §§push(this.§_-Ga§.x);
                           if(!(_loc17_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc16_ || param1)
                              {
                                 addr120:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc17_)
                                 {
                                    addr115:
                                    §§push(§§pop() * this.§_-Ga§.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc16_ || param2)
                                 {
                                    addr129:
                                    var _loc6_:Number = §§pop();
                                    §§push(param2.p1.x);
                                    if(_loc16_ || param2)
                                    {
                                       §§push(§§pop() - _loc5_);
                                       if(!_loc17_)
                                       {
                                          addr144:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!(_loc17_ && param3))
                                       {
                                          §§push(param2.p1.y);
                                          if(_loc16_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc16_)
                                             {
                                                addr162:
                                                _loc8_ = §§pop() - §§pop();
                                                §§push(_loc7_);
                                                if(_loc16_ || this)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc17_)
                                                   {
                                                      addr175:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc17_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc17_ && param3))
                                                         {
                                                            §§push(§§pop() * _loc8_);
                                                            if(!_loc17_)
                                                            {
                                                               addr191:
                                                               §§push(§§pop() + §§pop());
                                                               §§push(b2internal::_-Q2 * b2internal::_-Q2);
                                                            }
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc16_)
                                                         {
                                                            addr197:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         §§push(param2.p2.x);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() - param2.p1.x);
                                                            if(!(_loc17_ && param2))
                                                            {
                                                               addr215:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param2.p2.y);
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(§§pop() - param2.p1.y);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(_loc10_);
                                                               if(!(_loc17_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc17_ && this))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr259:
                                                                        §§push(§§pop() + §§pop() * _loc11_);
                                                                        if(_loc16_)
                                                                        {
                                                                           addr262:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  §§push(_loc10_);
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(!(_loc17_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr290:
                                                                           §§push(_loc11_);
                                                                           if(!(_loc17_ && param1))
                                                                           {
                                                                              addr298:
                                                                              §§push(§§pop() * _loc11_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc17_ && this))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc13_:* = §§pop();
                                                                        §§push(_loc12_);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc17_ && param3))
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr327:
                                                                                    §§push(§§pop() * _loc9_);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       addr331:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          addr335:
                                                                                          §§push(Number(§§pop()));
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() < 0);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   if(_loc16_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() < Number.MIN_VALUE);
                                                                                                      if(_loc16_ || this)
                                                                                                      {
                                                                                                         addr373:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr378:
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                  if(!(_loc17_ && param2))
                                                                                                                  {
                                                                                                                     addr394:
                                                                                                                     var _loc15_:Number = §§pop();
                                                                                                                     §§push(0);
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        if(!(_loc17_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           if(!(_loc17_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(!(_loc17_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(param2.§_-fa§);
                                                                                                                                       if(!(_loc17_ && param3))
                                                                                                                                       {
                                                                                                                                          addr436:
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             addr440:
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             if(_loc16_ || param3)
                                                                                                                                             {
                                                                                                                                                addr448:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc16_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         addr460:
                                                                                                                                                         §§push(§§pop() / _loc13_);
                                                                                                                                                         if(!(_loc17_ && param2))
                                                                                                                                                         {
                                                                                                                                                            addr469:
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            param1.fraction = _loc15_;
                                                                                                                                                            §§push(param1.normal);
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  if(_loc16_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              addr502:
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              §§push(param1.normal);
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr515:
                                                                                                                                                                                       §§push(§§pop() + §§pop() * _loc11_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr515);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr519:
                                                                                                                                                                              §§pop().Normalize();
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr522:
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(_loc16_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr539);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr538:
                                                                                                                                                                                 addr539:
                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                 §§push(false);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr539);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           §§goto(addr519);
                                                                                                                                                                           §§push(param1.normal);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr502);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr469);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr522);
                                                                                                                                                }
                                                                                                                                                §§goto(addr538);
                                                                                                                                             }
                                                                                                                                             §§goto(addr539);
                                                                                                                                          }
                                                                                                                                          §§goto(addr460);
                                                                                                                                       }
                                                                                                                                       §§goto(addr440);
                                                                                                                                    }
                                                                                                                                    §§goto(addr469);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr448);
                                                                                                                           }
                                                                                                                           §§goto(addr539);
                                                                                                                        }
                                                                                                                        §§goto(addr436);
                                                                                                                     }
                                                                                                                     §§goto(addr460);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr394);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr378);
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    §§goto(addr394);
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr71);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr62);
         }
         §§goto(addr71);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc7_ && param2))
            {
               §§push(this.§_-Ga§.x);
               if(_loc6_)
               {
                  addr60:
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && this))
                  {
                     §§push(_loc3_.col2.x);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * this.§_-Ga§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_ || this)
                  {
                     addr68:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(_loc6_ || param1)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc6_)
                     {
                        §§push(this.§_-Ga§.x);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              addr105:
                              §§push(_loc3_.col2.y);
                              if(_loc6_)
                              {
                                 addr110:
                                 §§push(§§pop() * this.§_-Ga§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr119:
                              var _loc5_:Number = §§pop();
                              if(_loc6_ || this)
                              {
                                 §§push(param1.§_-N-§);
                                 §§push(_loc4_);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop() - b2internal::_-Q2);
                                 }
                                 §§push(_loc5_);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() - b2internal::_-Q2);
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 if(_loc6_)
                                 {
                                    addr159:
                                    param1.§_-TE§.Set(_loc4_ + b2internal::_-Q2,_loc5_ + b2internal::_-Q2);
                                 }
                                 return;
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr119);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr60);
         }
         §§goto(addr68);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!_loc4_)
               {
                  addr24:
                  §§push(§§pop() * b2internal::_-Q2);
                  if(_loc3_)
                  {
                     §§push(§§pop() * b2internal::_-Q2);
                  }
               }
               §§pop().§_-zT§ = §§pop();
               if(!(_loc4_ && param1))
               {
                  param1.center.SetV(this.§_-Ga§);
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr128);
               }
               §§push(param1);
               §§push(param1.§_-zT§);
               if(_loc3_ || param1)
               {
                  §§push(0.5);
                  if(!_loc4_)
                  {
                     §§push(§§pop() * b2internal::_-Q2);
                     if(_loc3_)
                     {
                        §§push(§§pop() * b2internal::_-Q2);
                        if(_loc3_ || this)
                        {
                           §§push(this.§_-Ga§.x);
                           if(_loc3_)
                           {
                              §§push(this.§_-Ga§);
                              if(_loc3_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc3_ || param2)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || this)
                                    {
                                       addr105:
                                       §§push(this.§_-Ga§.y);
                                       if(!(_loc4_ && this))
                                       {
                                          addr124:
                                          §§push(§§pop() + §§pop() * this.§_-Ga§.y);
                                       }
                                       §§goto(addr124);
                                    }
                                    addr127:
                                    §§pop().§_-Lx§ = §§pop() * (§§pop() + §§pop());
                                    §§goto(addr126);
                                 }
                                 §§goto(addr124);
                              }
                           }
                           §§goto(addr105);
                        }
                     }
                  }
                  addr126:
                  §§goto(addr128);
               }
               §§goto(addr127);
            }
            §§goto(addr24);
         }
         addr128:
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§_-Y9§(param3,this.§_-Ga§);
         §§push(b2Math.§_-Ly§(param1,_loc5_));
         if(!(_loc12_ && param1))
         {
            §§push(param2);
            if(_loc11_ || param2)
            {
               §§push(§§pop() - §§pop());
               if(!_loc12_)
               {
                  addr44:
                  §§push(-§§pop());
                  if(_loc11_ || param2)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!(_loc12_ && param2))
            {
               if(§§pop() < -b2internal::_-Q2 + Number.MIN_VALUE)
               {
                  if(!_loc12_)
                  {
                     return 0;
                  }
                  addr91:
                  §§push(Math.PI * b2internal::_-Q2);
                  if(!_loc12_)
                  {
                     addr97:
                     §§push(§§pop() * b2internal::_-Q2);
                     if(!(_loc12_ && param1))
                     {
                        return §§pop();
                     }
                  }
                  addr112:
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(_loc6_);
                  if(!(_loc12_ && this))
                  {
                     if(§§pop() > b2internal::_-Q2)
                     {
                        if(_loc11_)
                        {
                           param4.SetV(_loc5_);
                           if(_loc12_)
                           {
                              addr107:
                              §§push(b2internal::_-Q2 * b2internal::_-Q2);
                              if(_loc11_)
                              {
                                 §§goto(addr112);
                              }
                              addr113:
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc12_ && param3))
                              {
                                 §§push(§§pop() * _loc6_);
                                 if(_loc11_ || param2)
                                 {
                                    addr138:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 if(!(_loc12_ && param1))
                                 {
                                    §§push(_loc7_ * (Math.asin(_loc6_ / b2internal::_-Q2) + Math.PI / 2));
                                    if(!_loc12_)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc12_)
                                             {
                                                _loc9_ = §§pop();
                                                addr185:
                                                §§push(-2 / 3 * Math.pow(_loc7_ - _loc8_,1.5));
                                                if(_loc11_)
                                                {
                                                   addr195:
                                                   §§push(§§pop() / _loc9_);
                                                }
                                                var _loc10_:Number = §§pop();
                                                if(_loc11_ || this)
                                                {
                                                   §§push(param4);
                                                   §§push(_loc5_.x);
                                                   if(_loc11_)
                                                   {
                                                      §§push(param1.x);
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop() * _loc10_);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().x = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      addr220:
                                                      §§push(param4);
                                                      §§push(_loc5_.y);
                                                      if(_loc11_)
                                                      {
                                                         §§push(param1.y);
                                                         if(!(_loc12_ && this))
                                                         {
                                                            §§push(§§pop() * _loc10_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                   return _loc9_;
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr185);
                                          }
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr97);
         }
         §§goto(addr44);
      }
      
      public function §_-Es§() : b2Vec2
      {
         return this.§_-Ga§;
      }
      
      public function §_-ye§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-Ga§.SetV(param1);
         }
      }
      
      public function §_-f9§() : Number
      {
         return b2internal::_-Q2;
      }
      
      public function §_-fZ§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §_-Q2§ = param1;
         }
      }
   }
}
