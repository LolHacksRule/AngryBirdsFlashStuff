package §"!9§
{
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.b2AABB;
   import §5!o§.b2RayCastInput;
   import §5!o§.b2RayCastOutput;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §6!B§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6!B§ = new b2Vec2();
            while(true)
            {
               super();
               while(!(_loc3_ && _loc3_))
               {
                  §="1§ = b2internal::[x;
                  while(!_loc3_)
                  {
                     §;$§ = param1;
                     if(!(_loc3_ && param1))
                     {
                        return;
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_ || _loc3_)
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
         if(!_loc3_)
         {
            super.Set(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(param1 is b2CircleShape)
               {
                  addr46:
                  _loc2_ = param1 as b2CircleShape;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§6!B§.SetV(_loc2_.§6!B§);
                  }
               }
               return;
            }
         }
         §§goto(addr46);
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
            if(_loc7_ || this)
            {
               §§push(this.§6!B§.x);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     addr54:
                     §§push(_loc3_.col2.x);
                     if(!_loc6_)
                     {
                        addr59:
                        §§push(§§pop() * this.§6!B§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc6_ && param1))
                  {
                     addr72:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc7_ || _loc3_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc7_ || this)
                     {
                        §§push(this.§6!B§.x);
                        if(!_loc6_)
                        {
                           addr127:
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && this))
                           {
                              §§push(_loc3_.col2.y);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() * this.§6!B§.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              addr130:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_)
                           {
                              §§push(param2.x);
                              loop0:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr244:
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    addr245:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr246:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                       }
                                    }
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!(_loc7_ || this))
                                    {
                                       continue loop0;
                                    }
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                addr145:
                                                if(!(_loc7_ || this))
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc7_ || param2)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * _loc5_);
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         addr176:
                                                         if(_loc6_)
                                                         {
                                                            break loop7;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         continue;
                                                      }
                                                   }
                                                   addr196:
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop7;
                                                         §§goto(addr196);
                                                      }
                                                      addr218:
                                                   }
                                                   return §§pop() <= §§pop();
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr145);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr210);
                                    }
                                 }
                                 §§goto(addr244);
                              }
                           }
                           §§goto(addr247);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr130);
               }
               §§goto(addr59);
            }
            §§goto(addr54);
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
         if(_loc16_ || param1)
         {
            §§push(_loc4_.col1.x);
            if(_loc16_ || param1)
            {
               §§push(this.§6!B§.x);
               if(!(_loc17_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc16_ || param1)
                  {
                     addr60:
                     §§push(_loc4_.col2.x);
                     if(_loc16_)
                     {
                        addr65:
                        §§push(§§pop() * this.§6!B§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc16_)
                  {
                     addr73:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(!_loc17_)
                  {
                     §§push(_loc4_.col1.y);
                     if(_loc16_ || param2)
                     {
                        §§push(this.§6!B§.x);
                        if(_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc16_ || this)
                           {
                              addr103:
                              §§push(_loc4_.col2.y);
                              if(!(_loc17_ && param3))
                              {
                                 addr117:
                                 §§push(§§pop() + §§pop() * this.§6!B§.y);
                              }
                              §§goto(addr117);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc17_ && param1))
                           {
                              addr126:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param2.p1.x);
                           if(_loc16_ || param1)
                           {
                              §§push(§§pop() - _loc5_);
                              if(_loc16_ || param3)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           if(_loc16_ || param3)
                           {
                              §§push(param2.p1.y);
                              if(!(_loc17_ && param3))
                              {
                                 §§push(_loc6_);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc17_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc16_ || param1)
                                       {
                                          _loc8_ = §§pop();
                                          addr186:
                                          §§push(_loc7_);
                                          if(_loc16_ || this)
                                          {
                                             addr194:
                                             §§push(_loc7_);
                                             if(_loc16_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc16_ || param1)
                                                {
                                                   addr205:
                                                   §§push(_loc8_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() * _loc8_);
                                                      if(_loc16_ || this)
                                                      {
                                                         addr217:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc17_ && param1))
                                                         {
                                                            addr228:
                                                            §§push(§§pop() - b2internal::;$ * b2internal::;$);
                                                            if(_loc16_)
                                                            {
                                                               addr231:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                var _loc9_:* = §§pop();
                                                §§push(param2.p2.x);
                                                if(!(_loc17_ && this))
                                                {
                                                   §§push(§§pop() - param2.p1.x);
                                                   if(_loc16_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(param2.p2.y);
                                                if(!(_loc17_ && this))
                                                {
                                                   §§push(§§pop() - param2.p1.y);
                                                   if(_loc16_)
                                                   {
                                                      addr272:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc7_);
                                                   if(_loc16_ || param1)
                                                   {
                                                      §§push(_loc10_);
                                                      if(_loc16_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc17_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc16_ || this)
                                                            {
                                                               addr303:
                                                               §§push(§§pop() + §§pop() * _loc11_);
                                                               if(_loc16_ || param1)
                                                               {
                                                                  addr311:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         var _loc12_:* = §§pop();
                                                         §§push(_loc10_);
                                                         if(_loc16_ || param1)
                                                         {
                                                            §§push(_loc10_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc17_ && this))
                                                               {
                                                                  addr342:
                                                                  §§push(_loc11_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr345:
                                                                     §§push(§§pop() * _loc11_);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr350:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(_loc16_ || param3)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           if(_loc16_ || param2)
                                                                           {
                                                                              §§push(§§pop() * _loc9_);
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr388:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc17_ && this))
                                                                                 {
                                                                                    addr397:
                                                                                    §§push(Number(§§pop()));
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr397);
                                                                              }
                                                                           }
                                                                           var _loc14_:* = §§pop();
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(§§pop() < 0);
                                                                              if(!(_loc17_ && param1))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc17_ && param3))
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc17_ && this))
                                                                                          {
                                                                                             §§push(§§pop() < Number.MIN_VALUE);
                                                                                             if(_loc16_ || param2)
                                                                                             {
                                                                                                addr440:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc16_ || this)
                                                                                                   {
                                                                                                      §§goto(addr449);
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc12_);
                                                                                                if(_loc16_ || this)
                                                                                                {
                                                                                                   addr458:
                                                                                                   §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      addr465:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc15_:* = §§pop();
                                                                                                if(_loc16_ || param1)
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
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop3:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr679:
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc15_);
                                                                                                                     if(_loc17_ && param1)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§push(param2.§8"!§);
                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                     {
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§push(§§pop() * _loc13_);
                                                                                                                        if(_loc16_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           loop4:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              while(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(false);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    break loop4;
                                                                                                                                 }
                                                                                                                                 if(_loc16_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       if(_loc16_ || param2)
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr641:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(_loc16_ || param3)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr500:
                                                                                                                           return §§pop();
                                                                                                                           addr639:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr657:
                                                                                                                        }
                                                                                                                        addr657:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr657:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc15_ = §§pop();
                                                                                                                           loop10:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.fraction = _loc15_;
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.normal);
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       addr593:
                                                                                                                                       addr559:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr594:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc17_ && param1)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(_loc16_ || param2)
                                                                                                                                       {
                                                                                                                                          addr576:
                                                                                                                                          §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                          addr575:
                                                                                                                                          if(_loc17_ && this)
                                                                                                                                          {
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                          §§push(param1.normal);
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          §§pop().Normalize();
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr500);
                                                                                                                                             §§push(true);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr593);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr657);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr657);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr639);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr679);
                                                                                             }
                                                                                             §§goto(addr449);
                                                                                          }
                                                                                          §§goto(addr465);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 §§goto(addr440);
                                                                              }
                                                                              addr449:
                                                                              return false;
                                                                           }
                                                                           §§goto(addr458);
                                                                        }
                                                                        §§goto(addr397);
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr342);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr311);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr231);
                                       }
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr126);
               }
               §§goto(addr65);
            }
            §§goto(addr60);
         }
         §§goto(addr73);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc6_ || param2)
         {
            §§push(_loc3_.col1.x);
            if(!_loc7_)
            {
               §§push(this.§6!B§.x);
               if(_loc6_)
               {
                  §§goto(addr63);
               }
               §§push(§§pop() + §§pop());
            }
            addr63:
            §§push(§§pop() * §§pop());
            if(!(_loc7_ && param1))
            {
               §§push(_loc3_.col2.x);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop() * this.§6!B§.y);
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc6_ || param1)
            {
            }
            §§goto(addr72);
         }
         addr72:
         var _loc4_:Number = §§pop();
         §§push(param2.position.y);
         if(!(_loc7_ && this))
         {
            §§push(_loc3_.col1.y);
            if(!(_loc7_ && _loc3_))
            {
               §§push(this.§6!B§.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr111:
                     §§push(_loc3_.col2.y);
                     if(!_loc7_)
                     {
                        addr120:
                        §§push(§§pop() + §§pop() * this.§6!B§.y);
                     }
                     §§goto(addr120);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_ && this)
                  {
                  }
                  §§goto(addr130);
               }
               §§goto(addr120);
            }
            §§goto(addr111);
         }
         addr130:
         var _loc5_:Number = §§pop();
         if(_loc6_)
         {
            §§push(param1.§8! §);
            §§push(_loc4_);
            if(!(_loc7_ && param2))
            {
               §§push(§§pop() - b2internal::;$);
            }
            §§push(_loc5_);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() - b2internal::;$);
            }
            §§pop().Set(§§pop(),§§pop());
         }
         do
         {
            param1.§;R§.Set(_loc4_ + b2internal::;$,_loc5_ + b2internal::;$);
         }
         while(!(_loc6_ || this));
         
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc3_ || this)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!_loc4_)
               {
                  §§push(§§pop() * b2internal::;$);
                  if(!_loc4_)
                  {
                     addr153:
                     §§push(§§pop() * b2internal::;$);
                  }
                  §§pop().§5d§ = §§pop();
                  while(true)
                  {
                     param1.center.SetV(this.§6!B§);
                     while(!(_loc4_ && param1))
                     {
                        §§push(param1);
                        §§push(param1.§5d§);
                        if(_loc3_)
                        {
                           §§push(0.5);
                           if(!_loc4_)
                           {
                              §§push(§§pop() * b2internal::;$);
                              if(_loc3_ || param2)
                              {
                                 addr41:
                                 §§push(§§pop() * b2internal::;$);
                                 if(!_loc4_)
                                 {
                                    addr45:
                                    §§push(this.§6!B§.x);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(this.§6!B§);
                                       if(_loc3_ || param1)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc3_ || param2)
                                          {
                                             addr106:
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_ || param2)
                                             {
                                                addr92:
                                                §§push(this.§6!B§.y);
                                                if(_loc3_ || param1)
                                                {
                                                   addr100:
                                                   §§push(§§pop() * this.§6!B§.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().I = §§pop() * (§§pop() + §§pop());
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          §§goto(addr100);
                                       }
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr45);
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr106);
                     }
                  }
                  addr156:
               }
            }
            §§goto(addr153);
         }
         §§goto(addr156);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§>!C§(param3,this.§6!B§);
         §§push(b2Math.§@!y§(param1,_loc5_));
         if(!_loc11_)
         {
            §§push(param2);
            if(!_loc11_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc11_)
               {
                  addr38:
                  §§push(-§§pop());
                  if(!_loc11_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc12_)
            {
               if(§§pop() < -b2internal::;$ + Number.MIN_VALUE)
               {
                  if(_loc12_ || param2)
                  {
                     return 0;
                  }
                  addr80:
                  §§push(Math.PI * b2internal::;$);
                  if(_loc12_)
                  {
                     §§push(§§pop() * b2internal::;$);
                     if(_loc11_)
                     {
                        addr97:
                        var _loc7_:Number = §§pop();
                        addr96:
                        §§push(_loc6_);
                        if(_loc12_)
                        {
                           §§push(§§pop() * _loc6_);
                           if(_loc12_)
                           {
                              addr105:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           if(!_loc11_)
                           {
                              §§push(_loc7_);
                              if(_loc12_ || param1)
                              {
                                 §§push(§§pop() * (Math.asin(_loc6_ / b2internal::;$) + Math.PI / 2));
                                 if(_loc12_)
                                 {
                                    addr140:
                                    §§push(_loc6_);
                                    if(_loc12_ || param1)
                                    {
                                       §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc12_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc12_)
                                             {
                                                _loc9_ = §§pop();
                                                §§goto(addr163);
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr186);
                                       }
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr140);
                           }
                           addr163:
                           §§push(-2 / 3);
                           if(!_loc11_)
                           {
                              addr168:
                              §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                              if(_loc12_)
                              {
                                 addr178:
                                 §§push(§§pop() / _loc9_);
                                 if(!(_loc11_ && param1))
                                 {
                                    addr186:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr186);
                           }
                           var _loc10_:* = §§pop();
                           if(!(_loc11_ && param1))
                           {
                              §§push(param4);
                              §§push(_loc5_.x);
                              if(!(_loc11_ && param1))
                              {
                                 §§push(param1.x);
                                 if(!_loc11_)
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
                                 if(_loc12_)
                                 {
                                    §§push(param1.y);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() * _loc10_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().y = §§pop();
                              }
                              while(!(_loc12_ || param2));
                              
                           }
                           return _loc9_;
                        }
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr96);
               }
               else
               {
                  §§push(_loc6_);
                  if(!_loc11_)
                  {
                     if(§§pop() > b2internal::;$)
                     {
                        if(_loc12_)
                        {
                           param4.SetV(_loc5_);
                           if(!(_loc11_ && param3))
                           {
                              §§goto(addr80);
                           }
                           else
                           {
                              addr91:
                              §§push(b2internal::;$ * b2internal::;$);
                              if(_loc12_)
                              {
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr91);
                  }
               }
               return §§pop();
            }
            §§goto(addr97);
         }
         §§goto(addr38);
      }
      
      public function §3-§() : b2Vec2
      {
         return this.§6!B§;
      }
      
      public function §#!L§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!B§.SetV(param1);
         }
      }
      
      public function §4!P§() : Number
      {
         return b2internal::;$;
      }
      
      public function §7s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §;$§ = param1;
         }
      }
   }
}
