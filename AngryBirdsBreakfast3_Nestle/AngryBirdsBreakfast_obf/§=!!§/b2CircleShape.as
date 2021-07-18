package §=!!§
{
   import §!§.b2AABB;
   import §!§.b2RayCastInput;
   import §!§.b2RayCastOutput;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §[N§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[N§ = new b2Vec2();
            while(true)
            {
               super();
               while(true)
               {
                  §5Q§ = b2internal::+!B;
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            §>!M§ = param1;
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!_loc2_)
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
         if(_loc4_ || _loc3_)
         {
            super.Set(param1);
            if(_loc4_)
            {
               if(param1 is b2CircleShape)
               {
                  addr46:
                  _loc2_ = param1 as b2CircleShape;
                  if(_loc4_ || param1)
                  {
                     this.§[N§.SetV(_loc2_.§[N§);
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
            if(_loc7_)
            {
               §§push(this.§[N§.x);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr44:
                     §§push(_loc3_.col2.x);
                     if(_loc7_ || this)
                     {
                        addr58:
                        §§push(§§pop() + §§pop() * this.§[N§.y);
                     }
                     §§goto(addr58);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc7_)
                  {
                     addr63:
                     var _loc4_:* = Number(§§pop());
                     §§push(param1.position.y);
                     if(!_loc6_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(this.§[N§.x);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 addr117:
                                 §§push(_loc3_.col2.y);
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr102:
                                    §§push(§§pop() * this.§[N§.y);
                                 }
                                 §§push(§§pop() + (§§pop() + §§pop()));
                                 if(_loc7_)
                                 {
                                    addr121:
                                    var _loc5_:* = Number(§§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(param2.x);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          addr229:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr230:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr231:
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                }
                                             }
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      continue;
                                                   }
                                                   else
                                                   {
                                                      addr232:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2.y);
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr198:
                                                         addr131:
                                                         while(true)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc7_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc4_);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               break loop8;
                                                            }
                                                            addr176:
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr190);
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr176);
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr198);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(_loc5_);
                                             }
                                             continue loop0;
                                             if(!(_loc6_ && this))
                                             {
                                                if(!(_loc7_ || param1))
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * _loc5_);
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§goto(addr173);
                                                }
                                             }
                                             addr190:
                                             return §§pop() <= b2internal::>!M * b2internal::>!M;
                                          }
                                          §§goto(addr229);
                                       }
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr63);
               }
               §§goto(addr58);
            }
            §§goto(addr44);
         }
         §§goto(addr63);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(!(_loc16_ && param1))
         {
            §§push(_loc4_.col1.x);
            if(!(_loc16_ && param1))
            {
               §§push(this.§[N§.x);
               if(!_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc17_ || param1)
                  {
                     addr56:
                     §§push(_loc4_.col2.x);
                     if(!(_loc16_ && param2))
                     {
                        addr66:
                        §§push(§§pop() * this.§[N§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc17_ || param3)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(_loc17_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc16_)
                     {
                        §§push(this.§[N§.x);
                        if(!_loc16_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc16_ && this))
                           {
                              addr104:
                              §§push(_loc4_.col2.y);
                              if(_loc17_ || param3)
                              {
                                 addr114:
                                 §§push(§§pop() * this.§[N§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc17_)
                           {
                              addr122:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param2.p1.x);
                           if(_loc17_ || param2)
                           {
                              §§push(§§pop() - _loc5_);
                              if(!_loc16_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           if(_loc17_ || this)
                           {
                              §§push(param2.p1.y);
                              if(!(_loc16_ && param1))
                              {
                                 §§push(_loc6_);
                                 if(!(_loc16_ && param1))
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(_loc17_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc17_)
                                       {
                                          _loc8_ = §§pop();
                                          addr177:
                                          §§push(_loc7_);
                                          if(_loc17_ || param1)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc16_ && param3))
                                             {
                                                addr193:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc16_ && param1))
                                                {
                                                   addr201:
                                                   §§push(_loc8_);
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      addr209:
                                                      §§push(§§pop() * _loc8_);
                                                      if(!_loc16_)
                                                      {
                                                         addr213:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc16_)
                                                         {
                                                            addr219:
                                                            §§push(§§pop() - b2internal::>!M * b2internal::>!M);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr227:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         §§push(param2.p2.x);
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            §§push(§§pop() - param2.p1.x);
                                                            if(!_loc16_)
                                                            {
                                                               addr245:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param2.p2.y);
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() - param2.p1.y);
                                                               if(_loc17_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(_loc10_);
                                                               if(!(_loc16_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     addr279:
                                                                     §§push(_loc8_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr282:
                                                                        §§push(§§pop() * _loc11_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        addr287:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc10_);
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr313:
                                                                              §§push(_loc11_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 addr318:
                                                                                 §§push(§§pop() + §§pop() * _loc11_);
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    addr326:
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
                                                                                       if(_loc17_ || param3)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * _loc9_);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr354:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc17_ || param2)
                                                                                                {
                                                                                                   addr363:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(§§pop() < 0);
                                                                                             if(_loc17_ || this)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                             }
                                                                                             addr385:
                                                                                             §§pop();
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop() < Number.MIN_VALUE);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      addr396:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            §§goto(addr405);
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(_loc12_);
                                                                                                      if(!(_loc16_ && this))
                                                                                                      {
                                                                                                         addr414:
                                                                                                         §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                         if(!(_loc16_ && param2))
                                                                                                         {
                                                                                                            addr427:
                                                                                                            var _loc15_:* = Number(§§pop());
                                                                                                            if(!(_loc16_ && param2))
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
                                                                                                                              addr625:
                                                                                                                              loop19:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 if(_loc17_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(param2.§9!Y§);
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * _loc13_);
                                                                                                                                       if(!(_loc16_ && param2))
                                                                                                                                       {
                                                                                                                                          if(_loc17_ || param1)
                                                                                                                                          {
                                                                                                                                             addr592:
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             loop2:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                while(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(_loc16_ && param2)
                                                                                                                                                   {
                                                                                                                                                      break loop2;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc16_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(_loc17_)
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
                                                                                                                                                   if(_loc17_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         addr599:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr598:
                                                                                                                                                   }
                                                                                                                                                   while(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         param1.fraction = _loc15_;
                                                                                                                                                         addr560:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            §§push(param1.normal);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               addr543:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  addr544:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                     addr545:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr546:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           addr547:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop19;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                                §§goto(addr592);
                                                                                                                                             }
                                                                                                                                             return §§pop();
                                                                                                                                             addr593:
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr599);
                                                                                                                                 }
                                                                                                                                 §§goto(addr598);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr624:
                                                                                                                        }
                                                                                                                        §§goto(addr593);
                                                                                                                     }
                                                                                                                     §§goto(addr624);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr625);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr427);
                                                                                                   }
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                                §§goto(addr427);
                                                                                             }
                                                                                             addr405:
                                                                                             return false;
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§goto(addr318);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr219);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr122);
               }
               §§goto(addr66);
            }
            §§goto(addr56);
         }
         §§goto(addr79);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(!(_loc6_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(!_loc6_)
            {
               §§push(this.§[N§.x);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr44:
                     §§push(_loc3_.col2.x);
                     if(!_loc6_)
                     {
                        addr49:
                        §§push(§§pop() * this.§[N§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     addr58:
                     var _loc4_:Number = §§pop();
                     §§push(param2.position.y);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(_loc3_.col1.y);
                        if(!_loc6_)
                        {
                           §§push(this.§[N§.x);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr107);
                        }
                        addr112:
                        §§push(_loc3_.col2.y);
                        if(_loc7_ || _loc3_)
                        {
                           addr107:
                           §§push(§§pop() * this.§[N§.y);
                        }
                        §§push(§§pop() + (§§pop() + §§pop()));
                        if(!(_loc6_ && this))
                        {
                           addr120:
                           §§push(Number(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        if(_loc7_)
                        {
                           §§push(param1.§&1§);
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              §§push(§§pop() - b2internal::>!M);
                           }
                           §§push(_loc5_);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() - b2internal::>!M);
                           }
                           §§pop().Set(§§pop(),§§pop());
                        }
                        do
                        {
                           param1.§3!E§.Set(_loc4_ + b2internal::>!M,_loc5_ + b2internal::>!M);
                        }
                        while(_loc6_ && param2);
                        
                        return;
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr58);
               }
               §§goto(addr49);
            }
            §§goto(addr44);
         }
         §§goto(addr58);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc4_ || param2)
               {
                  §§push(§§pop() * b2internal::>!M);
                  if(!_loc3_)
                  {
                     addr144:
                     §§push(§§pop() * b2internal::>!M);
                  }
               }
               §§pop().§#!3§ = §§pop();
               do
               {
                  param1.center.SetV(this.§[N§);
                  do
                  {
                     §§push(param1);
                     §§push(param1.§#!3§);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§push(0.5);
                     if(!_loc3_)
                     {
                        §§push(§§pop() * b2internal::>!M);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() * b2internal::>!M);
                           if(!_loc3_)
                           {
                              addr46:
                              §§push(this.§[N§.x);
                              if(!_loc3_)
                              {
                                 §§push(this.§[N§);
                                 if(_loc4_ || param2)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc4_)
                                    {
                                       addr91:
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr83:
                                          §§push(this.§[N§.y);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() * this.§[N§.y);
                                          }
                                       }
                                       §§push(§§pop() * (§§pop() + §§pop()));
                                       continue;
                                    }
                                    §§goto(addr91);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr91);
                           }
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr46);
                  }
                  while(§§pop().I = §§pop(), !(_loc4_ || this));
                  
               }
               while(_loc3_ && this);
               
               return;
               addr147:
            }
            §§goto(addr144);
         }
         §§goto(addr147);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§#@§(param3,this.§[N§);
         §§push(b2Math.§,w§(param1,_loc5_));
         if(!(_loc11_ && param1))
         {
            §§push(param2);
            if(_loc12_ || this)
            {
               §§push(§§pop() - §§pop());
               if(_loc12_ || this)
               {
                  §§push(-§§pop());
                  if(_loc12_ || this)
                  {
                  }
                  addr62:
                  var _loc6_:*;
                  §§push(_loc6_ = §§pop());
                  if(_loc12_ || this)
                  {
                     if(§§pop() < -b2internal::>!M + Number.MIN_VALUE)
                     {
                        if(!_loc11_)
                        {
                           return 0;
                        }
                        addr100:
                        §§push(Math.PI * b2internal::>!M);
                        if(!(_loc11_ && param2))
                        {
                           addr111:
                           §§push(§§pop() * b2internal::>!M);
                           if(_loc12_)
                           {
                              §§goto(addr115);
                           }
                           else
                           {
                              addr126:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc6_);
                        if(_loc12_)
                        {
                           §§push(§§pop() * _loc6_);
                           if(!_loc11_)
                           {
                              addr135:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           if(_loc12_)
                           {
                              §§push(_loc7_);
                              if(!_loc11_)
                              {
                                 §§push(§§pop() * (Math.asin(_loc6_ / b2internal::>!M) + Math.PI / 2));
                                 if(!_loc11_)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc11_ && this))
                                    {
                                       §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                       if(!(_loc11_ && param3))
                                       {
                                          §§goto(addr186);
                                       }
                                       §§goto(addr218);
                                    }
                                    addr186:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc11_ && param3))
                                    {
                                       addr194:
                                       §§push(Number(§§pop()));
                                       if(_loc12_ || this)
                                       {
                                          _loc9_ = §§pop();
                                          addr203:
                                          §§push(-2 / 3);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                             if(_loc12_)
                                             {
                                                addr218:
                                                §§push(§§pop() / _loc9_);
                                                if(!_loc11_)
                                                {
                                                   addr221:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                    }
                                    var _loc10_:* = §§pop();
                                    if(_loc12_ || param3)
                                    {
                                       §§push(param4);
                                       §§push(_loc5_.x);
                                       if(_loc12_ || param3)
                                       {
                                          §§push(param1.x);
                                          if(!(_loc11_ && param2))
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
                                          if(_loc12_ || param1)
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
                                       while(_loc11_ && param3);
                                       
                                    }
                                    return _loc9_;
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr135);
                     }
                     else
                     {
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           if(§§pop() > b2internal::>!M)
                           {
                              if(!_loc11_)
                              {
                                 param4.SetV(_loc5_);
                                 if(_loc12_)
                                 {
                                    §§goto(addr100);
                                 }
                                 else
                                 {
                                    addr116:
                                    §§push(b2internal::>!M * b2internal::>!M);
                                    if(_loc12_ || param1)
                                    {
                                       §§goto(addr126);
                                    }
                                 }
                                 §§goto(addr100);
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                     addr115:
                     return §§pop();
                  }
                  §§goto(addr111);
               }
               §§goto(addr62);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr62);
      }
      
      public function §'!Y§() : b2Vec2
      {
         return this.§[N§;
      }
      
      public function §?!v§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[N§.SetV(param1);
         }
      }
      
      public function §%<§() : Number
      {
         return b2internal::>!M;
      }
      
      public function §0!J§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §>!M§ = param1;
         }
      }
   }
}
