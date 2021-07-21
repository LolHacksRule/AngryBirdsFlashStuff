package §<!a§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §,>§:Number;
      
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
                  while(!(_loc2_ || _loc1_));
                  
               }
               while(_loc1_ && _loc1_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               loop1:
               while(true)
               {
                  this.c.SetV(param1.c);
                  loop2:
                  for(; _loc3_; if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  },§§goto(addr68))
                  {
                     this.a0 = param1.a0;
                     loop3:
                     while(true)
                     {
                        this.a = param1.a;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr68:
                           this.§,>§ = param1.§,>§;
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 return;
                                 addr53:
                              }
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         if(_loc3_)
         {
            _loc1_.localCenter.SetV(this.localCenter);
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               while(_loc3_)
               {
                  _loc1_.c.SetV(this.c);
                  addr66:
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  _loc1_.§,>§ = this.§,>§;
                  addr73:
                  if(!(_loc2_ && _loc2_))
                  {
                     addr41:
                     if(_loc2_ && this)
                     {
                        loop3:
                        while(true)
                        {
                           _loc1_.a = this.a;
                           addr64:
                           addr86:
                           while(!_loc2_)
                           {
                              §§goto(addr66);
                              §§goto(addr73);
                           }
                           while(true)
                           {
                              _loc1_.a0 = this.a0;
                              continue loop3;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr64);
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §60§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1.position);
            if(_loc6_ || _loc3_)
            {
               §§push(1);
               if(_loc6_)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc6_ || this)
                     {
                        §§push(this.c0);
                        if(_loc6_)
                        {
                           §§push(§§pop().x);
                           if(!(_loc5_ && param1))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_ || param1)
                              {
                                 addr67:
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    §§push(this.c);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc5_ && this))
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   addr105:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr113:
                                                      §§push(this.c0.y);
                                                      if(!_loc5_)
                                                      {
                                                         addr118:
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr134:
                                                               §§pop().y = §§pop() + §§pop() * this.c.y;
                                                               addr133:
                                                            }
                                                            §§goto(addr133);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr134);
                                                }
                                                §§push(1 - param2);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(this.a0);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr157:
                                                         §§push(param2);
                                                         if(_loc6_)
                                                         {
                                                            addr163:
                                                            §§push(§§pop() + §§pop() * this.a);
                                                            if(_loc6_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         §§push(param1.R);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§pop().Set(_loc3_);
                                                            addr191:
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
                                                               addr330:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr341:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           addr343:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr344:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr345:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.col2);
                                                                                    addr357:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr358:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          addr360:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             addr361:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr362:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr363:
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
                                                                     }
                                                                     addr340:
                                                                  }
                                                                  addr364:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr113);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr67);
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §%E§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc3_)
         {
            §§push(this.§,>§);
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
                           addr276:
                           loop26:
                           while(true)
                           {
                              §§push(1 - this.§,>§);
                              if(_loc4_)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_)
                                    {
                                       loop4:
                                       while(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(this.§,>§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(1 - this.§,>§);
                                                            addr244:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  addr254:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  _loc2_ = §§pop();
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.c0);
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        addr183:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr184:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(this.c0);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr195:
                                                                                    addr109:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    §§push(this.c0);
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr156:
                                                                                                   §§push(this.c);
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         addr169:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc4_ || param1)
                                                                                                         {
                                                                                                            addr177:
                                                                                                            §§pop().y = §§pop() + §§pop();
                                                                                                            loop20:
                                                                                                            do
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(1 - _loc2_);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.a0);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr65:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.a);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§pop().a0 = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                        addr75:
                                                                                                                        this.§,>§ = param1;
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§goto(addr65);
                                                                                                            }
                                                                                                            while(!(_loc4_ || this));
                                                                                                            
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop4;
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         §§goto(addr195);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr201:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr202:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr200:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr200);
                                                                                                   }
                                                                                                   addr199:
                                                                                                }
                                                                                                §§goto(addr169);
                                                                                             }
                                                                                             §§goto(addr177);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr199);
                                                                                          }
                                                                                          addr197:
                                                                                       }
                                                                                       §§goto(addr201);
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                              }
                                                                              addr196:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr197);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr240:
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                continue loop0;
                                                addr228:
                                             }
                                             §§goto(addr240);
                                          }
                                       }
                                       return;
                                       addr223:
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                              §§goto(addr228);
                           }
                        }
                     }
                     §§goto(addr223);
                  }
               }
            }
         }
         §§goto(addr276);
      }
   }
}
