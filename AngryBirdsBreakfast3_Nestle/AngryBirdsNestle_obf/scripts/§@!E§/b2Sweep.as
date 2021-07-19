package §@!E§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §+!U§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.localCenter = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.c0 = new b2Vec2();
            do
            {
               this.c = new b2Vec2();
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
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
               while(!(_loc3_ && this))
               {
                  this.a = param1.a;
                  loop4:
                  while(!(_loc3_ && param1))
                  {
                     this.§+!U§ = param1.§+!U§;
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     addr35:
                     if(_loc2_ || param1)
                     {
                        addr42:
                        if(_loc3_ && this)
                        {
                           while(true)
                           {
                              this.c.SetV(param1.c);
                              addr92:
                              while(true)
                              {
                                 this.a0 = param1.a0;
                                 break loop4;
                                 §§goto(addr35);
                              }
                              §§goto(addr42);
                           }
                           addr109:
                        }
                        return;
                     }
                     §§goto(addr92);
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc3_ || _loc2_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
         }
         loop0:
         while(true)
         {
            _loc1_.c0.SetV(this.c0);
            do
            {
               _loc1_.c.SetV(this.c);
               while(true)
               {
                  _loc1_.a0 = this.a0;
                  addr79:
                  while(!(_loc2_ && this))
                  {
                     _loc1_.a = this.a;
                     continue loop0;
                  }
               }
            }
            while(_loc2_);
            
            return _loc1_;
         }
      }
      
      public function §%X§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1.position);
            if(_loc5_ || this)
            {
               §§push(1);
               if(!_loc6_)
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc6_)
                     {
                        §§push(this.c0);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop().x);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(this.c);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             addr79:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr94:
                                                   addr93:
                                                   addr92:
                                                   addr90:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc5_)
                                                   {
                                                      addr97:
                                                      §§push(this.c0.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr102:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr105:
                                                            §§push(param2);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr113:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                      }
                                                      §§goto(addr113);
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§push(1 - param2);
                                                if(!_loc6_)
                                                {
                                                   §§push(this.a0);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc5_ || param2)
                                                         {
                                                            addr139:
                                                            §§push(§§pop() * this.a);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc5_)
                                                         {
                                                         }
                                                         addr146:
                                                         var _loc3_:* = §§pop();
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(param1.R);
                                                            if(!_loc6_)
                                                            {
                                                               §§pop().Set(_loc3_);
                                                               addr170:
                                                               §§push(param1.R);
                                                            }
                                                            var _loc4_:b2Mat22 = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               §§push(param1.position);
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(param1.position);
                                                                  addr306:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr307:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        addr309:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr310:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.localCenter);
                                                                              addr312:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr313:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr314:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_.col2);
                                                                                       addr326:
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
                                                                                                      addr332:
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
                                                               addr304:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.position);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(param1.position);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(_loc4_.col1);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                addr236:
                                                                                                §§push(_loc4_.col2);
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ || param2)
                                                                                                      {
                                                                                                         if(!(_loc6_ && param2))
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(this.localCenter);
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc5_ || param2)
                                                                                                                  {
                                                                                                                     addr282:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc5_ || param1)
                                                                                                                     {
                                                                                                                        addr291:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr314);
                                                                                                                     }
                                                                                                                     §§goto(addr333);
                                                                                                                  }
                                                                                                                  §§goto(addr330);
                                                                                                               }
                                                                                                               §§goto(addr329);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr327);
                                                                                                      }
                                                                                                      §§goto(addr331);
                                                                                                   }
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                §§goto(addr326);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr312);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              §§goto(addr236);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr309);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr306);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr146);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr97);
                                          }
                                          §§goto(addr102);
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr94);
               }
               §§goto(addr93);
            }
            §§goto(addr92);
         }
         §§goto(addr90);
      }
      
      public function §!&§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = NaN;
         if(_loc3_)
         {
            §§push(this.§+!U§);
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
                           addr300:
                           while(true)
                           {
                              §§push(1 - this.§+!U§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!_loc4_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(this.§+!U§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(1 - this.§+!U§);
                                                }
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() / §§pop());
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr21:
                                       return;
                                       addr230:
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr230);
                  }
               }
            }
         }
         §§goto(addr210);
      }
   }
}
