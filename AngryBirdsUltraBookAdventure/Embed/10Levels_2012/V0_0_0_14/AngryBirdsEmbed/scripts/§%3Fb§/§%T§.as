package §?b§
{
   import §@!!§.§=_§;
   
   public class §%T§
   {
       
      
      public var §!!-§:Number = 0;
      
      public var §;x§:Number = 0;
      
      public var §#=§:Number;
      
      public var §9?§:Number;
      
      public function §%T§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§#=§ = §&z§.§=G§;
            if(!_loc3_)
            {
               this.§9?§ = §&z§.§<q§;
               if(!(_loc3_ && _loc3_))
               {
                  super();
               }
               §§goto(addr69);
            }
            this.§#=§ = param1;
            if(_loc4_)
            {
               this.§9?§ = param2;
               this.§!!-§ = 0;
            }
            §§goto(addr69);
         }
         addr69:
         this.§;x§ = 0;
      }
      
      public function §[D§(param1:§=_§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(this.§!!-§);
         if(!_loc5_)
         {
            §§push(§&z§.§=!?§);
            if(_loc6_)
            {
               if(§§pop() < §§pop())
               {
                  §§push(this);
                  §§push(this.§!!-§);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().§!!-§ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(this);
                     §§push(this.§;x§);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + this.§#=§);
                     }
                     §§pop().§;x§ = §§pop();
                     if(!_loc5_)
                     {
                        §§push(param2);
                        §§push(§&z§.§=?§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc6_)
                           {
                              addr69:
                              §§push(this.§9?§);
                              if(!(_loc5_ && param1))
                              {
                                 addr78:
                                 §§push(§§pop() * §§pop() * Math.sin(Math.PI / 4 + this.§;x§ * 2 * Math.PI));
                                 if(_loc6_ || param2)
                                 {
                                    _loc3_ = §§pop();
                                    addr104:
                                    §§push(param2);
                                    §§push(§&z§.§=?§);
                                    if(_loc6_ || param1)
                                    {
                                       addr113:
                                       §§push(§§pop() / §§pop());
                                       §§push(this.§9?§);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() * Math.sin(this.§;x§ * 2.1 * Math.PI));
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 §§push(this);
                                 §§push(this.§9?§);
                                 if(!_loc5_)
                                 {
                                    §§push(param2);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§&z§.§<q§);
                                       if(_loc6_)
                                       {
                                          addr176:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§&z§.§=!?§);
                                          }
                                          §§pop().§9?§ = §§pop() - §§pop();
                                          if(_loc6_ || param2)
                                          {
                                             addr185:
                                             §§push(this);
                                             §§push(this.§#=§);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(param2);
                                                if(!_loc5_)
                                                {
                                                   §§push(§&z§.§=G§);
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr229:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr217:
                                                         §§push(§§pop() / §&z§.§=!?§);
                                                      }
                                                      §§pop().§#=§ = §§pop() - §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr232:
                                                         param1.§?F§(_loc3_,_loc4_);
                                                         if(_loc6_ || this)
                                                         {
                                                            param1.§84§();
                                                            if(_loc6_)
                                                            {
                                                               addr247:
                                                               §§push(true);
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  return §§pop();
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr256:
                                                               §§push(false);
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr185);
               }
               §§goto(addr256);
            }
            §§goto(addr113);
         }
         §§goto(addr69);
      }
   }
}
