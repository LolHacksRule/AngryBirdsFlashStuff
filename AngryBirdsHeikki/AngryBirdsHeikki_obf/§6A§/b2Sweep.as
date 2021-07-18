package §6A§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §#z§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.localCenter = new b2Vec2();
            while(true)
            {
               this.c0 = new b2Vec2();
            }
            addr79:
         }
         loop1:
         while(true)
         {
            this.c = new b2Vec2();
            while(_loc1_ || this)
            {
               super();
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr79);
            }
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               do
               {
                  this.c.SetV(param1.c);
                  continue loop0;
               }
               while(_loc3_ && this);
               
            }
         }
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc2_ || _loc3_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
            }
            addr115:
         }
         loop1:
         while(true)
         {
            _loc1_.c.SetV(this.c);
            while(true)
            {
               _loc1_.a0 = this.a0;
               continue loop1;
               addr63:
               for(; _loc2_ || this; _loc1_.§#z§ = this.§#z§,if(_loc2_)
               {
                  addr40:
                  if(!(_loc3_ && this))
                  {
                     return _loc1_;
                  }
                  continue loop1;
               })
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr115);
               }
            }
         }
      }
      
      public function §6V§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(param1.position);
            if(!(_loc5_ && param2))
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc5_)
                     {
                        §§push(this.c0);
                        if(!_loc5_)
                        {
                           §§push(§§pop().x);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc5_)
                              {
                                 addr52:
                                 §§push(param2);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(this.c);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr75:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_ || param1)
                                                {
                                                   addr95:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc6_)
                                                   {
                                                      addr98:
                                                      addr100:
                                                      §§push(this.c0.y);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr124:
                                                         addr108:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr111:
                                                            §§push(param2);
                                                            if(_loc6_ || this)
                                                            {
                                                               addr122:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                         }
                                                         §§pop().y = §§pop();
                                                         §§push(1 - param2);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(this.a0);
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr161:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() * this.a);
                                                                  }
                                                               }
                                                               var _loc3_:Number = §§pop();
                                                               if(_loc6_)
                                                               {
                                                                  §§push(param1.R);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§pop().Set(_loc3_);
                                                                     addr186:
                                                                     §§push(param1.R);
                                                                  }
                                                                  var _loc4_:b2Mat22 = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(param1.position);
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.position);
                                                                        addr332:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr333:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.col1);
                                                                              addr335:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr336:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.localCenter);
                                                                                    addr338:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr339:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr340:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_.col2);
                                                                                             addr352:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr353:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.localCenter);
                                                                                                   addr355:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      addr356:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr357:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr358:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               addr359:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr330:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.position);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(param1.position);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(_loc4_.col1);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                addr253:
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc4_.col2);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc5_ && param2))
                                                                                                         {
                                                                                                            addr284:
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(this.localCenter);
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     addr309:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr319:
                                                                                                                           §§push(§§pop() - (§§pop() + §§pop()));
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr333);
                                                                                                                           }
                                                                                                                           §§goto(addr359);
                                                                                                                        }
                                                                                                                        §§goto(addr339);
                                                                                                                     }
                                                                                                                     §§goto(addr353);
                                                                                                                  }
                                                                                                                  §§goto(addr356);
                                                                                                               }
                                                                                                               §§goto(addr355);
                                                                                                            }
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          §§goto(addr284);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr253);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr332);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr330);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc5_ && this)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr124);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr124);
                                             }
                                             §§goto(addr98);
                                          }
                                          §§goto(addr108);
                                       }
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr52);
                  }
               }
            }
            §§goto(addr95);
         }
         §§goto(addr124);
      }
      
      public function §3!Z§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§#z§);
            loop0:
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop24:
                        while(true)
                        {
                           §§pop();
                           addr290:
                           loop25:
                           while(true)
                           {
                              §§push(1 - this.§#z§);
                              if(_loc3_ || this)
                              {
                                 continue loop24;
                              }
                              while(true)
                              {
                                 §§push(1 - this.§#z§);
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addr269:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          §§push(this.c0);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(1);
                                             addr189:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr190:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§push(this.c0);
                                                      addr193:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr194:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr195:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr196:
                                                               while(true)
                                                               {
                                                                  §§push(this.c);
                                                                  addr198:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr200:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr201:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          loop20:
                                          while(_loc3_ || this)
                                          {
                                             §§push(this);
                                             §§push(1 - _loc2_);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(this.a0);
                                                if(_loc3_)
                                                {
                                                   addr77:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(§§pop() * this.a);
                                                      }
                                                   }
                                                   §§pop().a0 = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         continue loop25;
                                                      }
                                                      continue loop20;
                                                   }
                                                   continue loop25;
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr77);
                                          }
                                       }
                                    }
                                 }
                                 continue loop25;
                              }
                           }
                        }
                        addr289:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr227);
                        }
                        break;
                        §§goto(addr215);
                     }
                     §§goto(addr21);
                  }
                  §§goto(addr289);
               }
            }
         }
         §§goto(addr290);
      }
   }
}
