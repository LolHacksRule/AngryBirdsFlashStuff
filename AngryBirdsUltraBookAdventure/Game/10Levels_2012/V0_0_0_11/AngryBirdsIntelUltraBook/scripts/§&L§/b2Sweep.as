package §&L§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §<!2§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.localCenter = new b2Vec2();
            loop0:
            while(true)
            {
               this.c0 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.c = new b2Vec2();
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        super();
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.localCenter.SetV(param1.localCenter);
            loop0:
            while(true)
            {
               this.c0.SetV(param1.c0);
               while(true)
               {
                  this.c.SetV(param1.c);
                  loop4:
                  while(_loc3_ || this)
                  {
                     continue loop0;
                     this.§<!2§ = param1.§<!2§;
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     addr41:
                     if(!_loc2_)
                     {
                        addr43:
                        if(_loc2_ && _loc3_)
                        {
                           while(true)
                           {
                              this.a0 = param1.a0;
                              addr96:
                              while(true)
                              {
                                 this.a = param1.a;
                                 continue loop4;
                                 §§goto(addr41);
                              }
                              §§goto(addr43);
                           }
                           addr104:
                        }
                        return;
                     }
                     §§goto(addr96);
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.localCenter.SetV(this.localCenter);
            loop0:
            while(true)
            {
               _loc1_.c0.SetV(this.c0);
               while(true)
               {
                  _loc1_.c.SetV(this.c);
                  loop2:
                  while(_loc2_ || this)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     _loc1_.a0 = this.a0;
                     loop3:
                     while(true)
                     {
                        _loc1_.a = this.a;
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              _loc1_.§<!2§ = this.§<!2§;
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return _loc1_;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §%!B§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(param1.position);
            if(_loc5_ || param2)
            {
               §§push(1);
               if(_loc5_ || this)
               {
                  §§push(param2);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc5_)
                     {
                        §§push(this.c0);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop().x);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || param1)
                              {
                                 §§push(param2);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(this.c);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(§§pop().x);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc6_)
                                          {
                                             addr104:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr112:
                                                §§pop().x = §§pop();
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   addr124:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc6_)
                                                   {
                                                      addr129:
                                                      §§push(this.c0.y);
                                                      if(_loc5_ || param1)
                                                      {
                                                         addr137:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr140:
                                                            §§push(param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr147:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr140);
                                                }
                                                addr149:
                                                §§push(1 - param2);
                                                if(_loc5_)
                                                {
                                                   §§push(this.a0);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            addr187:
                                                            §§push(§§pop() + §§pop() * this.a);
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr195:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(param1.R);
                                                         if(_loc5_)
                                                         {
                                                            §§pop().Set(_loc3_);
                                                            addr211:
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
                                                               addr346:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr347:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     addr349:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr350:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           addr352:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(_loc4_.col2);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             addr366:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr367:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr365:
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    addr360:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr369:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 addr368:
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr344:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.position);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(param1.position);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(_loc4_.col1);
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(this.localCenter);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          addr285:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(_loc4_.col2);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr294:
                                                                                                   §§push(this.localCenter);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         addr307:
                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                         if(_loc5_ || _loc3_)
                                                                                                         {
                                                                                                            addr316:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc5_ || param2)
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
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                         §§goto(addr369);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                          }
                                                                                          §§goto(addr368);
                                                                                       }
                                                                                       §§goto(addr307);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr349);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr346);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr344);
                                                            }
                                                            §§goto(addr346);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§pop().y = §§pop();
                                             §§goto(addr149);
                                          }
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr112);
                  }
               }
            }
            §§goto(addr124);
         }
         §§goto(addr112);
      }
      
      public function §6!V§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            §§push(this.§<!2§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr326:
                              loop26:
                              while(true)
                              {
                                 §§push(1 - this.§<!2§);
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() > Number.MIN_VALUE);
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       addr247:
                                       addr247:
                                       if(_loc4_ || _loc3_)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(this.§<!2§);
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc4_)
                                                         {
                                                            addr276:
                                                            while(true)
                                                            {
                                                               §§push(1 - this.§<!2§);
                                                               addr280:
                                                               while(!(_loc3_ && param1))
                                                               {
                                                                  addr287:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        §§goto(addr287);
                                                                     }
                                                                     addr300:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && param1)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        §§push(this.c0);
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           addr197:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr198:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(this.c0);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr204:
                                                                                       addr116:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                addr213:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.c);
                                                                                                   addr215:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr216:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr217:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr212:
                                                                                          }
                                                                                          addr218:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr219:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§goto(addr217);
                                                                                          }
                                                                                       }
                                                                                       §§push(this.c0);
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr143:
                                                                                                §§push(_loc2_);
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   addr161:
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.c);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            addr181:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr184:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  do
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(1 - _loc2_);
                                                                                                                     if(!(_loc3_ && param1))
                                                                                                                     {
                                                                                                                        §§push(this.a0);
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              addr64:
                                                                                                                              §§push(_loc2_);
                                                                                                                              if(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr72:
                                                                                                                                 §§push(§§pop() * this.a);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                           §§pop().a0 = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr219);
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        §§goto(addr72);
                                                                                                                     }
                                                                                                                     §§goto(addr64);
                                                                                                                  }
                                                                                                                  while(!(_loc4_ || this));
                                                                                                                  
                                                                                                                  break loop5;
                                                                                                               }
                                                                                                               §§goto(addr218);
                                                                                                               §§goto(addr219);
                                                                                                            }
                                                                                                            §§goto(addr218);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr216);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr215);
                                                                                                      }
                                                                                                      §§goto(addr216);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr204);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr181);
                                                                                             }
                                                                                             §§goto(addr184);
                                                                                          }
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                       §§goto(addr161);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop26;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr276:
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr276);
                                                }
                                             }
                                             break;
                                             §§goto(addr247);
                                          }
                                          return;
                                          addr254:
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr276);
                              }
                           }
                        }
                        §§goto(addr254);
                     }
                  }
               }
            }
         }
         §§goto(addr326);
      }
   }
}
