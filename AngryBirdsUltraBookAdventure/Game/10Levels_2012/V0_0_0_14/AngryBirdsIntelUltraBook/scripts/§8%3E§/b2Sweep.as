package §8>§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §0p§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.localCenter = new b2Vec2();
            loop0:
            do
            {
               this.c0 = new b2Vec2();
               while(true)
               {
                  this.c = new b2Vec2();
                  while(_loc2_ || this)
                  {
                     super();
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(true)
               {
                  this.c.SetV(param1.c);
                  addr97:
                  while(true)
                  {
                     this.a0 = param1.a0;
                     continue loop0;
                  }
                  addr60:
                  if(_loc2_ || _loc3_)
                  {
                     this.§0p§ = param1.§0p§;
                     addr67:
                     if(_loc2_)
                     {
                        return;
                        addr51:
                     }
                     while(!(_loc3_ && param1))
                     {
                        if(_loc2_)
                        {
                           §§goto(addr60);
                        }
                        else
                        {
                           §§goto(addr97);
                        }
                     }
                     continue loop0;
                     addr35:
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc3_ || this)
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
                  while(!_loc2_)
                  {
                     _loc1_.a0 = this.a0;
                     while(_loc3_ || this)
                     {
                        _loc1_.a = this.a;
                        continue loop1;
                        if(_loc3_ || _loc3_)
                        {
                           return _loc1_;
                           addr58:
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §+!C§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            §§push(param1.position);
            if(!_loc6_)
            {
               §§push(1);
               if(_loc5_ || _loc3_)
               {
                  §§push(param2);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc5_ || this)
                     {
                        §§push(this.c0);
                        if(_loc5_)
                        {
                           §§push(§§pop().x);
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(!(_loc6_ && param2))
                                 {
                                    addr74:
                                    §§push(this.c);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_)
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr94:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr102:
                                                      addr104:
                                                      §§push(this.c0.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr118:
                                                         addr107:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr110:
                                                            §§push(param2);
                                                            if(_loc5_)
                                                            {
                                                               addr113:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                         }
                                                         §§pop().y = §§pop();
                                                         §§push(1 - param2);
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.a0);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     addr142:
                                                                     §§push(§§pop() + §§pop() * this.a);
                                                                     if(!_loc5_)
                                                                     {
                                                                     }
                                                                     var _loc3_:* = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(param1.R);
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§pop().Set(_loc3_);
                                                                           addr160:
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
                                                                              addr315:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(_loc4_.col1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr331:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          addr333:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_.col2);
                                                                                                   addr339:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         addr347:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.localCenter);
                                                                                                            addr349:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               addr350:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr347:
                                                                                                      }
                                                                                                      addr351:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr352:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr353:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr292:
                                                                                                   if(!(_loc5_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         return;
                                                                                                         addr310:
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr353);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr330:
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                           }
                                                                           addr313:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.position);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(param1.position);
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(_loc4_.col1);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   addr240:
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc4_.col2);
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            §§push(this.localCenter);
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  addr282:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc5_ || param2)
                                                                                                                  {
                                                                                                                     addr290:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr292);
                                                                                                                     }
                                                                                                                     §§goto(addr352);
                                                                                                                  }
                                                                                                                  §§goto(addr351);
                                                                                                               }
                                                                                                               §§goto(addr350);
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr282);
                                                                                                      }
                                                                                                      §§goto(addr339);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr331);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr290);
                                                                                             }
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr300);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr315);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                               }
                                                               §§goto(addr142);
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr118);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr110);
                                          }
                                       }
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §]b§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = NaN;
         if(!_loc3_)
         {
            §§push(this.§0p§);
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
                           addr286:
                           while(true)
                           {
                              §§push(1 - this.§0p§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!_loc3_)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       while(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc4_)
                                             {
                                                §§push(this.§0p§);
                                                if(!_loc3_)
                                                {
                                                   addr235:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(1 - this.§0p§);
                                                      §§goto(addr235);
                                                   }
                                                }
                                                while(_loc4_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop0;
                                             }
                                          }
                                       }
                                       addr22:
                                       return;
                                       addr226:
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr243);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr226);
                  }
               }
            }
         }
         §§goto(addr228);
      }
   }
}
