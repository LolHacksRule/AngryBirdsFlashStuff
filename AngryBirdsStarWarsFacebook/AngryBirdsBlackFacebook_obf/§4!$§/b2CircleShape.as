package §4!$§
{
   import §3"5§.b2AABB;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §&!i§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!i§ = new b2Vec2();
         }
         loop0:
         do
         {
            super();
            while(true)
            {
               §%!9§ = b2internal::;!T;
               while(_loc2_ || _loc3_)
               {
                  § "^§ = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Shape = new b2CircleShape();
         if(!(_loc2_ && _loc1_))
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
                  addr40:
                  _loc2_ = param1 as b2CircleShape;
                  if(!(_loc4_ && param1))
                  {
                     this.§&!i§.SetV(_loc2_.§&!i§);
                  }
               }
               return;
            }
         }
         §§goto(addr40);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc7_)
         {
            §§push(_loc3_.col1.x);
            if(_loc7_ || param1)
            {
               §§push(this.§&!i§.x);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr49:
                     §§push(_loc3_.col2.x);
                     if(_loc7_)
                     {
                        addr54:
                        §§push(§§pop() * this.§&!i§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc6_)
                  {
                     addr63:
                     var _loc4_:* = Number(§§pop());
                     §§push(param1.position.y);
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc6_ && param2))
                        {
                           §§push(this.§&!i§.x);
                           if(!(_loc6_ && this))
                           {
                              addr117:
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * this.§&!i§.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 addr120:
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
                                    addr229:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop2:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop3:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             loop4:
                                             while(true)
                                             {
                                                §§push(param2.y);
                                                while(_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr211:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr212:
                                                         do
                                                         {
                                                            _loc5_ = §§pop();
                                                         }
                                                         while(!_loc6_);
                                                         
                                                         continue loop4;
                                                      }
                                                   }
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc7_ || this)
                                       {
                                          §§goto(addr140);
                                       }
                                       §§goto(addr183);
                                    }
                                    break;
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr200);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr63);
               }
               §§goto(addr54);
            }
            §§goto(addr49);
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
         if(_loc17_)
         {
            §§push(_loc4_.col1.x);
            if(_loc17_ || param2)
            {
               §§push(this.§&!i§.x);
               if(!_loc16_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc16_ && param2))
                  {
                     addr51:
                     §§push(_loc4_.col2.x);
                     if(_loc17_ || param2)
                     {
                        addr65:
                        §§push(§§pop() + §§pop() * this.§&!i§.y);
                     }
                     §§goto(addr65);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc16_)
                  {
                     addr70:
                     var _loc5_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!_loc16_)
                     {
                        §§push(_loc4_.col1.y);
                        if(!(_loc16_ && param3))
                        {
                           §§push(this.§&!i§.x);
                           if(_loc17_ || param1)
                           {
                              addr114:
                              §§push(§§pop() * §§pop());
                              if(_loc17_ || this)
                              {
                                 §§push(_loc4_.col2.y);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop() * this.§&!i§.y);
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc16_)
                              {
                                 addr117:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(param2.p1.x);
                              if(!_loc16_)
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(!_loc16_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              if(_loc17_ || param1)
                              {
                                 §§push(param2.p1.y);
                                 if(_loc17_)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc16_ && param3))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc16_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc17_ || param1)
                                          {
                                             _loc8_ = §§pop();
                                             addr162:
                                             §§push(_loc7_);
                                             if(!_loc16_)
                                             {
                                                §§push(_loc7_);
                                                if(_loc17_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc17_ || this)
                                                   {
                                                      addr176:
                                                      §§push(_loc8_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                         if(!(_loc16_ && this))
                                                         {
                                                            addr188:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc17_)
                                                            {
                                                               addr194:
                                                               §§push(§§pop() - b2internal:: "^ * b2internal:: "^);
                                                               if(!(_loc16_ && param3))
                                                               {
                                                                  addr202:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(param2.p2.x);
                                                            if(_loc17_ || param3)
                                                            {
                                                               §§push(§§pop() - param2.p1.x);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param2.p2.y);
                                                            if(_loc17_ || param2)
                                                            {
                                                               §§push(§§pop() - param2.p1.y);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc11_:* = §§pop();
                                                            §§push(_loc7_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc17_ || param3)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc17_)
                                                                     {
                                                                        addr257:
                                                                        §§push(§§pop() * _loc11_);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc16_ && param2)
                                                                     {
                                                                     }
                                                                     addr268:
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc10_);
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!(_loc16_ && param2))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc17_ || param2)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 addr296:
                                                                                 §§push(§§pop() * _loc11_);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 addr306:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc13_:* = §§pop();
                                                                           §§push(_loc12_);
                                                                           if(_loc17_ || param3)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(_loc17_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() * _loc9_);
                                                                                       if(!(_loc16_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!(_loc16_ && param3))
                                                                                          {
                                                                                             addr362:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              var _loc14_:* = §§pop();
                                                                              if(_loc17_ || param2)
                                                                              {
                                                                                 §§push(§§pop() < 0);
                                                                                 if(_loc17_ || this)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc17_ || param2)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             if(!(_loc16_ && this))
                                                                                             {
                                                                                                §§push(§§pop() < Number.MIN_VALUE);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr411:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§goto(addr415);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(_loc12_);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr419:
                                                                                                      §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                      if(_loc17_ || param2)
                                                                                                      {
                                                                                                         addr432:
                                                                                                         var _loc15_:* = Number(§§pop());
                                                                                                         if(!(_loc16_ && param1))
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
                                                                                                                           loop4:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc15_);
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(param2.§%#8§);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * _loc13_);
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       addr576:
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       loop16:
                                                                                                                                       while(!(_loc16_ && param2))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      loop17:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         addr597:
                                                                                                                                                         while(_loc17_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(_loc17_ || param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         continue loop1;
                                                                                                                                                      }
                                                                                                                                                      addr596:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                   }
                                                                                                                                                   addr620:
                                                                                                                                                }
                                                                                                                                                loop7:
                                                                                                                                                while(_loc17_ || param3)
                                                                                                                                                {
                                                                                                                                                   param1.fraction = _loc15_;
                                                                                                                                                   §§push(param1.normal);
                                                                                                                                                   loop8:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      loop9:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(_loc17_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr510:
                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                               if(!(_loc17_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr519:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr522:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc17_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr541:
                                                                                                                                                                              §§push(param1.normal);
                                                                                                                                                                              if(_loc17_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              addr556:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(!(_loc16_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(_loc17_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr510);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr519);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr522);
                                                                                                                                                                                 §§goto(addr541);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr557:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr494:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr494);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop7;
                                                                                                                                                                        addr532:
                                                                                                                                                                     }
                                                                                                                                                                     continue loop9;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr557);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr556);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr556);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             addr441:
                                                                                                                                             do
                                                                                                                                             {
                                                                                                                                                §§push(false);
                                                                                                                                             }
                                                                                                                                             while(_loc16_);
                                                                                                                                             
                                                                                                                                             return §§pop();
                                                                                                                                             while(_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             if(_loc17_ || this)
                                                                                                                                             {
                                                                                                                                                break loop2;
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                                 §§goto(addr576);
                                                                                                                              }
                                                                                                                              §§goto(addr596);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr584);
                                                                                                                  }
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr441);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                                §§goto(addr415);
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          addr415:
                                                                                          return false;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              §§goto(addr432);
                                                                           }
                                                                           §§goto(addr362);
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr268);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr162);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr70);
               }
               §§goto(addr65);
            }
            §§goto(addr51);
         }
         §§goto(addr70);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc6_ || param1)
         {
            §§push(_loc3_.col1.x);
            if(_loc6_)
            {
               §§push(this.§&!i§.x);
               if(!_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && param2))
                  {
                     addr48:
                     §§push(_loc3_.col2.x);
                     if(!_loc7_)
                     {
                        addr53:
                        §§push(§§pop() * this.§&!i§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc7_ && this))
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc6_)
                     {
                        §§push(this.§&!i§.x);
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc7_ && param2))
                           {
                              addr111:
                              §§push(_loc3_.col2.y);
                              if(_loc6_)
                              {
                                 addr116:
                                 §§push(§§pop() * this.§&!i§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr111);
                  }
                  addr125:
                  var _loc5_:Number = §§pop();
                  if(!(_loc7_ && this))
                  {
                     §§push(param1.§1!,§);
                     §§push(_loc4_);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop() - b2internal:: "^);
                     }
                     §§push(_loc5_);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop() - b2internal:: "^);
                     }
                     §§pop().Set(§§pop(),§§pop());
                     do
                     {
                        param1.§ D§.Set(_loc4_ + b2internal:: "^,_loc5_ + b2internal:: "^);
                     }
                     while(!_loc6_);
                     
                  }
                  return;
               }
               §§goto(addr53);
            }
            §§goto(addr48);
         }
         §§goto(addr66);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(!_loc3_)
               {
                  addr125:
                  §§push(§§pop() * b2internal:: "^);
                  if(!(_loc3_ && this))
                  {
                     addr144:
                     §§push(§§pop() * b2internal:: "^);
                  }
                  §§pop().§5"Z§ = §§pop();
                  do
                  {
                     param1.§+#K§.SetV(this.§&!i§);
                     do
                     {
                        §§push(param1);
                        §§push(param1.§5"Z§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§push(0.5);
                        if(_loc4_)
                        {
                           §§push(§§pop() * b2internal:: "^);
                           if(_loc4_ || _loc3_)
                           {
                              addr42:
                              §§push(§§pop() * b2internal:: "^);
                              if(_loc4_ || this)
                              {
                                 addr51:
                                 §§push(this.§&!i§.x);
                                 if(!_loc3_)
                                 {
                                    §§push(this.§&!i§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc3_)
                                       {
                                          addr91:
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_)
                                          {
                                             addr78:
                                             §§push(this.§&!i§.y);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() * this.§&!i§.y);
                                             }
                                          }
                                          §§push(§§pop() * (§§pop() + §§pop()));
                                          continue;
                                       }
                                       §§goto(addr91);
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr78);
                                 }
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr42);
                     }
                     while(§§pop().I = §§pop(), !(_loc4_ || _loc3_));
                     
                  }
                  while(!(_loc4_ || param2));
                  
                  return;
                  addr147:
               }
               §§goto(addr144);
            }
            §§goto(addr125);
         }
         §§goto(addr147);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§""$§(param3,this.§&!i§);
         §§push(b2Math.§+#>§(param1,_loc5_));
         if(_loc12_)
         {
            §§push(param2);
            if(_loc12_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc11_)
               {
                  §§push(-§§pop());
                  if(_loc12_ || param2)
                  {
                     addr46:
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(!_loc11_)
            {
               if(§§pop() < -b2internal:: "^ + Number.MIN_VALUE)
               {
                  if(_loc12_ || param3)
                  {
                     return 0;
                  }
                  addr90:
                  §§push(Math.PI * b2internal:: "^);
                  if(!_loc11_)
                  {
                     addr96:
                     §§push(§§pop() * b2internal:: "^);
                     if(!_loc11_)
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  §§push(_loc6_);
                  if(!_loc11_)
                  {
                     if(§§pop() > b2internal:: "^)
                     {
                        if(_loc12_ || param2)
                        {
                           param4.SetV(_loc5_);
                           if(!(_loc11_ && param2))
                           {
                              §§goto(addr90);
                           }
                           else
                           {
                              addr101:
                              §§push(b2internal:: "^ * b2internal:: "^);
                              if(_loc12_ || this)
                              {
                                 addr111:
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           §§push(_loc6_);
                           if(_loc12_)
                           {
                              §§push(§§pop() * _loc6_);
                              if(_loc12_)
                              {
                                 addr120:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              if(_loc12_)
                              {
                                 §§push(_loc7_);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() * (Math.asin(_loc6_ / b2internal:: "^) + Math.PI / 2));
                                    if(!_loc11_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc11_ && param2))
                                       {
                                          §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                                          if(_loc12_)
                                          {
                                             addr166:
                                             §§push(§§pop() + §§pop());
                                             if(_loc12_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc11_ && param2))
                                                {
                                                   _loc9_ = §§pop();
                                                   addr183:
                                                   §§push(-2 / 3);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                                      if(_loc12_ || param1)
                                                      {
                                                      }
                                                      addr217:
                                                      var _loc10_:Number = §§pop();
                                                   }
                                                   §§goto(addr216);
                                                }
                                             }
                                             §§push(_loc9_);
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(_loc12_ || param3)
                                          {
                                             addr216:
                                             if(!_loc11_)
                                             {
                                                §§push(param4);
                                                §§push(_loc5_.x);
                                                if(_loc12_ || this)
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
                                                   if(_loc12_ || param3)
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
                                          §§goto(addr217);
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr111);
            }
            §§goto(addr96);
         }
         §§goto(addr46);
      }
      
      public function §["s§() : b2Vec2
      {
         return this.§&!i§;
      }
      
      public function §[U§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!i§.SetV(param1);
         }
      }
      
      public function §[p§() : Number
      {
         return b2internal:: "^;
      }
      
      public function §>#X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            § "^§ = param1;
         }
      }
   }
}
