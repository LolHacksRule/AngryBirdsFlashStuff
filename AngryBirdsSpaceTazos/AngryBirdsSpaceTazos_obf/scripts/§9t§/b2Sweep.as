package §9t§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §8!L§:Number;
      
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
               while(_loc2_ || _loc2_)
               {
                  this.c = new b2Vec2();
                  while(!_loc1_)
                  {
                     super();
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               addr105:
               while(true)
               {
                  this.c.SetV(param1.c);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.a = param1.a;
            while(!_loc2_)
            {
               this.§8!L§ = param1.§8!L§;
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr41);
            }
            §§goto(addr81);
         }
         §§goto(addr58);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               while(true)
               {
                  _loc1_.c.SetV(this.c);
                  addr92:
                  while(true)
                  {
                     _loc1_.a0 = this.a0;
                     continue loop0;
                  }
                  addr65:
                  if(!(_loc3_ && this))
                  {
                     _loc1_.§8!L§ = this.§8!L§;
                     addr72:
                     if(_loc3_ && _loc2_)
                     {
                        while(_loc2_)
                        {
                           §§goto(addr65);
                           §§goto(addr72);
                        }
                        §§goto(addr92);
                        addr63:
                     }
                     if(!_loc3_)
                     {
                        return _loc1_;
                        addr47:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.a = this.a;
            §§goto(addr63);
         }
         §§goto(addr47);
      }
      
      public function §>u§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param1.position);
            if(_loc6_)
            {
               §§push(1);
               if(_loc6_ || param2)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc5_)
                     {
                        §§push(this.c0);
                        if(_loc6_)
                        {
                           §§push(§§pop().x);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc6_)
                              {
                                 addr47:
                                 §§push(param2);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(this.c);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_ || param2)
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc5_)
                                                {
                                                   addr85:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc5_)
                                                   {
                                                      addr90:
                                                      §§push(this.c0.y);
                                                      if(_loc6_ || param2)
                                                      {
                                                         addr98:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr114:
                                                            addr106:
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               addr109:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§pop().y = §§pop() + §§pop();
                                                            §§push(1 - param2);
                                                            if(_loc6_)
                                                            {
                                                               §§push(this.a0);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr132:
                                                                     §§push(param2);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr135:
                                                                        §§push(§§pop() * this.a);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(param1.R);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§pop().Set(_loc3_);
                                                                        addr166:
                                                                        §§push(param1.R);
                                                                     }
                                                                     var _loc4_:b2Mat22 = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(param1.position);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.position);
                                                                           addr286:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§push(_loc4_.col1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr305:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                addr317:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                }
                                                                                             }
                                                                                             addr305:
                                                                                          }
                                                                                          addr318:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.localCenter);
                                                                                             addr320:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                addr321:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr322:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr323:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr324:
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
                                                                                       addr301:
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 addr296:
                                                                              }
                                                                              §§goto(addr324);
                                                                           }
                                                                        }
                                                                        addr284:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.position);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(param1.position);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc4_.col1);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc4_.col2);
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr246:
                                                                                                                  §§push(this.localCenter);
                                                                                                                  if(!(_loc5_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr264:
                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                        {
                                                                                                                           addr273:
                                                                                                                           §§pop().y = §§pop() - §§pop();
                                                                                                                           if(!(_loc5_ && this))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr305);
                                                                                                                     }
                                                                                                                     §§goto(addr321);
                                                                                                                  }
                                                                                                                  §§goto(addr320);
                                                                                                               }
                                                                                                               §§goto(addr264);
                                                                                                            }
                                                                                                            §§goto(addr317);
                                                                                                         }
                                                                                                         §§goto(addr323);
                                                                                                      }
                                                                                                      §§goto(addr264);
                                                                                                   }
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                §§goto(addr322);
                                                                                             }
                                                                                             §§goto(addr246);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr264);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr296);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr324);
                                                                              }
                                                                              §§goto(addr273);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr286);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                               §§goto(addr135);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      §§goto(addr109);
                                                   }
                                                   §§goto(addr106);
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr98);
                                       }
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr47);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §,s§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§8!L§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        loop19:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(1 - this.§8!L§);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr234:
                              §§push(§§pop() > Number.MIN_VALUE);
                              if(_loc4_ || _loc3_)
                              {
                                 loop2:
                                 while(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop4;
                                       }
                                       §§push(param1);
                                       if(_loc4_ || _loc2_)
                                       {
                                          break loop4;
                                       }
                                       _loc2_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(this.c0);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(1);
                                             addr206:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr207:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(this.c0);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr218:
                                                         addr118:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§push(this.c0);
                                                         if(_loc3_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     addr163:
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(this.c);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr185:
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    loop18:
                                                                                    while(_loc4_ || _loc2_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(1 - _loc2_);
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             §§push(this.a0);
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   addr83:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc3_ && param1))
                                                                                                   {
                                                                                                      addr79:
                                                                                                      §§push(§§pop() * this.a);
                                                                                                   }
                                                                                                   §§pop().a0 = §§pop() + §§pop();
                                                                                                   while(_loc4_)
                                                                                                   {
                                                                                                      this.§8!L§ = param1;
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§goto(addr83);
                                                                                             }
                                                                                             §§goto(addr79);
                                                                                          }
                                                                                          §§goto(addr83);
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr219:
                                                                                 addr219:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    addr220:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.c);
                                                                                       addr222:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr219:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr224:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    addr225:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr222);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      addr217:
                                                   }
                                                   §§goto(addr219);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                    §§goto(addr234);
                                 }
                                 return;
                                 addr244:
                              }
                              continue loop19;
                           }
                           §§push(this.§8!L§);
                           if(_loc4_)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc3_ && this)
                              {
                                 continue loop0;
                              }
                              §§push(1 - this.§8!L§);
                           }
                           §§push(§§pop() / §§pop());
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           §§goto(addr295);
                        }
                        addr315:
                     }
                     §§goto(addr244);
                  }
                  §§goto(addr315);
               }
            }
         }
         §§goto(addr201);
      }
   }
}
