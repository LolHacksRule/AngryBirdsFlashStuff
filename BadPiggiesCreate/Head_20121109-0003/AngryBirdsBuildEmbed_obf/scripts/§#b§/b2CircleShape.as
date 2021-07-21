package §#b§
{
   import §'!;§.b2AABB;
   import §'!;§.b2RayCastInput;
   import §'!;§.b2RayCastOutput;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §,!#§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,!#§ = new b2Vec2();
            if(_loc2_ || _loc2_)
            {
               §§goto(addr54);
            }
            §§goto(addr73);
         }
         addr54:
         super();
         if(_loc2_ || this)
         {
            §5!Z§ = b2internal::@!>;
            if(!(_loc3_ && _loc2_))
            {
               addr73:
               §%+§ = param1;
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!(_loc2_ && _loc2_))
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
               §§goto(addr36);
            }
            §§goto(addr40);
         }
         addr36:
         if(param1 is b2CircleShape)
         {
            addr40:
            _loc2_ = param1 as b2CircleShape;
            if(_loc3_)
            {
               this.§,!#§.SetV(_loc2_.§,!#§);
            }
         }
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
            if(_loc7_ || _loc3_)
            {
               §§push(this.§,!#§.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr49:
                     §§push(_loc3_.col2.x);
                     if(!(_loc6_ && param2))
                     {
                        addr63:
                        §§push(§§pop() + §§pop() * this.§,!#§.y);
                     }
                     §§goto(addr63);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_ || param2)
                  {
                     addr72:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(!(_loc6_ && param1))
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.§,!#§.x);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc6_)
                           {
                              addr132:
                              §§push(_loc3_.col2.y);
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr127:
                                 §§push(§§pop() * this.§,!#§.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!(_loc6_ && this))
                              {
                                 addr140:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(param2.x);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc6_ && param2))
                                    {
                                       _loc4_ = Number(§§pop() - §§pop());
                                       if(_loc7_ || param2)
                                       {
                                          addr176:
                                          §§push(param2.y);
                                          if(_loc7_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_)
                                                {
                                                   addr196:
                                                   §§push(Number(§§pop()));
                                                   if(_loc7_ || param2)
                                                   {
                                                      addr204:
                                                      _loc5_ = §§pop();
                                                      §§push(_loc4_);
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                }
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    addr209:
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() * _loc5_);
                                       if(_loc7_)
                                       {
                                          addr217:
                                          §§push(§§pop() + §§pop());
                                          §§push(b2internal::%+ * b2internal::%+);
                                       }
                                    }
                                    return §§pop() <= §§pop();
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr140);
               }
               §§goto(addr63);
            }
            §§goto(addr49);
         }
         §§goto(addr72);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc17_)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc16_ && param2))
            {
               §§push(this.§,!#§.x);
               if(_loc17_)
               {
                  addr56:
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc17_)
                     {
                        §§push(§§pop() * this.§,!#§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr59:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(!(_loc16_ && param3))
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc17_)
                     {
                        §§push(this.§,!#§.x);
                        if(!(_loc16_ && param1))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc16_)
                           {
                              addr89:
                              §§push(_loc4_.col2.y);
                              if(!(_loc16_ && param2))
                              {
                                 addr99:
                                 §§push(§§pop() * this.§,!#§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc16_)
                           {
                              addr107:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param2.p1.x);
                           if(!_loc16_)
                           {
                              §§push(§§pop() - _loc5_);
                              if(!(_loc16_ && param2))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           if(!_loc16_)
                           {
                              §§push(param2.p1.y);
                              if(_loc17_)
                              {
                                 §§push(_loc6_);
                                 if(_loc17_ || param1)
                                 {
                                    addr142:
                                    _loc8_ = §§pop() - §§pop();
                                    §§push(_loc7_);
                                    if(_loc17_ || this)
                                    {
                                       §§push(_loc7_);
                                       if(!(_loc16_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          §§push(_loc8_);
                                          if(!_loc16_)
                                          {
                                             addr163:
                                             §§push(§§pop() * _loc8_);
                                             if(_loc16_ && param1)
                                             {
                                             }
                                             addr176:
                                             var _loc9_:Number = §§pop() - §§pop();
                                             §§push(param2.p2.x);
                                             if(_loc17_ || param2)
                                             {
                                                §§push(§§pop() - param2.p1.x);
                                                if(!(_loc16_ && param2))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(param2.p2.y);
                                             if(!_loc16_)
                                             {
                                                §§push(§§pop() - param2.p1.y);
                                                if(!_loc16_)
                                                {
                                                   addr213:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc7_);
                                                if(!_loc16_)
                                                {
                                                   §§push(_loc10_);
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc16_ && param1))
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc16_)
                                                         {
                                                            addr237:
                                                            §§push(§§pop() * _loc11_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_ && param2)
                                                         {
                                                         }
                                                         addr248:
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc10_);
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            §§push(_loc10_);
                                                            if(!(_loc16_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(_loc11_);
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     addr288:
                                                                     §§push(§§pop() + §§pop() * _loc11_);
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        addr296:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               var _loc13_:* = §§pop();
                                                               §§push(_loc12_);
                                                               if(_loc17_ || param3)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        addr312:
                                                                        §§push(_loc13_);
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           §§push(§§pop() * _loc9_);
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr324:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 addr332:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                           var _loc14_:* = §§pop();
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(§§pop() < 0);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(_loc17_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() < Number.MIN_VALUE);
                                                                                             if(!(_loc16_ && param1))
                                                                                             {
                                                                                                addr366:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr371:
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             §§goto(addr370);
                                                                                          }
                                                                                          §§goto(addr381);
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              addr370:
                                                                              return false;
                                                                           }
                                                                           addr374:
                                                                           §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr381:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           if(_loc17_ || param2)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr424:
                                                                                                   §§push(param2.§&+§);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      addr428:
                                                                                                      §§push(§§pop() * _loc13_);
                                                                                                      if(!(_loc16_ && param3))
                                                                                                      {
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(_loc17_ || this)
                                                                                                         {
                                                                                                            addr445:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(!(_loc16_ && this))
                                                                                                                  {
                                                                                                                     addr457:
                                                                                                                     §§push(§§pop() / _loc13_);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        addr460:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     param1.fraction = _loc15_;
                                                                                                                     §§push(param1.normal);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(!(_loc16_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc17_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.normal);
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             addr503:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(!(_loc16_ && param2))
                                                                                                                                             {
                                                                                                                                                addr521:
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(!(_loc16_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr529:
                                                                                                                                                   §§push(§§pop() * _loc11_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             §§push(param1.normal);
                                                                                                                                          }
                                                                                                                                          §§pop().Normalize();
                                                                                                                                          if(_loc17_ || param2)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr548);
                                                                                                                                       }
                                                                                                                                       §§push(true);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       §§goto(addr548);
                                                                                                                                    }
                                                                                                                                    §§goto(addr521);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr529);
                                                                                                                        }
                                                                                                                        §§goto(addr521);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr503);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr548);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr457);
                                                                                                }
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr428);
                                                                              }
                                                                              §§goto(addr424);
                                                                           }
                                                                           addr548:
                                                                           return false;
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                      §§goto(addr248);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr248);
                                             }
                                             §§goto(addr213);
                                          }
                                          addr173:
                                          §§push(§§pop() + §§pop());
                                          §§push(b2internal::%+ * b2internal::%+);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr163);
                              }
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr107);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc7_ || param1)
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || param2)
            {
               §§push(this.§,!#§.x);
               if(!_loc6_)
               {
                  §§goto(addr69);
               }
               §§push(§§pop() + §§pop());
            }
            addr69:
            §§push(§§pop() * §§pop());
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc3_.col2.x);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() * this.§,!#§.y);
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc7_)
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2.position.y);
            if(_loc7_ || this)
            {
               §§push(_loc3_.col1.y);
               if(!(_loc6_ && this))
               {
                  §§push(this.§,!#§.x);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                        addr117:
                        §§push(_loc3_.col2.y);
                        if(!_loc6_)
                        {
                           addr126:
                           §§push(§§pop() + §§pop() * this.§,!#§.y);
                        }
                        §§goto(addr126);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc6_ && param1)
                     {
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr126);
               }
               §§goto(addr117);
            }
            addr136:
            var _loc5_:Number = §§pop();
            if(_loc7_ || this)
            {
               §§push(param1.§ !d§);
               §§push(_loc4_);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() - b2internal::%+);
               }
               §§push(_loc5_);
               if(_loc7_ || param2)
               {
                  §§push(§§pop() - b2internal::%+);
               }
               §§pop().Set(§§pop(),§§pop());
               if(!_loc6_)
               {
                  param1.§=!j§.Set(_loc4_ + b2internal::%+,_loc5_ + b2internal::%+);
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!_loc4_)
               {
                  §§push(§§pop() * b2internal::%+);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() * b2internal::%+);
                  }
               }
            }
            §§pop().§3!^§ = §§pop();
            if(_loc3_)
            {
               param1.center.SetV(this.§,!#§);
               addr46:
               if(!(_loc4_ && _loc3_))
               {
                  §§push(param1);
                  §§push(param1.§3!^§);
                  if(!_loc4_)
                  {
                     §§push(0.5);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * b2internal::%+);
                        if(_loc3_)
                        {
                           §§push(§§pop() * b2internal::%+);
                           if(!(_loc4_ && param2))
                           {
                              §§push(this.§,!#§.x);
                              if(_loc3_)
                              {
                                 §§push(this.§,!#§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc4_)
                                       {
                                          addr116:
                                          §§push(this.§,!#§.y);
                                          if(_loc3_)
                                          {
                                             addr123:
                                             §§push(§§pop() + §§pop() * this.§,!#§.y);
                                          }
                                          §§goto(addr123);
                                       }
                                       addr126:
                                       §§pop().§=!'§ = §§pop() * (§§pop() + §§pop());
                                       return;
                                       addr125:
                                    }
                                    §§goto(addr123);
                                 }
                              }
                              §§goto(addr116);
                           }
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr46);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§#!N§(param3,this.§,!#§);
         §§push(b2Math.§9!;§(param1,_loc5_));
         if(!(_loc12_ && param2))
         {
            §§push(param2);
            if(!(_loc12_ && param1))
            {
               §§push(§§pop() - §§pop());
               if(_loc11_)
               {
                  addr47:
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc11_ || param1)
            {
               if(§§pop() < -b2internal::%+ + Number.MIN_VALUE)
               {
                  if(!_loc12_)
                  {
                     return 0;
                  }
                  addr115:
                  §§push(b2internal::%+ * b2internal::%+);
                  if(_loc11_)
                  {
                     addr120:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  §§push(_loc6_);
                  if(_loc11_ || this)
                  {
                     if(§§pop() > b2internal::%+)
                     {
                        if(!_loc12_)
                        {
                           param4.SetV(_loc5_);
                           if(!_loc11_)
                           {
                              §§goto(addr115);
                           }
                           addr121:
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(_loc11_ || this)
                           {
                              §§push(§§pop() * _loc6_);
                              if(_loc11_ || param3)
                              {
                                 addr149:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              if(!(_loc12_ && param1))
                              {
                                 §§push(_loc7_ * (Math.asin(_loc6_ / b2internal::%+) + Math.PI / 2));
                                 §§push(_loc6_);
                                 if(_loc11_ || this)
                                 {
                                    §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                    if(!_loc12_)
                                    {
                                       addr186:
                                       _loc9_ = §§pop() + §§pop();
                                       §§push(-2 / 3);
                                       if(!_loc12_)
                                       {
                                          §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                          if(_loc11_)
                                          {
                                             addr204:
                                             §§push(§§pop() / _loc9_);
                                             if(!_loc12_)
                                             {
                                                addr207:
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc10_:* = §§pop();
                                          if(!(_loc12_ && param1))
                                          {
                                             §§push(param4);
                                             §§push(_loc5_.x);
                                             if(!(_loc12_ && param2))
                                             {
                                                §§push(param1.x);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() * _loc10_);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().x = §§pop();
                                             if(!(_loc12_ && param2))
                                             {
                                                §§push(param4);
                                                §§push(_loc5_.y);
                                                if(_loc11_ || param3)
                                                {
                                                   §§push(param1.y);
                                                   if(_loc11_ || param2)
                                                   {
                                                      §§push(§§pop() * _loc10_);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().y = §§pop();
                                             }
                                          }
                                          return _loc9_;
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr204);
                                 }
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr149);
                        }
                        §§push(Math.PI * b2internal::%+);
                        if(!(_loc12_ && param1))
                        {
                           addr105:
                           §§push(§§pop() * b2internal::%+);
                           if(!(_loc12_ && param1))
                           {
                              §§goto(addr114);
                           }
                           else
                           {
                              §§goto(addr121);
                           }
                        }
                        else
                        {
                           §§goto(addr120);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr105);
               }
               §§goto(addr121);
            }
            addr114:
            return §§pop();
         }
         §§goto(addr47);
      }
      
      public function §4e§() : b2Vec2
      {
         return this.§,!#§;
      }
      
      public function §4m§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!#§.SetV(param1);
         }
      }
      
      public function §?'§() : Number
      {
         return b2internal::%+;
      }
      
      public function §'!p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §%+§ = param1;
         }
      }
   }
}
