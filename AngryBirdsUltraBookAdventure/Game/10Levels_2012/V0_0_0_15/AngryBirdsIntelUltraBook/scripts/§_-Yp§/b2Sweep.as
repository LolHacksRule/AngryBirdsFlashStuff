package §_-Yp§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §_-RN§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.localCenter = new b2Vec2();
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
                  while(_loc1_);
                  
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(true)
               {
                  this.c.SetV(param1.c);
                  loop2:
                  for(; _loc3_ || param1; loop4:
                  while(!(_loc2_ && param1))
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           this.§_-RN§ = param1.§_-RN§;
                           if(!(_loc3_ || this))
                           {
                              continue loop4;
                           }
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr79);
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  })
                  {
                     this.a0 = param1.a0;
                     while(true)
                     {
                        this.a = param1.a;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!(_loc3_ && this))
         {
            _loc1_.localCenter.SetV(this.localCenter);
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               addr99:
               while(true)
               {
                  _loc1_.c.SetV(this.c);
               }
            }
            addr105:
         }
         do
         {
            _loc1_.a0 = this.a0;
            loop3:
            do
            {
               if(!_loc3_)
               {
                  _loc1_.a = this.a;
                  while(!_loc3_)
                  {
                     _loc1_.§_-RN§ = this.§_-RN§;
                     if(!(_loc3_ && _loc1_))
                     {
                        continue loop3;
                     }
                  }
               }
               else
               {
                  §§goto(addr105);
               }
               §§goto(addr99);
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
         return _loc1_;
      }
      
      public function §_-tg§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1.position);
            if(!_loc6_)
            {
               §§push(1);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc6_)
                     {
                        §§push(this.c0);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop().x);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    §§push(this.c);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_)
                                             {
                                                addr82:
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   addr94:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr102:
                                                      §§push(this.c0.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr107:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_ || param2)
                                                         {
                                                            addr128:
                                                            §§push(param2);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr123:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§pop().y = §§pop() + §§pop();
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§push(1 - param2);
                                                if(_loc5_ || this)
                                                {
                                                   §§push(this.a0);
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            addr164:
                                                            §§push(§§pop() * this.a);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr180:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§push(param1.R);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§pop().Set(_loc3_);
                                                            addr195:
                                                            §§push(param1.R);
                                                         }
                                                         var _loc4_:b2Mat22 = §§pop();
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(param1.position);
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(param1.position);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr338:
                                                                  addr216:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     addr340:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr346:
                                                                              addr249:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(this.localCenter);
                                                                              if(!(_loc5_ || param2))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop().x);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    §§push(_loc4_.col2);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc5_ || param2)
                                                                                             {
                                                                                                addr299:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr309:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr314:
                                                                                                            §§pop().y = §§pop() - §§pop();
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               return;
                                                                                                               addr322:
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr347:
                                                                                                         addr347:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_.col2);
                                                                                                            addr349:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc5_ || param2)
                                                                                                               {
                                                                                                                  §§push(this.localCenter);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr361:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr359:
                                                                                                               }
                                                                                                               §§goto(addr361);
                                                                                                            }
                                                                                                         }
                                                                                                         addr347:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr363:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                §§goto(addr361);
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              §§goto(addr299);
                                                                           }
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                  }
                                                                  §§push(param1.position);
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc4_.col1);
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr249);
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr340);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr338);
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     §§goto(addr363);
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr128);
                                          }
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr82);
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §_-nE§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc3_)
         {
            §§push(this.§_-RN§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr300:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        addr305:
                        loop21:
                        while(true)
                        {
                           §§pop();
                           addr306:
                           while(true)
                           {
                              §§push(1 - this.§_-RN§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(§§pop() > Number.MIN_VALUE);
                              if(!_loc3_)
                              {
                              }
                              continue loop21;
                           }
                           continue loop0;
                        }
                        addr305:
                     }
                     while(§§pop())
                     {
                        while(true)
                        {
                           if(!(_loc3_ && this))
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 addr294:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr295:
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
                                             addr208:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr209:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr210:
                                                   while(true)
                                                   {
                                                      §§push(this.c0);
                                                      addr212:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr213:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr214:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr215:
                                                               while(true)
                                                               {
                                                                  §§push(this.c);
                                                                  addr217:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr218:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr219:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr220:
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
                                    }
                                 }
                              }
                              addr243:
                           }
                           else
                           {
                              §§goto(addr306);
                           }
                        }
                        continue loop0;
                     }
                     return;
                  }
                  §§goto(addr305);
               }
            }
         }
         §§goto(addr243);
      }
   }
}
