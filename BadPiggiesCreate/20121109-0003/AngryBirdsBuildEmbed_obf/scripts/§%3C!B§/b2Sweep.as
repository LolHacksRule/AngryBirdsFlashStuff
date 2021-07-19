package §<!B§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §[!$§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.localCenter = new b2Vec2();
            if(_loc1_ || _loc2_)
            {
               this.c0 = new b2Vec2();
               if(_loc1_ || _loc1_)
               {
                  addr50:
                  this.c = new b2Vec2();
                  if(_loc2_)
                  {
                  }
                  §§goto(addr58);
               }
               super();
            }
            addr58:
            return;
         }
         §§goto(addr50);
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.localCenter.SetV(param1.localCenter);
         }
         this.c0.SetV(param1.c0);
         if(_loc3_)
         {
            this.c.SetV(param1.c);
         }
         this.a0 = param1.a0;
         if(!(_loc2_ && _loc2_))
         {
            this.a = param1.a;
            if(!_loc2_)
            {
               addr73:
               this.§[!$§ = param1.§[!$§;
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         _loc1_.localCenter.SetV(this.localCenter);
         if(_loc3_ || this)
         {
            _loc1_.c0.SetV(this.c0);
            if(_loc3_ || this)
            {
               _loc1_.c.SetV(this.c);
            }
         }
         _loc1_.a0 = this.a0;
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.a = this.a;
            if(!_loc2_)
            {
               _loc1_.§[!$§ = this.§[!$§;
            }
         }
         return _loc1_;
      }
      
      public function §>!H§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1.position);
            if(_loc6_ || param2)
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(param2);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc6_ || param1)
                     {
                        §§push(this.c0);
                        if(_loc6_ || this)
                        {
                           §§push(§§pop().x);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc5_ && param1))
                              {
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    addr75:
                                    §§push(this.c);
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr103:
                                                §§pop().x = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr110:
                                                   addr109:
                                                   addr108:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc5_)
                                                   {
                                                      addr113:
                                                      §§push(this.c0.y);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr126:
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               addr133:
                                                               §§push(§§pop() + §§pop() * this.c.y);
                                                            }
                                                            §§goto(addr133);
                                                         }
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                   §§pop().y = §§pop();
                                                   addr135:
                                                   §§push(1 - param2);
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.a0);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(param2);
                                                            if(!_loc5_)
                                                            {
                                                               addr170:
                                                               §§push(§§pop() * this.a);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_ || param2)
                                                            {
                                                            }
                                                            addr182:
                                                            var _loc3_:* = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§push(param1.R);
                                                               if(_loc6_)
                                                               {
                                                                  §§pop().Set(_loc3_);
                                                                  addr191:
                                                                  §§push(param1.R);
                                                               }
                                                               var _loc4_:b2Mat22 = §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(param1.position);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(param1.position);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(_loc4_.col1);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(this.localCenter);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(_loc4_.col2);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr247:
                                                                                                §§push(this.localCenter);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr257:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc5_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr280:
                                                                                                                  §§push(param1.position);
                                                                                                                  §§push(param1.position.y);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr283:
                                                                                                                     §§push(_loc4_.col1.y);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr298:
                                                                                                                        §§push(this.localCenter.x);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        §§goto(addr316);
                                                                                                                     }
                                                                                                                     §§goto(addr306);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr322);
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                       }
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr283);
                                                                        }
                                                                        addr322:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           addr306:
                                                                           §§push(_loc4_.col2.y);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              addr316:
                                                                              §§push(§§pop() * this.localCenter.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().y = §§pop() - §§pop();
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§goto(addr182);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr113);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr110);
               }
               §§goto(addr109);
            }
            §§goto(addr108);
         }
         §§goto(addr110);
      }
      
      public function §@!+§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = NaN;
         if(!_loc3_)
         {
            §§push(this.§[!$§);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr50:
                           §§pop();
                           §§push(1 - this.§[!$§);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr65:
                              if(§§pop() > Number.MIN_VALUE)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push(this.§[!$§);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr95:
                                          §§push(§§pop() - §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(1 - this.§[!$§);
                                          }
                                          _loc2_ = §§pop();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(this.c0);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(1);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.c0);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.c);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr175:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr178:
                                                                                 §§pop().x = §§pop();
                                                                                 §§push(this.c0);
                                                                                 §§push(1 - _loc2_);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    addr193:
                                                                                    §§push(this.c0.y);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr196:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr207);
                                                                                    }
                                                                                    addr206:
                                                                                    addr207:
                                                                                    §§pop().y = §§pop();
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       addr215:
                                                                                       §§push(this);
                                                                                       §§push(1 - _loc2_);
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§push(this.a0);
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr255);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       addr255:
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
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    addr256:
                                                                                    this.§[!$§ = param1;
                                                                                    return;
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr205:
                                                                                 §§goto(addr206);
                                                                                 §§push(§§pop() * this.c.y);
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                }
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§push(§§pop() / §§pop());
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr50);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr215);
      }
   }
}
