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
         if(_loc1_ || _loc2_)
         {
            this.localCenter = new b2Vec2();
            while(true)
            {
               this.c0 = new b2Vec2();
               loop2:
               while(!(_loc2_ && _loc1_))
               {
                  super();
                  if(_loc1_)
                  {
                     addr53:
                     if(_loc2_)
                     {
                        while(true)
                        {
                           this.c = new b2Vec2();
                           continue loop2;
                           §§goto(addr53);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
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
               loop1:
               do
               {
                  this.c.SetV(param1.c);
                  while(true)
                  {
                     this.a0 = param1.a0;
                     while(!(_loc3_ && _loc3_))
                     {
                        if(!_loc3_)
                        {
                           this.a = param1.a;
                           while(!(_loc3_ && param1))
                           {
                              this.§3J§ = param1.§3J§;
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(_loc3_ && param1);
               
            }
         }
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc3_ || _loc1_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               loop1:
               while(_loc3_ || this)
               {
                  _loc1_.c.SetV(this.c);
                  while(true)
                  {
                     _loc1_.a0 = this.a0;
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           while(true)
                           {
                              _loc1_.a = this.a;
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                           return _loc1_;
                           addr63:
                           addr94:
                        }
                        break;
                        if(!(_loc3_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §%J§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param1.position);
            if(_loc5_ || _loc3_)
            {
               §§push(1);
               if(!_loc6_)
               {
                  §§push(param2);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc6_ && this))
                     {
                        §§push(this.c0);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop().x);
                           if(_loc5_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(_loc5_ || this)
                                 {
                                    addr74:
                                    §§push(this.c);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             addr89:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc6_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr104:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc5_ || param2)
                                                   {
                                                      addr114:
                                                      §§push(this.c0.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr117:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr133:
                                                            addr120:
                                                            §§push(param2);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr128:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§pop().y = §§pop() + §§pop();
                                                            §§push(1 - param2);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(this.a0);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(param2);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr177:
                                                                        §§push(§§pop() + §§pop() * this.a);
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr185:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(param1.R);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§pop().Set(_loc3_);
                                                                        addr200:
                                                                        §§push(param1.R);
                                                                     }
                                                                     var _loc4_:b2Mat22 = §§pop();
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§push(param1.position);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.position);
                                                                           addr317:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr318:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.col1);
                                                                                 addr320:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                addr351:
                                                                                                addr278:
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
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(_loc6_ && this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc4_.col2);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr297:
                                                                                                      §§push(this.localCenter);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr357:
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr305:
                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr309:
                                                                                                               §§pop().y = §§pop() - §§pop();
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  return;
                                                                                                                  addr312:
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr355);
                                                                                                         }
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
                                                                                                         addr357:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr354);
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr356:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr340:
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr315:
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
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(_loc4_.col1);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(this.localCenter);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr278);
                                                                                                         }
                                                                                                         §§goto(addr305);
                                                                                                      }
                                                                                                      §§goto(addr352);
                                                                                                   }
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                §§goto(addr297);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr278);
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
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr317);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr133);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr120);
                                                }
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr133);
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr133);
      }
      
      public function §5!4§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc2_))
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
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop20:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(1 - this.§3J§);
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§push(§§pop() > Number.MIN_VALUE);
                              if(_loc3_)
                              {
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(param1);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(this.§3J§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc3_)
                                                {
                                                   addr251:
                                                   §§push(1 - this.§3J§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc4_)
                                                      {
                                                      }
                                                      break loop4;
                                                   }
                                                   break;
                                                }
                                                §§push(Number(§§pop()));
                                                break loop4;
                                             }
                                             §§goto(addr251);
                                          }
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 addr26:
                                 return;
                                 addr213:
                              }
                              continue loop20;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(this.c0);
                              loop6:
                              while(true)
                              {
                                 §§push(1);
                                 addr185:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr187:
                                       while(true)
                                       {
                                          §§push(this.c0);
                                          addr189:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr190:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   while(true)
                                                   {
                                                      §§push(this.c);
                                                      addr196:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr197:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr198:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr194:
                                                }
                                                addr199:
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
                        addr274:
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr274);
               }
            }
         }
         §§goto(addr82);
      }
   }
}
