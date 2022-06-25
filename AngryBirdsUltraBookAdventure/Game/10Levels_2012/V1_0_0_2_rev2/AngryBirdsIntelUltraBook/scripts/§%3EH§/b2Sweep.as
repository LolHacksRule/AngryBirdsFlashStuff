package §>H§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §3J§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.localCenter = new b2Vec2();
            while(true)
            {
               this.c0 = new b2Vec2();
               while(!_loc1_)
               {
                  while(!(_loc1_ && this))
                  {
                     super();
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.c = new b2Vec2();
            §§goto(addr60);
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
               while(!(_loc2_ && _loc2_))
               {
                  this.c.SetV(param1.c);
                  loop2:
                  while(_loc3_)
                  {
                     this.a0 = param1.a0;
                     while(true)
                     {
                        this.a = param1.a;
                        while(!_loc2_)
                        {
                           this.§3J§ = param1.§3J§;
                           if(!_loc2_)
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§goto(addr53);
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!_loc3_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
         }
         while(true)
         {
            _loc1_.c0.SetV(this.c0);
            loop1:
            for(; _loc2_ || this; if(_loc2_ || this)
            {
               return _loc1_;
            })
            {
               _loc1_.c.SetV(this.c);
               while(true)
               {
                  _loc1_.a0 = this.a0;
                  while(!(_loc3_ && _loc2_))
                  {
                     _loc1_.a = this.a;
                     while(!(_loc3_ && _loc3_))
                     {
                        _loc1_.§3J§ = this.§3J§;
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §2!0§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §§push(param1.position);
            if(_loc5_)
            {
               §§push(1);
               if(!(_loc6_ && param1))
               {
                  §§push(param2);
                  if(!_loc6_)
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
                              if(!(_loc6_ && param1))
                              {
                                 addr61:
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(this.c);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_ || param2)
                                          {
                                             addr79:
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_)
                                             {
                                                addr82:
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr89:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc5_)
                                                   {
                                                      addr92:
                                                      §§push(this.c0.y);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr105:
                                                            §§push(param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr112:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr112);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr114:
                                                         §§push(1 - param2);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.a0);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr136:
                                                                  §§push(param2);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr139:
                                                                     §§push(§§pop() * this.a);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr145:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§push(param1.R);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§pop().Set(_loc3_);
                                                                        addr175:
                                                                        §§push(param1.R);
                                                                     }
                                                                     var _loc4_:b2Mat22 = §§pop();
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§push(param1.position);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.position);
                                                                           addr307:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr308:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.col1);
                                                                                 addr310:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr311:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       addr313:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr327:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.localCenter);
                                                                                                      addr329:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         addr330:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr331:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr326:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr333:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             addr332:
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr295:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.position);
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§push(param1.position);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc4_.col1);
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          if(!(_loc6_ && param2))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   §§push(_loc4_.col2);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(this.localCenter);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr271:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr282:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr311);
                                                                                                                        }
                                                                                                                        §§goto(addr333);
                                                                                                                     }
                                                                                                                     §§goto(addr332);
                                                                                                                  }
                                                                                                                  §§goto(addr330);
                                                                                                               }
                                                                                                               §§goto(addr329);
                                                                                                            }
                                                                                                            §§goto(addr327);
                                                                                                         }
                                                                                                         §§goto(addr331);
                                                                                                      }
                                                                                                      §§goto(addr271);
                                                                                                   }
                                                                                                   §§goto(addr326);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr271);
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 §§goto(addr310);
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr307);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr175);
                                                               }
                                                               §§goto(addr145);
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§goto(addr112);
                                                   }
                                                   §§goto(addr105);
                                                }
                                                §§goto(addr114);
                                             }
                                             §§goto(addr92);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr82);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr61);
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §]!W§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§3J§);
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
                        while(true)
                        {
                           §§pop();
                           addr321:
                           while(true)
                           {
                              §§push(1 - this.§3J§);
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop() > Number.MIN_VALUE);
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              §§push(this.§3J§);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc3_ && param1))
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr311:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       break loop5;
                                    }
                                    §§push(§§pop() / §§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       §§goto(addr311);
                                    }
                                 }
                                 addr301:
                              }
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
                                       addr216:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          addr217:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr218:
                                             while(true)
                                             {
                                                §§push(this.c0);
                                                addr220:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr221:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr222:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         addr223:
                                                         while(true)
                                                         {
                                                            §§push(this.c);
                                                            addr225:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr226:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr227:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr228:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        addr229:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           continue loop5;
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
                           }
                           else
                           {
                              §§goto(addr321);
                           }
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr321);
      }
   }
}
