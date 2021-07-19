package §7q§
{
   import §!4§.b2AABB;
   import §!4§.b2RayCastInput;
   import §!4§.b2RayCastOutput;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var §7]§:b2Vec2;
      
      public function b2CircleShape(param1:Number = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§7]§ = new b2Vec2();
            while(true)
            {
               super();
               while(_loc3_ || this)
               {
                  §2!]§ = b2internal::,!#;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        §'m§ = param1;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Shape = new b2CircleShape();
         if(_loc2_)
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
         if(_loc3_ || _loc2_)
         {
            super.Set(param1);
            if(!_loc4_)
            {
               §§goto(addr41);
            }
            §§goto(addr45);
         }
         addr41:
         if(param1 is b2CircleShape)
         {
            addr45:
            _loc2_ = param1 as b2CircleShape;
            if(!(_loc4_ && param1))
            {
               this.§7]§.SetV(_loc2_.§7]§);
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
               §§push(this.§7]§.x);
               if(_loc6_ || param1)
               {
                  addr63:
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && this))
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc6_)
                     {
                        §§push(§§pop() * this.§7]§.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     addr71:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(param1.position.y);
                  if(!(_loc7_ && param2))
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(this.§7]§.x);
                        if(!(_loc7_ && param1))
                        {
                           addr126:
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              §§push(_loc3_.col2.y);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() * this.§7]§.y);
                              }
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              addr129:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(param2.x);
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    §§push(§§pop() - §§pop());
                                    addr249:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    addr193:
                                    if(!(_loc6_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param2.y);
                                    if(_loc6_ || this)
                                    {
                                       §§push(_loc5_);
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          while(!(_loc7_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                             loop6:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc7_ && param1)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc6_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr190:
                                                   addr190:
                                                   §§goto(addr193);
                                                   §§push(b2internal::'m * b2internal::'m);
                                                }
                                                addr200:
                                                return §§pop() <= §§pop();
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr249);
                                          if(_loc7_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr190);
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                              }
                           }
                           §§goto(addr232);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr129);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr63);
         }
         §§goto(addr71);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc4_:b2Mat22 = param3.R;
         §§push(param3.position.x);
         if(_loc16_)
         {
            §§push(_loc4_.col1.x);
            if(_loc16_ || this)
            {
               §§push(this.§7]§.x);
               if(_loc16_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc17_)
                  {
                     addr50:
                     §§push(_loc4_.col2.x);
                     if(_loc16_)
                     {
                        addr59:
                        §§push(§§pop() + §§pop() * this.§7]§.y);
                     }
                     §§goto(addr59);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc17_ && this))
                  {
                     addr68:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param3.position.y);
                  if(!(_loc17_ && param2))
                  {
                     §§push(_loc4_.col1.y);
                     if(!_loc17_)
                     {
                        §§push(this.§7]§.x);
                        if(!(_loc17_ && param2))
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc17_ && this))
                           {
                              addr103:
                              §§push(_loc4_.col2.y);
                              if(!_loc17_)
                              {
                                 addr108:
                                 §§push(§§pop() * this.§7]§.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc16_ || this)
                           {
                              addr122:
                              var _loc6_:Number = §§pop();
                              §§push(param2.p1.x);
                              if(!(_loc17_ && param1))
                              {
                                 §§push(§§pop() - _loc5_);
                                 if(_loc16_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              if(!(_loc17_ && param3))
                              {
                                 §§push(param2.p1.y);
                                 if(!_loc17_)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc17_ && param2))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc17_)
                                          {
                                             _loc8_ = §§pop();
                                             addr166:
                                             §§push(_loc7_);
                                             if(_loc16_)
                                             {
                                                addr169:
                                                §§push(_loc7_);
                                                if(_loc16_)
                                                {
                                                   addr172:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc17_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(§§pop() * _loc8_);
                                                         if(_loc16_ || this)
                                                         {
                                                            addr202:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_)
                                                            {
                                                               §§push(b2internal::'m * b2internal::'m);
                                                            }
                                                            var _loc9_:Number = §§pop();
                                                            §§push(param2.p2.x);
                                                            if(!(_loc17_ && param3))
                                                            {
                                                               §§push(§§pop() - param2.p1.x);
                                                               if(!(_loc17_ && param2))
                                                               {
                                                                  addr224:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(param2.p2.y);
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop() - param2.p1.y);
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc7_);
                                                               if(_loc16_ || param1)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc17_ && param2))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc17_ && param2))
                                                                     {
                                                                        addr263:
                                                                        §§push(_loc8_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr268:
                                                                           §§push(§§pop() + §§pop() * _loc11_);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                     var _loc12_:* = §§pop();
                                                                     §§push(_loc10_);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              addr282:
                                                                              §§push(_loc11_);
                                                                              if(!(_loc17_ && param2))
                                                                              {
                                                                                 addr292:
                                                                                 §§push(§§pop() + §§pop() * _loc11_);
                                                                                 if(!(_loc17_ && param1))
                                                                                 {
                                                                                    addr310:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(!(_loc17_ && this))
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc9_);
                                                                                             if(_loc16_ || param3)
                                                                                             {
                                                                                                addr343:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr346:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(§§pop() < 0);
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc16_ || param2)
                                                                                                   {
                                                                                                      addr369:
                                                                                                      §§pop();
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() < Number.MIN_VALUE);
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               addr380:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc16_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr389);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(_loc12_);
                                                                                                               if(!(_loc17_ && param2))
                                                                                                               {
                                                                                                                  §§push(-(§§pop() + Math.sqrt(_loc14_)));
                                                                                                                  if(_loc16_ || param3)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr411:
                                                                                                                  var _loc15_:* = §§pop();
                                                                                                                  if(!(_loc17_ && param1))
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
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(!(_loc16_ || param2))
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       §§push(param2.§!!O§);
                                                                                                                                       if(!(_loc17_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * _loc13_);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             if(_loc17_ && param2)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr574:
                                                                                                                                             §§push(§§pop() <= §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(false);
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc16_ || param1)
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      addr436:
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                return §§pop();
                                                                                                                                                §§goto(addr574);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          if(_loc16_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                          §§goto(addr580);
                                                                                                                                       }
                                                                                                                                       addr597:
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       if(!(_loc16_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       param1.fraction = _loc15_;
                                                                                                                                       loop8:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.normal);
                                                                                                                                          loop9:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             if(!(_loc17_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   addr536:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr537:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr535:
                                                                                                                                             }
                                                                                                                                             loop13:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                loop14:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.normal);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(!(_loc17_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr502:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     addr505:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     if(_loc16_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr535);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr536);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr537);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr502);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr505);
                                                                                                                                                      addr522:
                                                                                                                                                      §§push(param1.normal);
                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                      {
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 addr623:
                                                                                                                              }
                                                                                                                              §§goto(addr575);
                                                                                                                           }
                                                                                                                           §§goto(addr623);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr577);
                                                                                                               }
                                                                                                               §§goto(addr411);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr389);
                                                                                                         }
                                                                                                         §§goto(addr411);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   addr389:
                                                                                                   return false;
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc16_ || param2)
                                                {
                                                }
                                             }
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr122);
               }
               §§goto(addr59);
            }
            §§goto(addr50);
         }
         §§goto(addr68);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2Mat22 = param2.R;
         §§push(param2.position.x);
         if(_loc6_ || this)
         {
            §§push(_loc3_.col1.x);
            if(_loc6_)
            {
               §§push(this.§7]§.x);
               if(_loc6_)
               {
                  §§goto(addr53);
               }
               §§push(§§pop() + §§pop());
            }
            addr53:
            §§push(§§pop() * §§pop());
            if(_loc6_)
            {
               §§push(_loc3_.col2.x);
               if(_loc6_)
               {
                  §§push(§§pop() * this.§7]§.y);
               }
            }
            §§push(§§pop() + §§pop());
            if(!_loc6_)
            {
            }
            §§goto(addr57);
         }
         addr57:
         var _loc4_:Number = §§pop();
         §§push(param2.position.y);
         if(_loc6_)
         {
            §§push(_loc3_.col1.y);
            if(!(_loc7_ && this))
            {
               §§push(this.§7]§.x);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     addr96:
                     §§push(_loc3_.col2.y);
                     if(!(_loc7_ && param1))
                     {
                        addr106:
                        §§push(§§pop() * this.§7]§.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc6_ || this)
                  {
                  }
                  §§goto(addr120);
               }
               §§goto(addr106);
            }
            §§goto(addr96);
         }
         addr120:
         var _loc5_:Number = §§pop();
         if(_loc6_ || param1)
         {
            §§push(param1.§?`§);
            §§push(_loc4_);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() - b2internal::'m);
            }
            §§push(_loc5_);
            if(_loc6_)
            {
               §§push(§§pop() - b2internal::'m);
            }
            §§pop().Set(§§pop(),§§pop());
         }
         do
         {
            param1.§[O§.Set(_loc4_ + b2internal::'m,_loc5_ + b2internal::'m);
         }
         while(_loc7_ && param1);
         
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(param1);
            §§push(param2);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * b2Settings.b2_pi);
               if(_loc3_)
               {
                  addr144:
                  §§push(§§pop() * b2internal::'m);
                  if(!_loc4_)
                  {
                     addr148:
                     §§push(§§pop() * b2internal::'m);
                  }
                  §§pop().§9h§ = §§pop();
                  while(true)
                  {
                     param1.center.SetV(this.§7]§);
                     loop1:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(param1);
                           §§push(param1.§9h§);
                           if(_loc3_ || this)
                           {
                              §§push(0.5);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * b2internal::'m);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() * b2internal::'m);
                                    if(_loc3_ || param2)
                                    {
                                       addr55:
                                       §§push(this.§7]§.x);
                                       if(!_loc4_)
                                       {
                                          §§push(this.§7]§);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc4_ && this))
                                                {
                                                   addr105:
                                                   §§push(this.§7]§.y);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr100:
                                                      §§push(§§pop() * this.§7]§.y);
                                                   }
                                                   §§pop().§5!W§ = §§pop() * (§§pop() + (§§pop() + §§pop()));
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr105);
                                             }
                                             §§goto(addr100);
                                          }
                                       }
                                    }
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr55);
                           }
                           §§goto(addr105);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr148);
            }
            §§goto(addr144);
         }
         §§goto(addr119);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§,p§(param3,this.§7]§);
         §§push(b2Math.§[!N§(param1,_loc5_));
         if(_loc12_ || this)
         {
            §§push(param2);
            if(_loc12_ || this)
            {
               §§push(§§pop() - §§pop());
               if(_loc12_)
               {
                  addr48:
                  §§push(-§§pop());
                  if(!(_loc11_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc12_ || param2)
            {
               if(§§pop() < -b2internal::'m + Number.MIN_VALUE)
               {
                  if(_loc12_ || param3)
                  {
                     return 0;
                  }
                  addr100:
                  param4.SetV(_loc5_);
                  if(!_loc11_)
                  {
                     §§push(Math.PI * b2internal::'m);
                     if(_loc12_)
                     {
                        §§push(§§pop() * b2internal::'m);
                        if(_loc12_ || param3)
                        {
                           §§goto(addr120);
                        }
                        else
                        {
                           addr131:
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  else
                  {
                     addr121:
                     §§push(b2internal::'m * b2internal::'m);
                     if(!(_loc11_ && param2))
                     {
                        §§goto(addr131);
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     §§push(§§pop() * _loc6_);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  if(_loc12_ || param3)
                  {
                     §§push(_loc7_);
                     if(!(_loc11_ && param2))
                     {
                        §§push(§§pop() * (Math.asin(_loc6_ / b2internal::'m) + Math.PI / 2));
                        if(!(_loc11_ && param1))
                        {
                           §§push(_loc6_);
                           if(_loc12_)
                           {
                              §§push(§§pop() * Math.sqrt(_loc7_ - _loc8_));
                              if(!_loc11_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc12_ || param3)
                                 {
                                    addr204:
                                    §§push(Number(§§pop()));
                                    if(_loc12_ || param1)
                                    {
                                       _loc9_ = §§pop();
                                       addr213:
                                       §§push(-2 / 3);
                                       if(_loc12_ || this)
                                       {
                                       }
                                       §§goto(addr247);
                                    }
                                 }
                                 §§push(§§pop() * Math.pow(_loc7_ - _loc8_,1.5));
                                 if(_loc12_ || param2)
                                 {
                                    addr238:
                                    §§push(§§pop() / _loc9_);
                                    if(_loc12_ || param2)
                                    {
                                    }
                                    §§goto(addr247);
                                 }
                                 addr247:
                                 var _loc10_:* = §§pop();
                                 if(!_loc11_)
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
                                       if(!(_loc11_ && param2))
                                       {
                                          §§push(param1.y);
                                          if(_loc12_ || param1)
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
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr238);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr213);
               }
               else
               {
                  §§push(_loc6_);
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop() > b2internal::'m)
                     {
                        if(!_loc11_)
                        {
                           §§goto(addr100);
                        }
                     }
                     §§goto(addr121);
                  }
               }
            }
            addr120:
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function §#B§() : b2Vec2
      {
         return this.§7]§;
      }
      
      public function §8&§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7]§.SetV(param1);
         }
      }
      
      public function § l§() : Number
      {
         return b2internal::'m;
      }
      
      public function §6!!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §'m§ = param1;
         }
      }
   }
}
