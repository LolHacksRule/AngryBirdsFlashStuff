package §6!H§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §^Q§:Number;
      
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
               while(!(_loc1_ && _loc2_))
               {
                  this.c = new b2Vec2();
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        super();
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
               addr100:
               while(true)
               {
                  this.c.SetV(param1.c);
               }
               addr61:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               this.§^Q§ = param1.§^Q§;
               addr68:
               if(_loc3_ || this)
               {
                  addr36:
                  if(_loc2_)
                  {
                     while(true)
                     {
                        this.a0 = param1.a0;
                        while(!_loc2_)
                        {
                           this.a = param1.a;
                           while(_loc3_ || this)
                           {
                              §§goto(addr61);
                              §§goto(addr68);
                           }
                        }
                        §§goto(addr100);
                        §§goto(addr36);
                     }
                     addr83:
                  }
                  return;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr83);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!_loc3_)
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
               loop2:
               do
               {
                  _loc1_.a0 = this.a0;
                  while(!_loc3_)
                  {
                     _loc1_.a = this.a;
                     do
                     {
                        _loc1_.§^Q§ = this.§^Q§;
                     }
                     while(_loc3_ && _loc3_);
                     
                     if(!_loc3_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(!_loc2_);
            
            return _loc1_;
         }
      }
      
      public function §2!i§(param1:b2Transform, param2:Number) : void
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
                  if(_loc5_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc5_)
                     {
                        §§push(this.c0);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop().x);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(param2);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(this.c);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_ || this)
                                          {
                                             addr89:
                                             §§push(§§pop() + §§pop());
                                             if(_loc5_ || param2)
                                             {
                                                addr97:
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr104:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc5_)
                                                   {
                                                      addr107:
                                                      §§push(this.c0.y);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            addr125:
                                                            §§push(param2);
                                                            if(!_loc6_)
                                                            {
                                                               addr132:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr134:
                                                         §§push(1 - param2);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(this.a0);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr151:
                                                                  §§push(param2);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr154:
                                                                     §§push(§§pop() * this.a);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc3_:* = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  §§push(param1.R);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop().Set(_loc3_);
                                                                     addr180:
                                                                     §§push(param1.R);
                                                                  }
                                                                  var _loc4_:b2Mat22 = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(param1.position);
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.position);
                                                                        addr314:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr315:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.col1);
                                                                              addr317:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr318:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.localCenter);
                                                                                    addr320:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr321:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             §§push(_loc4_.col2);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr342:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.localCenter);
                                                                                                   addr344:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      addr345:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr346:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr341:
                                                                                          }
                                                                                          addr347:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr348:
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
                                                                     addr312:
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
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(_loc4_.col1);
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(this.localCenter);
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(_loc4_.col2);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        §§push(this.localCenter);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              addr306:
                                                                                                                              §§pop().y = §§pop() - (§§pop() + §§pop() * §§pop());
                                                                                                                              addr304:
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr344);
                                                                                                                        }
                                                                                                                        §§goto(addr345);
                                                                                                                     }
                                                                                                                     §§goto(addr346);
                                                                                                                  }
                                                                                                                  §§goto(addr304);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr341);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr318);
                                                                                                            }
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                         §§goto(addr304);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                   }
                                                                                                   §§goto(addr342);
                                                                                                }
                                                                                                §§goto(addr304);
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr304);
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
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr314);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr312);
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr125);
                                          }
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr104);
         }
         §§goto(addr134);
      }
      
      public function §8!3§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc3_)
         {
            §§push(this.§^Q§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop10:
                           while(true)
                           {
                              §§push(1 - this.§^Q§);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(_loc4_)
                                 {
                                    loop2:
                                    while(§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc3_ && param1))
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§^Q§);
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(1 - this.§^Q§);
                                                         addr269:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr272:
                                                            }
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               addr276:
                                                               while(true)
                                                               {
                                                                  §§push(this.c0);
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     addr198:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        addr199:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push(this.c0);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr210:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                              }
                                                                              addr209:
                                                                           }
                                                                           addr211:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr212:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.c);
                                                                                 addr214:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr215:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr216:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr217:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             continue loop12;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr265:
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr269);
                                                continue loop10;
                                             }
                                             continue loop0;
                                             addr246:
                                          }
                                          §§goto(addr265);
                                       }
                                    }
                                    return;
                                    addr236:
                                 }
                                 break;
                              }
                              §§goto(addr246);
                           }
                        }
                        addr300:
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr300);
               }
            }
         }
         §§goto(addr276);
      }
   }
}
