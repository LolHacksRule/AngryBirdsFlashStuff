package §6!^§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §6!0§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.localCenter = new b2Vec2();
            while(true)
            {
               this.c0 = new b2Vec2();
            }
            addr75:
         }
         while(true)
         {
            this.c = new b2Vec2();
            for(; _loc2_ || _loc1_; super(),if(!_loc1_)
            {
               return;
            })
            {
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr75);
            }
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(true)
               {
                  this.c.SetV(param1.c);
                  addr81:
                  while(!_loc2_)
                  {
                     this.a0 = param1.a0;
                  }
               }
            }
            addr96:
         }
         while(true)
         {
            this.a = param1.a;
            while(true)
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr96);
            }
            if(_loc2_ && param1)
            {
               continue;
            }
            if(_loc3_)
            {
               break;
            }
            §§goto(addr81);
         }
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc2_ || this)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               loop1:
               while(true)
               {
                  _loc1_.c.SetV(this.c);
                  loop2:
                  while(true)
                  {
                     _loc1_.a0 = this.a0;
                     while(!_loc3_)
                     {
                        _loc1_.a = this.a;
                        while(!(_loc3_ && _loc2_))
                        {
                           continue loop2;
                           _loc1_.§6!0§ = this.§6!0§;
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop0;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §!"0§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1.position);
            if(_loc5_)
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push(param2);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc5_)
                     {
                        §§push(this.c0);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop().x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || param1)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    §§push(this.c);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   addr89:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc6_)
                                                   {
                                                      addr92:
                                                      addr94:
                                                      §§push(this.c0.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr97:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                         }
                                                         addr118:
                                                         §§pop().y = §§pop();
                                                         §§push(1 - param2);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.a0);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     addr147:
                                                                     §§push(§§pop() + §§pop() * this.a);
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                     }
                                                                     addr156:
                                                                     var _loc3_:* = §§pop();
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§push(param1.R);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§pop().Set(_loc3_);
                                                                           addr185:
                                                                           §§push(param1.R);
                                                                        }
                                                                        var _loc4_:b2Mat22 = §§pop();
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§push(param1.position);
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.position);
                                                                              addr302:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr303:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.col1);
                                                                                    addr305:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr326:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_.col2);
                                                                                                      addr336:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr337:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.localCenter);
                                                                                                            addr339:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               addr340:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr341:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr334:
                                                                                                }
                                                                                                addr342:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   addr343:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr325:
                                                                                       }
                                                                                       §§goto(addr334);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr300:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.position);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(param1.position);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(_loc4_.col1);
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§push(this.localCenter);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc5_ || param2)
                                                                                                         {
                                                                                                            addr266:
                                                                                                            §§push(_loc4_.col2);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr273:
                                                                                                                  §§push(this.localCenter);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr281:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr286:
                                                                                                                              §§push(§§pop() - (§§pop() + §§pop()));
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr303);
                                                                                                                           }
                                                                                                                           §§goto(addr326);
                                                                                                                        }
                                                                                                                        §§goto(addr337);
                                                                                                                     }
                                                                                                                     §§goto(addr340);
                                                                                                                  }
                                                                                                                  §§goto(addr339);
                                                                                                               }
                                                                                                               §§goto(addr281);
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         §§goto(addr286);
                                                                                                      }
                                                                                                      §§goto(addr341);
                                                                                                   }
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr302);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                               §§goto(addr156);
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      addr113:
                                                      §§goto(addr118);
                                                      §§push(§§pop() + §§pop() * this.c.y);
                                                   }
                                                   §§push(param2);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr113);
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr92);
                                          }
                                          §§goto(addr97);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §'a§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!_loc4_)
         {
            §§push(this.§6!0§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        loop20:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(1 - this.§6!0§);
                              if(_loc4_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       §§push(this.c0);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(1);
                                          addr182:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr183:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr184:
                                                while(true)
                                                {
                                                   §§push(this.c0);
                                                   addr186:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr187:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr188:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr189:
                                                            while(true)
                                                            {
                                                               §§push(this.c);
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr192:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr193:
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr194:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr195:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              addr217:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.§6!0§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§push(1 - this.§6!0§);
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop16;
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
                              continue loop20;
                           }
                        }
                        addr274:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr217);
                        }
                        break;
                        §§goto(addr205);
                     }
                     §§goto(addr21);
                  }
                  §§goto(addr274);
               }
            }
         }
         §§goto(addr177);
      }
   }
}
