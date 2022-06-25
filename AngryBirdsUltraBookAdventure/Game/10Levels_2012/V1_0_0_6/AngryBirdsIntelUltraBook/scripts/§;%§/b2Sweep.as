package §;%§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §!%§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.localCenter = new b2Vec2();
         }
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
                  if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_ && this);
         
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.localCenter.SetV(param1.localCenter);
            while(true)
            {
               this.c0.SetV(param1.c0);
               loop1:
               while(!(_loc2_ && param1))
               {
                  this.c.SetV(param1.c);
                  loop2:
                  while(true)
                  {
                     this.a0 = param1.a0;
                     loop3:
                     while(!_loc2_)
                     {
                        this.a = param1.a;
                        loop4:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              this.§!%§ = param1.§!%§;
                              if(_loc3_)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr48);
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr56);
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
                  while(_loc3_)
                  {
                     loop5:
                     while(_loc3_)
                     {
                        _loc1_.§!%§ = this.§!%§;
                        if(!(_loc2_ && _loc1_))
                        {
                           addr51:
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 _loc1_.a = this.a;
                                 continue loop5;
                                 §§goto(addr51);
                              }
                              addr77:
                           }
                           return _loc1_;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.a0 = this.a0;
            §§goto(addr77);
         }
      }
      
      public function §7§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(param1.position);
            if(_loc6_ || _loc3_)
            {
               §§push(1);
               if(_loc6_)
               {
                  §§push(param2);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc6_)
                     {
                        §§push(this.c0);
                        if(_loc6_)
                        {
                           §§push(§§pop().x);
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc5_ && param1))
                              {
                                 §§push(param2);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(this.c);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr80:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc5_)
                                             {
                                                addr83:
                                                §§pop().x = §§pop();
                                                if(!_loc5_)
                                                {
                                                   addr90:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr100:
                                                      §§push(this.c0.y);
                                                      if(!_loc5_)
                                                      {
                                                         addr114:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr106:
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               addr109:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                         }
                                                         §§pop().y = §§pop();
                                                         §§push(1 - param2);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.a0);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_ || this)
                                                               {
                                                                  addr137:
                                                                  §§push(param2);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr145:
                                                                     §§push(§§pop() * this.a);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr161:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc3_:* = §§pop();
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§push(param1.R);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§pop().Set(_loc3_);
                                                                        addr176:
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
                                                                           addr308:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr309:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_.col1);
                                                                                 addr311:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr312:
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.localCenter);
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_.col2);
                                                                                                addr320:
                                                                                                addr230:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.localCenter);
                                                                                                         addr325:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            addr326:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr323:
                                                                                                   }
                                                                                                   addr327:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr328:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr329:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(_loc5_ && _loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(this.localCenter);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(_loc4_.col2);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(this.localCenter);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr281:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr290:
                                                                                                                        §§pop().y = §§pop() - §§pop();
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                           addr303:
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr326);
                                                                                                                  }
                                                                                                                  §§goto(addr328);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr281);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr320);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr306:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.position);
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§push(param1.position);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(_loc4_.col1);
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             §§goto(addr230);
                                                                                          }
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 §§goto(addr329);
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr308);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr306);
                                                                        }
                                                                        §§goto(addr308);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      §§goto(addr114);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr106);
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                       }
                                    }
                                    §§goto(addr109);
                                 }
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr83);
                  }
               }
            }
            §§goto(addr90);
         }
         §§goto(addr114);
      }
      
      public function §#B§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(_loc3_)
         {
            §§push(this.§!%§);
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
                        while(true)
                        {
                           §§pop();
                           addr300:
                           while(true)
                           {
                              §§push(1 - this.§!%§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() > Number.MIN_VALUE);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        addr299:
                     }
                     loop2:
                     while(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           §§push(this.§!%§);
                           if(_loc3_ || this)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(§§pop() - §§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 addr278:
                                 §§push(§§pop() / (1 - this.§!%§));
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.c0);
                                    loop6:
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
                                             addr200:
                                             while(true)
                                             {
                                                §§push(this.c0);
                                                addr202:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr203:
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(this.c);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr215:
                                                               addr155:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§push(this.c);
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop().y);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr173:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr176:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc3_ || this))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        while(_loc3_ || this)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(1 - _loc2_);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§push(this.a0);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr80:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() * this.a);
                                                                                    }
                                                                                 }
                                                                                 §§pop().a0 = §§pop();
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    this.§!%§ = param1;
                                                                                    if(!(_loc3_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§goto(addr80);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr217:
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                        }
                                                                        addr217:
                                                                     }
                                                                     while(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr215);
                                                               §§goto(addr217);
                                                            }
                                                         }
                                                         addr216:
                                                         while(true)
                                                         {
                                                            §§goto(addr217);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr288:
                              }
                           }
                           §§goto(addr278);
                        }
                        continue loop1;
                     }
                     return;
                  }
                  §§goto(addr299);
               }
            }
         }
         §§goto(addr227);
      }
   }
}
