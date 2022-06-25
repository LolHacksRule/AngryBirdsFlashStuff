package §>!8§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §#K§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.localCenter = new b2Vec2();
         }
         do
         {
            this.c0 = new b2Vec2();
            do
            {
               this.c = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc1_ && this);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!(_loc2_ || this));
         
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(true)
               {
                  this.c.SetV(param1.c);
                  loop3:
                  while(_loc2_ || _loc2_)
                  {
                     this.a = param1.a;
                     while(true)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr53:
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop3;
                        addr67:
                        this.§#K§ = param1.§#K§;
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        this.a0 = param1.a0;
                        continue loop3;
                        §§goto(addr53);
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc3_)
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
                  addr97:
                  while(!_loc2_)
                  {
                     _loc1_.a0 = this.a0;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §1?§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1.position);
            if(_loc6_ || param1)
            {
               §§push(1);
               if(_loc6_)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc5_ && param2))
                     {
                        §§push(this.c0);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop().x);
                           if(!_loc5_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc5_ && param1))
                              {
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§push(this.c);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_ || param2)
                                          {
                                             addr90:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                addr93:
                                                §§pop().x = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   addr105:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr113:
                                                      §§push(this.c0.y);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               addr128:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr128);
                                                         }
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                }
                                                addr130:
                                                §§push(1 - param2);
                                                if(_loc6_ || this)
                                                {
                                                   §§push(this.a0);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc6_)
                                                         {
                                                            addr158:
                                                            §§push(§§pop() + §§pop() * this.a);
                                                            if(!_loc5_)
                                                            {
                                                               addr161:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(param1.R);
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().Set(_loc3_);
                                                            addr187:
                                                            §§push(param1.R);
                                                         }
                                                         var _loc4_:b2Mat22 = §§pop();
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(param1.position);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(param1.position);
                                                               addr346:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr357:
                                                                        addr225:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           addr359:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr360:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr361:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.col2);
                                                                                    addr363:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr364:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          addr366:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             addr367:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr368:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr369:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
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
                                                                        §§push(_loc4_.col1);
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(!(_loc5_ && _loc3_))
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             addr283:
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(_loc4_.col2);
                                                                                                   if(_loc6_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         §§push(this.localCenter);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr317:
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  addr326:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        return;
                                                                                                                        addr331:
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr369);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr370:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr367);
                                                                                                            }
                                                                                                            §§goto(addr369);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr363);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                             §§goto(addr361);
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr364);
                                                                                 }
                                                                                 §§goto(addr368);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           §§goto(addr359);
                                                                        }
                                                                        §§goto(addr283);
                                                                     }
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr331);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§pop().y = §§pop();
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr93);
                  }
               }
            }
            §§goto(addr105);
         }
         §§goto(addr93);
      }
      
      public function §6!1§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc3_)
         {
            §§push(this.§#K§);
            loop0:
            while(true)
            {
               §§push(param1);
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              loop23:
                              while(true)
                              {
                                 §§push(1 - this.§#K§);
                                 if(!(_loc4_ && this))
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
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
                                             addr179:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr180:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr181:
                                                   while(true)
                                                   {
                                                      §§push(this.c0);
                                                      addr183:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr184:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr185:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr186:
                                                               while(true)
                                                               {
                                                                  §§push(this.c);
                                                                  addr188:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr189:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr190:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr191:
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
                                       }
                                    }
                                    continue loop23;
                                 }
                              }
                              §§push(§§pop() > Number.MIN_VALUE);
                              addr212:
                              continue loop2;
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc4_)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              while(§§pop())
                              {
                                 §§goto(addr225);
                              }
                              §§goto(addr21);
                              addr223:
                           }
                           addr289:
                        }
                        else
                        {
                           §§goto(addr223);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr289);
                  }
               }
            }
         }
         §§goto(addr174);
      }
   }
}
