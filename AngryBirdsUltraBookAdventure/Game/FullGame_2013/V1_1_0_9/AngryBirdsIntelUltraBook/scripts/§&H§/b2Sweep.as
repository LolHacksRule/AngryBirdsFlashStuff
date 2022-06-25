package §&H§
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.localCenter = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.c0 = new b2Vec2();
            while(true)
            {
               this.c = new b2Vec2();
               while(!(_loc2_ && _loc2_))
               {
                  continue loop0;
                  super();
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
            }
            addr95:
         }
         loop1:
         while(true)
         {
            this.c.SetV(param1.c);
            loop2:
            do
            {
               this.a0 = param1.a0;
               while(_loc2_)
               {
                  this.a = param1.a;
                  while(_loc2_ || param1)
                  {
                     if(_loc2_)
                     {
                        this.§3J§ = param1.§3J§;
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
               §§goto(addr95);
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc2_)
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
                  while(!_loc3_)
                  {
                     _loc1_.a0 = this.a0;
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           _loc1_.a = this.a;
                           do
                           {
                              _loc1_.§3J§ = this.§3J§;
                           }
                           while(_loc3_ && _loc3_);
                           
                           if(_loc2_)
                           {
                              if(_loc3_ && _loc1_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr59);
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return _loc1_;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §%J§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1.position);
            if(!(_loc5_ && param1))
            {
               §§push(1);
               if(_loc6_)
               {
                  §§push(param2);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(this.c0);
                        if(_loc6_)
                        {
                           §§push(§§pop().x);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc5_)
                              {
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    §§push(this.c);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr80:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   addr95:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc6_ || this)
                                                   {
                                                      addr103:
                                                      §§push(this.c0.y);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr111:
                                                            §§push(param2);
                                                            if(!_loc5_)
                                                            {
                                                               addr118:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr118);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr120:
                                                         §§push(1 - param2);
                                                         if(_loc6_)
                                                         {
                                                            §§push(this.a0);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr152:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() * this.a);
                                                                  }
                                                               }
                                                               var _loc3_:* = §§pop();
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(param1.R);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§pop().Set(_loc3_);
                                                                     addr181:
                                                                     §§push(param1.R);
                                                                  }
                                                                  var _loc4_:b2Mat22 = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(param1.position);
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.position);
                                                                        addr325:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr326:
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.col1);
                                                                              addr328:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr329:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.localCenter);
                                                                                    addr331:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr332:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc4_.col2);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr343:
                                                                                                addr255:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.localCenter);
                                                                                                   addr345:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      addr346:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr347:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc4_.col2);
                                                                                                if(_loc5_ && _loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr267:
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(this.localCenter);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               addr294:
                                                                                                               §§push(§§pop() + §§pop() * §§pop());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr298:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                           addr310:
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr348:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                  }
                                                                                                                  addr348:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr346);
                                                                                                            }
                                                                                                            §§goto(addr348);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr345);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                      §§goto(addr345);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   §§goto(addr111);
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr111);
                                          }
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr111);
                  }
               }
            }
            §§goto(addr95);
         }
         §§goto(addr120);
      }
      
      public function §5!4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_ || this)
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
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        loop21:
                        while(true)
                        {
                           §§pop();
                           addr291:
                           loop20:
                           while(true)
                           {
                              §§push(1 - this.§3J§);
                              if(!(_loc4_ || this))
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!_loc3_)
                                 {
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(this.§3J§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(1 - this.§3J§);
                                                }
                                                break loop20;
                                             }
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(Number(§§pop()));
                                                   break loop20;
                                                }
                                                break loop20;
                                             }
                                             break;
                                          }
                                          break loop20;
                                       }
                                       continue loop1;
                                    }
                                    addr27:
                                    return;
                                    addr226:
                                 }
                                 continue loop21;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              while(_loc4_)
                              {
                                 §§push(this.c0);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr193:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr194:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr195:
                                          while(true)
                                          {
                                             §§push(this.c0);
                                             addr197:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr198:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr199:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr200:
                                                      while(true)
                                                      {
                                                         §§push(this.c);
                                                         addr202:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr204:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr205:
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
                              }
                              §§goto(addr291);
                           }
                        }
                        addr290:
                     }
                     §§goto(addr226);
                  }
                  §§goto(addr290);
               }
            }
         }
         §§goto(addr188);
      }
   }
}
