package §[R§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var § #L§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.localCenter = new b2Vec2();
            while(true)
            {
               this.c0 = new b2Vec2();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  this.c = new b2Vec2();
                  while(true)
                  {
                     super();
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
            }
            addr105:
         }
         loop1:
         do
         {
            this.c.SetV(param1.c);
            loop2:
            while(true)
            {
               this.a0 = param1.a0;
               while(!_loc3_)
               {
                  this.a = param1.a;
                  while(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        this.§ #L§ = param1.§ #L§;
                        if(!(_loc3_ && _loc2_))
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop2;
                  }
               }
               §§goto(addr105);
            }
         }
         while(_loc3_ && _loc2_);
         
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
                  while(true)
                  {
                     _loc1_.a0 = this.a0;
                     addr71:
                     while(_loc2_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
                  addr48:
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.§ #L§ = this.§ #L§;
                     addr65:
                     if(!(_loc2_ || _loc2_))
                     {
                        while(_loc2_)
                        {
                           §§goto(addr48);
                           §§goto(addr65);
                        }
                        §§goto(addr71);
                        addr46:
                     }
                     return _loc1_;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.a = this.a;
            §§goto(addr46);
         }
      }
      
      public function GetTransform(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1.position);
            if(!(_loc6_ && this))
            {
               §§push(1);
               if(!_loc6_)
               {
                  §§push(param2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.c0);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop().x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(this.c);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_)
                                          {
                                             addr89:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                addr97:
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   addr109:
                                                   addr108:
                                                   addr107:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc6_)
                                                   {
                                                      addr112:
                                                      §§push(this.c0.y);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr125:
                                                            §§push(param2);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               addr133:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   §§pop().y = §§pop();
                                                   addr139:
                                                   §§push(1 - param2);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.a0);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr156:
                                                            §§push(param2);
                                                            if(_loc5_)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() * this.a);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc5_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            §§push(param1.R);
                                                            if(!_loc6_)
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
                                                                  addr316:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr317:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        addr319:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr320:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.localCenter);
                                                                              addr322:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr323:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr324:
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
                                                               addr314:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.position);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(param1.position);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(this.localCenter);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr264:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr278:
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(this.localCenter);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr293:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     addr303:
                                                                                                                     §§push(§§pop() - (§§pop() + §§pop()));
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr317);
                                                                                                                     }
                                                                                                                     §§goto(addr343);
                                                                                                                  }
                                                                                                                  §§goto(addr337);
                                                                                                               }
                                                                                                               §§goto(addr341);
                                                                                                            }
                                                                                                            §§goto(addr340);
                                                                                                         }
                                                                                                         §§goto(addr339);
                                                                                                      }
                                                                                                      §§goto(addr323);
                                                                                                   }
                                                                                                   §§goto(addr293);
                                                                                                }
                                                                                                §§goto(addr336);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                              §§goto(addr324);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr316);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr314);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr125);
                                          }
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr109);
               }
               §§goto(addr108);
            }
            §§goto(addr107);
         }
         §§goto(addr109);
      }
      
      public function §?!'§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§ #L§);
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
                        while(true)
                        {
                           §§pop();
                           loop24:
                           while(true)
                           {
                              §§push(1 - this.§ #L§);
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!_loc4_)
                                 {
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc3_ || _loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ #L§);
                                                if(_loc3_ || param1)
                                                {
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr275:
                                                      §§push(§§pop() / (1 - this.§ #L§));
                                                      if(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         addr278:
                                                      }
                                                   }
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
                                                            addr209:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr210:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr211:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.c0);
                                                                     addr213:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr214:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           addr215:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr216:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.c);
                                                                                 addr218:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr219:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr220:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr221:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             continue loop6;
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
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop24;
                                                         }
                                                         §§goto(addr90);
                                                      }
                                                   }
                                                }
                                                §§goto(addr275);
                                                continue loop24;
                                             }
                                             continue loop1;
                                             addr247:
                                          }
                                          §§goto(addr278);
                                       }
                                    }
                                    return;
                                    addr237:
                                 }
                                 continue;
                              }
                              §§goto(addr247);
                           }
                           continue loop0;
                        }
                        addr299:
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr299);
               }
            }
         }
         §§goto(addr41);
      }
   }
}
