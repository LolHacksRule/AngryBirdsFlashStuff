package §3b§
{
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §>!Z§.b2AABB;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §`3§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`3§ = new b2Vec2();
         }
         while(true)
         {
            super();
            while(_loc2_ || _loc2_)
            {
               §3r§ = b2internal::^!6;
               do
               {
                  § !c§ = param1;
               }
               while(!(_loc2_ || _loc3_));
               
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_ || _loc1_)
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
         if(!_loc4_)
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
               this.§`3§.SetV(_loc2_.§`3§);
            }
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!_loc6_)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc6_ && this))
            {
               §§push(this.§`3§.x);
               if(_loc7_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || param2)
                  {
                     addr69:
                     §§push(_loc3_.col2.x);
                     if(!(_loc6_ && param2))
                     {
                        addr64:
                        §§push(§§pop() * this.§`3§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(_loc7_)
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param1.position.y);
                     if(!_loc6_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc6_)
                        {
                           §§push(this.§`3§.x);
                           if(!_loc6_)
                           {
                              addr117:
                              §§push(§§pop() * §§pop());
                              if(!(_loc6_ && param1))
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * this.§`3§.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_ || _loc3_)
                              {
                                 addr126:
                                 var _loc5_:* = Number(§§pop());
                                 if(_loc7_)
                                 {
                                    §§push(param2.x);
                                    if(_loc7_ || param2)
                                    {
                                       §§push(_loc4_);
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr155:
                                          if(!(_loc7_ || this))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() * _loc5_);
                                          if(_loc7_)
                                          {
                                             addr166:
                                             if(_loc7_ || this)
                                             {
                                                addr174:
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_)
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr187:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc7_ || param2)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         loop5:
                                                         while(!_loc6_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§goto(addr155);
                                                                              }
                                                                              §§goto(addr179);
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               addr216:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               addr232:
                                                            }
                                                         }
                                                         addr231:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            §§goto(addr232);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr179:
                                                return §§pop() <= §§pop();
                                                §§push(b2internal:: !c * b2internal:: !c);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr126);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr69);
               }
               §§goto(addr64);
            }
            §§goto(addr69);
         }
         §§goto(addr72);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(!_loc17_)
         {
            §§push(_loc4_.col1.x);
            if(!_loc17_)
            {
               §§push(this.§`3§.x);
               if(_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc17_ && param1))
                  {
                     addr45:
                     §§push(_loc4_.col2.x);
                     if(!(_loc17_ && param1))
                     {
                        addr55:
                        §§push(§§pop() * this.§`3§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc17_ && param3))
                  {
                     addr69:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(_loc16_ || param2)
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc16_)
                        {
                           §§push(this.§`3§.x);
                           if(_loc16_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc16_ || param1)
                              {
                                 addr98:
                                 §§push(_loc4_.col2.y);
                                 if(_loc16_ || param3)
                                 {
                                    addr108:
                                    §§push(§§pop() * this.§`3§.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc16_ || param2)
                              {
                                 addr121:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(!(_loc17_ && this))
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc16_ || this)
                                 {
                                    addr142:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc16_)
                                 {
                                    §§push(param2.p1.y);
                                    if(_loc16_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc16_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc17_ && param2))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc16_ || param1)
                                             {
                                                _loc8_ = §§pop();
                                                addr176:
                                                §§push(_loc7_);
                                                if(_loc16_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() * _loc8_);
                                                            if(_loc17_)
                                                            {
                                                            }
                                                            addr208:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc16_)
                                                            {
                                                               addr212:
                                                               var _loc9_:Number = §§pop();
                                                               §§push(param2.p2.x);
                                                               if(_loc16_ || param3)
                                                               {
                                                                  §§push(§§pop() - param2.p1.x);
                                                                  if(!(_loc17_ && param2))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(param2.p2.y);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() - param2.p1.y);
                                                                  if(_loc16_ || param3)
                                                                  {
                                                                     addr252:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc7_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_ || param3)
                                                                        {
                                                                           addr268:
                                                                           §§push(_loc8_);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              addr276:
                                                                              §§push(§§pop() * _loc11_);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc10_);
                                                                        if(!(_loc17_ && param3))
                                                                        {
                                                                           §§push(_loc10_);
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc17_ && param2))
                                                                                 {
                                                                                    addr315:
                                                                                    §§push(§§pop() * _loc11_);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    addr320:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc17_ && param3))
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!(_loc17_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr341:
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc17_ && this))
                                                                                          {
                                                                                             addr363:
                                                                                             §§push(§§pop() * _loc9_);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc17_ && param2))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() < 0);
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         addr384:
                                                                                                         §§pop();
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            if(!(_loc17_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() < Number.MIN_VALUE);
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  addr405:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        §§goto(addr409);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(_loc12_);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                     if(_loc17_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr426:
                                                                                                                     var _loc15_:* = §§pop();
                                                                                                                     if(!_loc17_)
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
                                                                                                                              if(!(_loc17_ && param2))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop19:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(!(_loc17_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(param2.§%[§);
                                                                                                                                             if(_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc13_);
                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                {
                                                                                                                                                   addr574:
                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(false);
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            while(_loc17_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         if(_loc16_ || this)
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop5:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(!(_loc17_ && param1))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               addr596:
                                                                                                                                                               while(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                            addr585:
                                                                                                                                                         }
                                                                                                                                                         while(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               param1.fraction = _loc15_;
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr574);
                                                                                                                                                   }
                                                                                                                                                   addr575:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr596);
                                                                                                                                          }
                                                                                                                                          §§goto(addr585);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr623:
                                                                                                                                 }
                                                                                                                                 §§goto(addr575);
                                                                                                                              }
                                                                                                                              §§goto(addr623);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr525);
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr426);
                                                                                                         }
                                                                                                         §§goto(addr409);
                                                                                                      }
                                                                                                      addr409:
                                                                                                      return false;
                                                                                                   }
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr426);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              §§goto(addr320);
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr320);
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_ || param3)
                                                         {
                                                            addr205:
                                                            §§goto(addr208);
                                                            §§push(b2internal:: !c * b2internal:: !c);
                                                         }
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr69);
               }
               §§goto(addr55);
            }
            §§goto(addr45);
         }
         §§goto(addr69);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc6_ && this))
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§`3§.x);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || this)
                  {
                     addr64:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || _loc3_)
                     {
                        addr59:
                        §§push(§§pop() * this.§`3§.y);
                     }
                     §§push(§§pop() + (§§pop() + §§pop()));
                     if(!(_loc6_ && param2))
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     §§push(param2.position.y);
                     if(_loc7_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(this.§`3§.x);
                           if(!(_loc6_ && this))
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
                        if(_loc7_ || param1)
                        {
                           addr122:
                           §§push(§§pop() * this.§`3§.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(_loc7_)
                        {
                           addr130:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_ || param1)
                        {
                           §§push(param1.§>h§);
                           §§push(_loc4_);
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() - b2internal:: !c);
                           }
                           §§push(_loc5_);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() - b2internal:: !c);
                           }
                           §§pop().Set(§§pop(),§§pop());
                           do
                           {
                              param1.§^!z§.Set(_loc4_ + b2internal:: !c,_loc5_ + b2internal:: !c);
                           }
                           while(!_loc7_);
                           
                        }
                        return;
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr64);
               }
               §§goto(addr59);
            }
            §§goto(addr64);
         }
         §§goto(addr72);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() * b2internal:: !c);
                  if(_loc3_ || param2)
                  {
                  }
                  addr155:
                  §§pop().§&q§ = §§pop();
                  do
                  {
                     param1.center.SetV(this.§`3§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§&q§);
                        if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * b2internal:: !c);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * b2internal:: !c);
                              if(!_loc4_)
                              {
                                 §§push(this.§`3§.x);
                                 if(!_loc4_)
                                 {
                                    §§push(this.§`3§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr100:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr87:
                                             §§push(this.§`3§.y);
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(§§pop() * this.§`3§.y);
                                             }
                                          }
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                          continue;
                                       }
                                       §§goto(addr100);
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr100);
                              }
                           }
                        }
                        §§goto(addr100);
                     }
                     while(§§pop().§6_§ = §§pop(), !_loc3_);
                     
                  }
                  while(_loc4_ && param2);
                  
                  return;
                  addr156:
               }
               §§push(§§pop() * b2internal:: !c);
            }
            §§goto(addr155);
         }
         §§goto(addr156);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§%!r§(param3,this.§`3§);
         §§push(b2Math.§#D§(param1,_loc5_));
         if(_loc11_ || param2)
         {
            §§push(param2);
            if(_loc11_ || this)
            {
               §§push(§§pop() - §§pop());
               if(_loc11_)
               {
                  §§push(-§§pop());
                  if(_loc11_)
                  {
                     addr50:
                     §§push(Number(§§pop()));
                  }
                  §§push(§§pop());
               }
               §§goto(addr50);
            }
            var _loc6_:* = §§pop();
            if(_loc11_ || this)
            {
               if(§§pop() < -b2internal:: !c + Number.MIN_VALUE)
               {
                  if(_loc11_)
                  {
                     return 0;
                  }
               }
               §§push(_loc6_);
               if(_loc11_ || param1)
               {
                  if(§§pop() > b2internal:: !c)
                  {
                     if(_loc11_)
                     {
                        param4.SetV(_loc5_);
                        if(!(_loc12_ && param3))
                        {
                           §§push(Math.PI * b2internal:: !c);
                           if(!_loc12_)
                           {
                              addr105:
                              §§push(§§pop() * b2internal:: !c);
                              if(_loc11_ || this)
                              {
                                 return §§pop();
                              }
                              addr120:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           addr115:
                           §§push(b2internal:: !c * b2internal:: !c);
                           if(!_loc12_)
                           {
                              §§goto(addr120);
                           }
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc6_);
                        if(!_loc12_)
                        {
                           §§push(§§pop() * _loc6_);
                           if(_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        if(_loc11_)
                        {
                           §§push(_loc7_);
                           if(_loc11_ || param1)
                           {
                              §§push(§§pop() * (Math.asin(_loc6_ / b2internal:: !c) + Math.PI / 2));
                              if(_loc11_)
                              {
                                 §§push(_loc6_);
                                 if(!_loc12_)
                                 {
                                    §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                    if(_loc11_ || param1)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc11_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc12_ && param1))
                                          {
                                             _loc9_ = §§pop();
                                             addr197:
                                             §§push(-2 / 3);
                                             if(!_loc12_)
                                             {
                                                §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                if(_loc11_)
                                                {
                                                   addr211:
                                                   addr212:
                                                   §§push(§§pop() / _loc9_);
                                                   if(_loc11_ || param1)
                                                   {
                                                   }
                                                   §§goto(addr221);
                                                }
                                                addr221:
                                                var _loc10_:* = §§pop();
                                                if(!(_loc12_ && this))
                                                {
                                                   §§push(param4);
                                                   §§push(_loc5_.x);
                                                   if(_loc11_)
                                                   {
                                                      §§push(param1.x);
                                                      if(!_loc12_)
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
                                                      if(!_loc12_)
                                                      {
                                                         §§push(param1.y);
                                                         if(!(_loc12_ && param1))
                                                         {
                                                            §§push(§§pop() * _loc10_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                   }
                                                   while(_loc12_);
                                                   
                                                }
                                                return _loc9_;
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                                 §§goto(addr212);
                              }
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr197);
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr120);
            }
            §§goto(addr105);
         }
         §§goto(addr50);
      }
      
      public function §=!T§() : b2Vec2
      {
         return this.§`3§;
      }
      
      public function §=!K§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`3§.SetV(param1);
         }
      }
      
      public function §4!Y§() : Number
      {
         return b2internal:: !c;
      }
      
      public function §8&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            § !c§ = param1;
         }
      }
   }
}
