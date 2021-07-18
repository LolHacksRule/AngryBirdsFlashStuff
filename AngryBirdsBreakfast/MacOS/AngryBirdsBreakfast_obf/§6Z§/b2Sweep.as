package §6Z§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §+%§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.localCenter = new b2Vec2();
            loop0:
            while(true)
            {
               this.c0 = new b2Vec2();
               while(true)
               {
                  this.c = new b2Vec2();
                  while(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        super();
                        if(_loc1_ && this)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(!(_loc2_ && this))
               {
                  this.a = param1.a;
                  loop4:
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§+%§ = param1.§+%§;
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     addr41:
                     if(!_loc2_)
                     {
                        addr43:
                        if(!(_loc3_ || _loc2_))
                        {
                           while(true)
                           {
                              this.c.SetV(param1.c);
                              addr93:
                              while(true)
                              {
                                 this.a0 = param1.a0;
                                 break loop4;
                                 §§goto(addr41);
                              }
                              §§goto(addr43);
                           }
                           addr110:
                        }
                        return;
                     }
                     §§goto(addr93);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc2_ || _loc2_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               addr104:
               while(true)
               {
                  _loc1_.c.SetV(this.c);
                  addr58:
                  if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §#%§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1.position);
            if(_loc5_)
            {
               §§push(1);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(param2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc5_)
                     {
                        §§push(this.c0);
                        if(_loc5_)
                        {
                           §§push(§§pop().x);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || this)
                              {
                                 addr61:
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    addr64:
                                    §§push(this.c);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc6_)
                                             {
                                                addr92:
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   addr104:
                                                   addr103:
                                                   addr102:
                                                   addr100:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc6_)
                                                   {
                                                      addr109:
                                                      §§push(this.c0.y);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr125:
                                                            §§push(param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr132:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§push(1 - param2);
                                                if(_loc5_)
                                                {
                                                   §§push(this.a0);
                                                   if(_loc5_ || this)
                                                   {
                                                      addr160:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * this.a);
                                                         }
                                                      }
                                                      var _loc3_:Number = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§push(param1.R);
                                                         if(_loc5_ || param2)
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
                                                               addr320:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr331:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           addr330:
                                                                        }
                                                                        addr332:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_.col2);
                                                                           addr334:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(this.localCenter);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    addr350:
                                                                                    addr292:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    §§push(this.localCenter);
                                                                                    if(!(_loc5_ || param2))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       addr312:
                                                                                       §§pop().y = §§pop() - (§§pop() + §§pop() * §§pop());
                                                                                       addr310:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          return;
                                                                                          addr315:
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                              }
                                                                              addr351:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr352:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr325:
                                                                  }
                                                                  addr353:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            addr318:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.position);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(param1.position);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(this.localCenter);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                addr273:
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   §§push(_loc4_.col2);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         §§goto(addr292);
                                                                                                      }
                                                                                                      §§goto(addr310);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr310);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr331);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr330);
                                                                                 }
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr273);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr325);
                                                                        }
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr320);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr315);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr125);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr104);
               }
               §§goto(addr103);
            }
            §§goto(addr102);
         }
         §§goto(addr100);
      }
      
      public function §#!§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = NaN;
         if(_loc3_)
         {
            §§push(this.§+%§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop16:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(1 - this.§+%§);
                              if(_loc4_ && param1)
                              {
                                 break;
                              }
                              §§push(§§pop() > Number.MIN_VALUE);
                              if(!_loc4_)
                              {
                                 loop2:
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(param1);
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(this.§+%§);
                                             if(!(_loc4_ && param1))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc4_ && this))
                                                {
                                                   break loop4;
                                                }
                                                addr264:
                                                _loc2_ = §§pop();
                                                addr263:
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(this.c0);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      addr183:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         addr184:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(this.c0);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr196:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(this.c);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr207:
                                                                              addr156:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(this.c);
                                                                              if(_loc4_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 addr174:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(1 - _loc2_);
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       §§push(this.a0);
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr87:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * this.a);
                                                                                             }
                                                                                          }
                                                                                          §§pop().a0 = §§pop();
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§goto(addr87);
                                                                                    addr31:
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr207);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr124:
                                                                  §§push(this.c0);
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr151:
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr156);
                                                                              }
                                                                              §§goto(addr174);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop6;
                                                                           }
                                                                           addr209:
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(!_loc4_)
                                             {
                                                §§goto(addr263);
                                             }
                                             §§goto(addr264);
                                          }
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                                 return;
                                 addr228:
                              }
                              continue loop16;
                           }
                           §§goto(addr260);
                        }
                        addr284:
                     }
                     §§goto(addr228);
                  }
                  §§goto(addr284);
               }
            }
         }
         §§goto(addr210);
      }
   }
}
