package §_-Ja§
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var §_-EG§:Number;
      
      public function b2Sweep()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.localCenter = new b2Vec2();
            if(_loc2_)
            {
               this.c0 = new b2Vec2();
               if(_loc2_ || this)
               {
                  this.c = new b2Vec2();
                  if(_loc1_ && this)
                  {
                  }
                  §§goto(addr65);
               }
               super();
            }
         }
         addr65:
      }
      
      public function Set(param1:b2Sweep) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.localCenter.SetV(param1.localCenter);
         if(!_loc3_)
         {
            this.c0.SetV(param1.c0);
            if(_loc2_ || this)
            {
               this.c.SetV(param1.c);
               this.a0 = param1.a0;
               this.a = param1.a;
            }
            this.§_-EG§ = param1.§_-EG§;
         }
      }
      
      public function Copy() : b2Sweep
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Sweep = new b2Sweep();
         _loc1_.localCenter.SetV(this.localCenter);
         _loc1_.c0.SetV(this.c0);
         _loc1_.c.SetV(this.c);
         _loc1_.a0 = this.a0;
         _loc1_.a = this.a;
         _loc1_.§_-EG§ = this.§_-EG§;
         return _loc1_;
      }
      
      public function §_-ZO§(param1:b2Transform, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1.position);
            if(!(_loc6_ && _loc3_))
            {
               §§push(1);
               if(!_loc6_)
               {
                  §§push(param2);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc6_)
                     {
                        §§push(this.c0);
                        if(_loc5_)
                        {
                           §§push(§§pop().x);
                           if(_loc5_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc5_ || param2)
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(this.c);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr81:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                addr89:
                                                §§pop().x = §§pop();
                                                if(_loc5_)
                                                {
                                                   addr96:
                                                   §§push(param1.position);
                                                   §§push(1 - param2);
                                                   if(!_loc6_)
                                                   {
                                                      addr101:
                                                      §§push(this.c0.y);
                                                      if(_loc5_)
                                                      {
                                                         addr104:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc5_)
                                                         {
                                                            addr120:
                                                            §§push(param2);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr115:
                                                               §§push(§§pop() * this.c.y);
                                                            }
                                                            §§pop().y = §§pop() + §§pop();
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr120);
                                                }
                                                §§push(1 - param2);
                                                if(_loc5_)
                                                {
                                                   §§push(this.a0);
                                                   if(_loc5_ || param2)
                                                   {
                                                      addr152:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc5_)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * this.a);
                                                         }
                                                      }
                                                      var _loc3_:Number = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§push(param1.R);
                                                         if(_loc5_ || this)
                                                         {
                                                            §§pop().Set(_loc3_);
                                                            addr174:
                                                            §§push(param1.R);
                                                         }
                                                         var _loc4_:b2Mat22 = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            §§push(param1.position);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§push(param1.position);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_.col1);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(this.localCenter);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    §§push(_loc4_.col2);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(this.localCenter);
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr248:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         addr256:
                                                                                                         §§pop().x = §§pop();
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            addr268:
                                                                                                            §§push(param1.position);
                                                                                                            §§push(param1.position.y);
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               addr301:
                                                                                                               §§push(_loc4_.col1.y);
                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  addr288:
                                                                                                                  §§push(this.localCenter.x);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr291:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc6_ && param2)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr322:
                                                                                                                     §§pop().y = §§pop() - §§pop();
                                                                                                                     addr323:
                                                                                                                     return;
                                                                                                                     addr321:
                                                                                                                  }
                                                                                                                  addr316:
                                                                                                                  §§goto(addr321);
                                                                                                                  §§push(§§pop() + §§pop() * this.localCenter.y);
                                                                                                               }
                                                                                                               §§push(_loc4_.col2.y);
                                                                                                               if(_loc6_ && param1)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr316);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr323);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         §§goto(addr291);
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr104);
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr120);
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §_-8j§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§_-EG§);
            if(!_loc4_)
            {
               §§push(param1);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr41:
                           §§pop();
                           §§push(1 - this.§_-EG§);
                           if(_loc3_)
                           {
                              §§goto(addr51);
                           }
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr41);
               }
               §§goto(addr66);
            }
            addr51:
            if(§§pop() > Number.MIN_VALUE)
            {
               if(!_loc4_)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(this.§_-EG§);
                     if(!_loc4_)
                     {
                        addr66:
                        §§push(§§pop() - §§pop());
                        if(_loc3_)
                        {
                           addr73:
                           addr69:
                           §§push(§§pop() / (1 - this.§_-EG§));
                           if(!(_loc4_ && _loc3_))
                           {
                              addr81:
                              §§push(Number(§§pop()));
                           }
                           _loc2_ = §§pop();
                           §§push(this.c0);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(1);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(_loc2_);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(this.c0);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc4_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   §§push(this.c);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  addr176:
                                                                  §§push(this.c0);
                                                                  §§push(1 - _loc2_);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     addr184:
                                                                     §§push(this.c0.y);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr189:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr192:
                                                                           §§push(_loc2_);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr204:
                                                                              §§push(§§pop() + §§pop() * this.c.y);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        §§push(this);
                                                                        §§push(1 - _loc2_);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(this.a0);
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr229:
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr242:
                                                                                    §§push(§§pop() + §§pop() * this.a);
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                              §§pop().a0 = §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§_-EG§ = param1;
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr69);
               }
               §§goto(addr73);
            }
            §§goto(addr249);
         }
         addr249:
      }
   }
}
