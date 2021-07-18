package §0!G§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §]p§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.localCenter = new b2Vec2();
            while(true)
            {
               this.c0 = new b2Vec2();
            }
            addr69:
         }
         while(true)
         {
            this.c = new b2Vec2();
            for(; !_loc2_; super(),if(!_loc2_)
            {
               return;
            })
            {
               if(_loc1_)
               {
                  continue;
               }
               §§goto(addr69);
            }
         }
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.localCenter.SetV(param1.localCenter);
         }
         while(true)
         {
            this.c0.SetV(param1.c0);
            loop1:
            do
            {
               this.c.SetV(param1.c);
               loop2:
               while(true)
               {
                  this.a0 = param1.a0;
                  do
                  {
                     this.a = param1.a;
                     continue loop2;
                  }
                  while(_loc3_);
                  
                  continue loop1;
               }
            }
            while(!(_loc2_ || param1));
            
            return;
            if(_loc3_ && param1)
            {
               continue;
            }
            §§goto(addr79);
         }
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Sweep = new b2Sweep();
         if(!_loc3_)
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
                  while(!(_loc3_ && _loc1_))
                  {
                     _loc1_.a0 = this.a0;
                     while(true)
                     {
                        _loc1_.a = this.a;
                        do
                        {
                           _loc1_.§]p§ = this.§]p§;
                        }
                        while(_loc3_);
                        
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §4!P§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §§push(param1.position);
            if(!_loc5_)
            {
               §§push(1);
               if(_loc6_ || _loc3_)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc5_ && param1))
                     {
                        §§push(this.c0);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop().x);
                           if(_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc5_)
                              {
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§push(this.c);
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr85:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc5_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   addr100:
                                                   addr99:
                                                   addr98:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(_loc5_ && param1)
                                                   {
                                                   }
                                                   addr126:
                                                   addr134:
                                                   addr133:
                                                   §§push(param2);
                                                   if(!_loc5_)
                                                   {
                                                      addr132:
                                                      §§push(§§pop() * this.c.y);
                                                   }
                                                   §§pop().y = §§pop() + §§pop();
                                                   addr135:
                                                   §§push(1 - param2);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(this.a0);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               addr160:
                                                               §§push(§§pop() * this.a);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr167:
                                                               var _loc3_:Number = §§pop();
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(param1.R);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop().Set(_loc3_);
                                                                     addr191:
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
                                                                        addr335:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           addr336:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_.col1);
                                                                              addr338:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr339:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.localCenter);
                                                                                    addr341:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr342:
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(_loc4_.col2);
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
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr279:
                                                                                                §§push(_loc4_.col2);
                                                                                                if(_loc5_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      §§push(this.localCenter);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr318:
                                                                                                            §§push(§§pop() - (§§pop() + §§pop() * §§pop()));
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  return;
                                                                                                                  addr330:
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr361);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr364:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                   }
                                                                                                   §§goto(addr362);
                                                                                                }
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                          }
                                                                                          addr363:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr364);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§push(this.c0.y);
                                             if(_loc6_ || _loc3_)
                                             {
                                                addr118:
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || this)
                                                {
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr118);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr126);
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr100);
               }
               §§goto(addr99);
            }
            §§goto(addr98);
         }
         §§goto(addr100);
      }
      
      public function §1m§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§]p§);
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
                           loop4:
                           while(true)
                           {
                              §§push(1 - this.§]p§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(!(_loc4_ && this))
                                 {
                                    if(!_loc4_)
                                    {
                                       loop21:
                                       while(§§pop())
                                       {
                                          loop22:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc3_)
                                                {
                                                   §§push(this.§]p§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr253:
                                                         §§push(1 - this.§]p§);
                                                         if(_loc4_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc3_ || this)
                                                         {
                                                            addr263:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr263:
                                                         }
                                                      }
                                                      while(!_loc4_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.c0);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               addr178:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  addr179:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(this.c0);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 addr194:
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
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr193:
                                                                           }
                                                                           addr198:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        addr189:
                                                                     }
                                                                     addr199:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            §§push(this);
                                                            §§push(1 - _loc2_);
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.a0);
                                                               if(_loc3_ || param1)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr73:
                                                                     §§push(_loc2_);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr69:
                                                                        §§push(§§pop() * this.a);
                                                                     }
                                                                     §§pop().a0 = §§pop() + §§pop();
                                                                     while(_loc3_)
                                                                     {
                                                                        this.§]p§ = param1;
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           break loop21;
                                                                        }
                                                                     }
                                                                     §§goto(addr162);
                                                                  }
                                                                  §§goto(addr73);
                                                               }
                                                               §§goto(addr69);
                                                            }
                                                            §§goto(addr73);
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr263);
                                             }
                                          }
                                       }
                                       return;
                                       addr225:
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr263);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr225);
                  }
               }
            }
         }
         §§goto(addr229);
      }
   }
}
