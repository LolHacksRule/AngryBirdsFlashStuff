package §2"=§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §`!e§:Number;
      
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
            addr80:
         }
         loop1:
         do
         {
            this.c = new b2Vec2();
            while(!_loc1_)
            {
               super();
               if(!(_loc1_ && this))
               {
                  continue loop1;
               }
            }
            §§goto(addr80);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
               loop1:
               for(; !(_loc3_ && _loc2_); while(true)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     continue;
                  }
                  continue loop1;
               })
               {
                  this.c.SetV(param1.c);
                  while(true)
                  {
                     this.a0 = param1.a0;
                     addr66:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.a = param1.a;
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc2_ || _loc3_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               loop1:
               do
               {
                  _loc1_.c.SetV(this.c);
                  loop2:
                  while(true)
                  {
                     _loc1_.a0 = this.a0;
                     loop3:
                     while(_loc2_)
                     {
                        _loc1_.a = this.a;
                        while(_loc2_)
                        {
                           _loc1_.§`!e§ = this.§`!e§;
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc2_ || this)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
               while(!(_loc2_ || _loc3_));
               
            }
         }
         return _loc1_;
      }
      
      public function §?^§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param1.position);
            if(_loc5_)
            {
               §§push(1);
               if(_loc5_ || this)
               {
                  §§push(param2);
                  if(!(_loc6_ && param2))
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
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(this.c);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_ || param1)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   addr99:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr107:
                                                      addr109:
                                                      §§push(this.c0.y);
                                                      if(_loc5_)
                                                      {
                                                         addr112:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                         }
                                                         addr123:
                                                         §§pop().y = §§pop();
                                                         §§push(1 - param2);
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.a0);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc5_ || param2)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr149:
                                                                     §§push(§§pop() * this.a);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc5_)
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
                                                                           addr309:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr310:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.col1);
                                                                                 addr312:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr318:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr319:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                addr331:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr332:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.localCenter);
                                                                                                      addr334:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         addr335:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr336:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr317:
                                                                                    }
                                                                                    addr337:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr338:
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
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr185);
                                                               }
                                                               §§goto(addr156);
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr149);
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                      addr118:
                                                      §§goto(addr123);
                                                      §§push(§§pop() + §§pop() * this.c.y);
                                                   }
                                                   §§push(param2);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr118);
                                                }
                                                §§goto(addr123);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr107);
                                 }
                              }
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr107);
                  }
               }
            }
            §§goto(addr99);
         }
         §§goto(addr112);
      }
      
      public function §-9§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc3_ || this)
         {
            §§push(this.§`!e§);
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
                           loop4:
                           while(true)
                           {
                              §§push(1 - this.§`!e§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    loop6:
                                    while(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc3_)
                                          {
                                             §§push(this.§`!e§);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr296:
                                                §§push(§§pop() - §§pop());
                                                if(_loc3_)
                                                {
                                                   §§push(1 - this.§`!e§);
                                                }
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr307:
                                                   while(true)
                                                   {
                                                      §§push(this.c0);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         addr208:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr209:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§push(this.c0);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr223:
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr224:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.c);
                                                                              addr226:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr227:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr223:
                                                                     }
                                                                     addr228:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr229:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr224);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr219:
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                      }
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this);
                                                      §§push(1 - _loc2_);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(this.a0);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr78:
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(§§pop() * this.a);
                                                               }
                                                            }
                                                            §§pop().a0 = §§pop();
                                                            while(_loc3_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  this.§`!e§ = param1;
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  continue;
                                                                  continue;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr78);
                                                   }
                                                }
                                                addr296:
                                             }
                                             if(_loc4_ && param1)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() / §§pop());
                                             if(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr296);
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr296);
                                       }
                                       continue loop1;
                                    }
                                    return;
                                    addr262:
                                 }
                                 continue loop2;
                              }
                              §§goto(addr296);
                           }
                        }
                     }
                     §§goto(addr262);
                  }
               }
            }
         }
         §§goto(addr307);
      }
   }
}
