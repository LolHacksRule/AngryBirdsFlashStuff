package §9"§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §2g§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.localCenter = new b2Vec2();
         }
         loop0:
         do
         {
            this.c0 = new b2Vec2();
            while(true)
            {
               this.c = new b2Vec2();
               while(_loc1_ || _loc2_)
               {
                  super();
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc1_ || this));
         
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
               loop1:
               for(; _loc2_ || this; loop3:
               for(; _loc2_ || this; if(!(_loc3_ && _loc2_))
               {
                  return;
               })
               {
                  this.a0 = param1.a0;
                  while(true)
                  {
                     this.a = param1.a;
                     while(_loc2_ || _loc2_)
                     {
                        this.§2g§ = param1.§2g§;
                        if(_loc2_ || this)
                        {
                           continue loop3;
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.c.SetV(param1.c);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!_loc3_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               while(true)
               {
                  _loc1_.c.SetV(this.c);
                  addr80:
                  while(_loc2_)
                  {
                  }
                  continue loop0;
                  loop5:
                  while(_loc2_ || _loc2_)
                  {
                     _loc1_.§2g§ = this.§2g§;
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        return _loc1_;
                     }
                     addr71:
                     while(_loc2_)
                     {
                        _loc1_.a = this.a;
                        continue loop5;
                     }
                     §§goto(addr80);
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.a0 = this.a0;
            §§goto(addr71);
         }
      }
      
      public function §>B§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1.position);
            if(_loc5_ || _loc3_)
            {
               §§push(1);
               if(!(_loc6_ && this))
               {
                  §§push(param2);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.c0);
                        if(_loc5_)
                        {
                           §§push(§§pop().x);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    §§push(this.c);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_)
                                             {
                                                addr92:
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr99:
                                                   addr98:
                                                   addr97:
                                                   addr95:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr109:
                                                      §§push(this.c0.y);
                                                      if(_loc5_ || this)
                                                      {
                                                         addr117:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr120:
                                                            §§push(param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr123:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§push(1 - param2);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(this.a0);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr151:
                                                         §§push(param2);
                                                         if(_loc5_)
                                                         {
                                                            addr154:
                                                            §§push(§§pop() * this.a);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr160:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(param1.R);
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().Set(_loc3_);
                                                               addr185:
                                                               §§push(param1.R);
                                                            }
                                                            var _loc4_:b2Mat22 = §§pop();
                                                            if(_loc5_ || param2)
                                                            {
                                                               §§push(param1.position);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(param1.position);
                                                                  addr331:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr332:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        addr334:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr335:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.localCenter);
                                                                              addr337:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr338:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr339:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.col2);
                                                                                       addr351:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr352:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.localCenter);
                                                                                             addr354:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                addr355:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr356:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr357:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr358:
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
                                                               addr329:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.position);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(param1.position);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(this.localCenter);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr259:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      addr278:
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(this.localCenter);
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr300:
                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr309:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr332);
                                                                                                                     }
                                                                                                                     §§goto(addr358);
                                                                                                                  }
                                                                                                                  §§goto(addr335);
                                                                                                               }
                                                                                                               §§goto(addr355);
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         §§goto(addr352);
                                                                                                      }
                                                                                                      §§goto(addr356);
                                                                                                   }
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                             §§goto(addr357);
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr331);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr329);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr120);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr99);
               }
               §§goto(addr98);
            }
            §§goto(addr97);
         }
         §§goto(addr95);
      }
      
      public function §[d§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§2g§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(1 - this.§2g§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(this.§2g§);
                                                if(_loc4_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr267:
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      §§push(1 - this.§2g§);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(this.c0);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            addr186:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr187:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr188:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.c0);
                                                                     addr190:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr194:
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr195:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.c);
                                                                                 addr197:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr198:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr194:
                                                                        }
                                                                        addr199:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr200:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr201:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr267:
                                                }
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr267);
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr267);
                                          }
                                          continue loop0;
                                       }
                                       return;
                                       addr233:
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr267);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr233);
                  }
               }
            }
         }
         §§goto(addr86);
      }
   }
}
