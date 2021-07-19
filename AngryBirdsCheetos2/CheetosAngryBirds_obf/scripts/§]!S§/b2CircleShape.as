package §]!S§
{
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2AABB;
   import §-r§.b2RayCastInput;
   import §-r§.b2RayCastOutput;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §4Z§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4Z§ = new b2Vec2();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  §#!&§ = b2internal::,-;
                  continue loop0;
                  addr30:
                  if(_loc3_ || this)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_ || this)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         if(!(_loc3_ && this))
         {
            super.Set(param1);
            if(!_loc3_)
            {
               §§goto(addr42);
            }
            §§goto(addr46);
         }
         addr42:
         if(param1 is b2CircleShape)
         {
            _loc2_ = param1 as b2CircleShape;
            addr46:
            if(_loc4_)
            {
               this.§4Z§.SetV(_loc2_.§4Z§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_.col1.x);
            if(_loc6_)
            {
               §§push(this.§4Z§.x);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && param2))
                  {
                     addr53:
                     §§push(_loc3_.col2.x);
                     if(!(_loc7_ && param2))
                     {
                        addr67:
                        §§push(§§pop() + §§pop() * this.§4Z§.y);
                     }
                     §§goto(addr67);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     addr71:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(!_loc7_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc6_)
                     {
                        §§push(this.§4Z§.x);
                        if(_loc6_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_ || param1)
                           {
                              addr96:
                              §§push(_loc3_.col2.y);
                              if(!(_loc7_ && param2))
                              {
                                 addr106:
                                 §§push(§§pop() * this.§4Z§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || param2)
                           {
                              addr129:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              §§push(param2.x);
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr248:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    addr249:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr250:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                    }
                                 }
                              }
                              addr247:
                           }
                           loop4:
                           while(true)
                           {
                              §§push(param2.y);
                              if(!(_loc7_ && param1))
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(_loc5_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr226:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc6_ || this))
                                             {
                                                break;
                                             }
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(!(_loc6_ || param2))
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr166);
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   else
                                                   {
                                                      addr190:
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_ || this)
                                                      {
                                                         §§goto(addr207);
                                                         §§push(b2internal::#& * b2internal::#&);
                                                      }
                                                   }
                                                   §§goto(addr249);
                                                }
                                                addr166:
                                                §§push(§§pop() * _loc5_);
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   addr207:
                                                }
                                                continue loop5;
                                                return §§pop() <= §§pop();
                                             }
                                             §§goto(addr190);
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 §§goto(addr250);
                              }
                              §§goto(addr226);
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr129);
               }
               §§goto(addr67);
            }
            §§goto(addr53);
         }
         §§goto(addr71);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(!_loc16_)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc16_ && param2))
            {
               §§push(this.§4Z§.x);
               if(_loc17_)
               {
                  addr56:
                  §§push(§§pop() * §§pop());
                  if(_loc17_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc17_)
                     {
                        §§push(§§pop() * this.§4Z§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ || param2)
                  {
                     addr65:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc16_ && param2))
                     {
                        §§push(_loc4_.col1.y);
                        if(!_loc16_)
                        {
                           §§push(this.§4Z§.x);
                           if(_loc17_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || param3)
                              {
                                 addr94:
                                 §§push(_loc4_.col2.y);
                                 if(!(_loc16_ && param2))
                                 {
                                    addr104:
                                    §§push(§§pop() * this.§4Z§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc17_)
                              {
                                 addr112:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(_loc17_ || this)
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc17_ || this)
                                 {
                                    addr133:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(!_loc16_)
                                 {
                                    §§push(param2.p1.y);
                                    if(!_loc16_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc17_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc17_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc17_)
                                             {
                                                addr156:
                                                _loc8_ = §§pop();
                                                §§push(_loc7_);
                                                if(!(_loc16_ && this))
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc17_ || param2)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc16_)
                                                         {
                                                            addr179:
                                                            §§push(§§pop() * _loc8_);
                                                            if(!_loc17_)
                                                            {
                                                            }
                                                            addr194:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc17_ || param3)
                                                            {
                                                               addr203:
                                                               var _loc9_:Number = §§pop();
                                                               §§push(param2.p2.x);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() - param2.p1.x);
                                                                  if(!(_loc16_ && param3))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(param2.p2.y);
                                                               if(_loc17_ || this)
                                                               {
                                                                  §§push(§§pop() - param2.p1.y);
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc7_);
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(_loc17_)
                                                                        {
                                                                           addr267:
                                                                           §§push(§§pop() * _loc11_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           addr278:
                                                                           var _loc12_:Number = §§pop();
                                                                           §§push(_loc10_);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    addr288:
                                                                                    §§push(_loc11_);
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       addr296:
                                                                                       §§push(§§pop() * _loc11_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr311:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc17_ || param2)
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc17_ || param3)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc16_ && param2))
                                                                                             {
                                                                                                addr340:
                                                                                                §§push(§§pop() * _loc9_);
                                                                                                if(!(_loc16_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr352:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() < 0);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc17_ || this)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc16_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() < Number.MIN_VALUE);
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  addr396:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc17_ || param3)
                                                                                                                     {
                                                                                                                        §§goto(addr405);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr406:
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        var _loc15_:* = Number(§§pop());
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           loop0:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc15_);
                                                                                                                              loop1:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       loop18:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(param2.§0`§);
                                                                                                                                                if(_loc17_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * _loc13_);
                                                                                                                                                   if(!(_loc16_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr587:
                                                                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                                                                      loop2:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         while(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(!(_loc17_ || this))
                                                                                                                                                            {
                                                                                                                                                               break loop2;
                                                                                                                                                            }
                                                                                                                                                            if(_loc17_ || param3)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc16_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  return §§pop();
                                                                                                                                                               }
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop4:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  addr594:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr593:
                                                                                                                                                            }
                                                                                                                                                            while(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.fraction = _loc15_;
                                                                                                                                                                  continue loop4;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr587);
                                                                                                                                                      }
                                                                                                                                                      return §§pop();
                                                                                                                                                      addr588:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr594);
                                                                                                                                             }
                                                                                                                                             §§goto(addr593);
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       addr619:
                                                                                                                                    }
                                                                                                                                    §§goto(addr588);
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr540);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr406);
                                                                                                               }
                                                                                                               §§goto(addr405);
                                                                                                            }
                                                                                                            §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                            if(_loc17_ || param1)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr406);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr396);
                                                                                                }
                                                                                                addr405:
                                                                                                return false;
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                              §§goto(addr296);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr203);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            §§push(b2internal::#& * b2internal::#&);
                                                         }
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr194);
                                                }
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr65);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr56);
         }
         §§goto(addr65);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc7_ || param2)
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || param1)
            {
               §§push(this.§4Z§.x);
               if(!(_loc6_ && param2))
               {
                  addr69:
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() * this.§4Z§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr73:
                     var _loc4_:Number = §§pop();
                     §§push(param2.position.y);
                     if(_loc7_ || param2)
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc6_)
                        {
                           §§push(this.§4Z§.x);
                           if(_loc7_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr122);
                        }
                        addr127:
                        §§push(_loc3_.col2.y);
                        if(!(_loc6_ && this))
                        {
                           addr122:
                           §§push(§§pop() * this.§4Z§.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(_loc7_ || param2)
                        {
                           addr135:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc6_)
                        {
                           §§push(param1.§>!7§);
                           §§push(_loc4_);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() - b2internal::#&);
                           }
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              §§push(§§pop() - b2internal::#&);
                           }
                           §§pop().Set(§§pop(),§§pop());
                           do
                           {
                              param1.§=k§.Set(_loc4_ + b2internal::#&,_loc5_ + b2internal::#&);
                           }
                           while(_loc6_);
                           
                        }
                        return;
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr73);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr69);
         }
         §§goto(addr73);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param1);
            §§push(param2);
            if(_loc4_ || param2)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc4_ || this)
               {
                  addr140:
                  §§push(§§pop() * b2internal::#&);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() * b2internal::#&);
                  }
               }
               §§pop().§>A§ = §§pop();
               while(true)
               {
                  param1.center.SetV(this.§4Z§);
                  loop1:
                  for(; !(_loc3_ && this); §§pop().§[8§ = §§pop(),if(_loc3_ && this)
                  {
                     continue;
                  },§§goto(addr106))
                  {
                     while(true)
                     {
                        §§push(param1);
                        §§push(param1.§>A§);
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        §§push(0.5);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() * b2internal::#&);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() * b2internal::#&);
                              if(_loc3_)
                              {
                              }
                              addr97:
                              §§push(§§pop() * §§pop());
                              continue loop1;
                           }
                           §§push(this.§4Z§.x);
                           if(_loc4_)
                           {
                              §§push(this.§4Z§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc4_)
                                 {
                                    addr96:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       addr88:
                                       §§push(this.§4Z§.y);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * this.§4Z§.y);
                                       }
                                    }
                                    §§goto(addr97);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr96);
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr97);
                     }
                     return;
                  }
               }
            }
            §§goto(addr140);
         }
         §§goto(addr120);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§=!!§(param3,this.§4Z§);
         §§push(b2Math.§%!a§(param1,_loc5_));
         if(!(_loc11_ && this))
         {
            §§push(param2);
            if(_loc12_ || this)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc11_ && param3))
               {
                  addr53:
                  §§push(-§§pop());
                  if(!(_loc11_ && param2))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!(_loc11_ && param3))
            {
               if(§§pop() < -b2internal::#& + Number.MIN_VALUE)
               {
                  if(!(_loc11_ && param3))
                  {
                     return 0;
                  }
                  addr105:
                  §§push(Math.PI * b2internal::#&);
                  if(_loc12_ || param2)
                  {
                     addr116:
                     §§push(§§pop() * b2internal::#&);
                     if(!(_loc12_ || param3))
                     {
                        addr132:
                        var _loc7_:Number = §§pop();
                        addr131:
                        §§push(_loc6_);
                        if(_loc12_ || param3)
                        {
                           §§push(§§pop() * _loc6_);
                           if(!(_loc11_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        if(!(_loc11_ && param2))
                        {
                           §§push(_loc7_);
                           if(!(_loc11_ && this))
                           {
                              §§push(§§pop() * (Math.asin(_loc6_ / b2internal::#&) + Math.PI / 2));
                              if(!(_loc11_ && param3))
                              {
                                 §§push(_loc6_);
                                 if(!(_loc11_ && this))
                                 {
                                    §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                    if(!_loc11_)
                                    {
                                       §§goto(addr211);
                                    }
                                    §§goto(addr243);
                                 }
                                 addr211:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc11_ && param3))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc12_ || param1)
                                    {
                                       _loc9_ = §§pop();
                                       addr228:
                                       §§push(-2 / 3);
                                       if(_loc12_)
                                       {
                                          addr233:
                                          §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                          if(_loc11_)
                                          {
                                          }
                                       }
                                       §§goto(addr252);
                                    }
                                    addr243:
                                    §§push(§§pop() / _loc9_);
                                    if(!(_loc11_ && param2))
                                    {
                                       addr251:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 addr252:
                                 var _loc10_:* = §§pop();
                                 if(_loc12_)
                                 {
                                    §§push(param4);
                                    §§push(_loc5_.x);
                                    if(!_loc11_)
                                    {
                                       §§push(param1.x);
                                       if(_loc12_ || this)
                                       {
                                          §§push(§§pop() * _loc10_);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    do
                                    {
                                       §§push(param4);
                                       §§push(_loc5_.y);
                                       if(!_loc11_)
                                       {
                                          §§push(param1.y);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() * _loc10_);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(!(_loc12_ || param1));
                                    
                                 }
                                 return _loc9_;
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr251);
                        }
                        §§goto(addr228);
                     }
                  }
               }
               else
               {
                  §§push(_loc6_);
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop() > b2internal::#&)
                     {
                        if(_loc12_)
                        {
                           param4.SetV(_loc5_);
                           if(_loc12_)
                           {
                              §§goto(addr105);
                           }
                           else
                           {
                              addr126:
                              §§push(b2internal::#& * b2internal::#&);
                              if(!_loc11_)
                              {
                                 §§goto(addr131);
                              }
                           }
                           §§goto(addr132);
                        }
                     }
                     §§goto(addr126);
                  }
               }
               return §§pop();
            }
            §§goto(addr116);
         }
         §§goto(addr53);
      }
      
      public function §&h§() : b2Vec2
      {
         return this.§4Z§;
      }
      
      public function §-?§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4Z§.SetV(param1);
         }
      }
      
      public function §[!;§() : Number
      {
         return b2internal::#&;
      }
      
      public function §#!3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §#&§ = param1;
         }
      }
   }
}
