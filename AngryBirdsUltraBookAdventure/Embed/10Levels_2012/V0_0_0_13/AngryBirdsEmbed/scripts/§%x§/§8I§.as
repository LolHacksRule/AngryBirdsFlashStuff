package §%x§
{
   import §[F§.§`m§;
   
   public class §8I§
   {
       
      
      public var §@d§:Number = 0;
      
      public var §;!4§:Number = 0;
      
      public var §8Y§:Number;
      
      public var §=m§:Number;
      
      public function §8I§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8Y§ = §#!;§.§+!"§;
            if(!_loc3_)
            {
               this.§=m§ = §#!;§.§[!?§;
               if(!(_loc3_ && _loc3_))
               {
                  super();
               }
               §§goto(addr69);
            }
            this.§8Y§ = param1;
            if(_loc4_)
            {
               this.§=m§ = param2;
               this.§@d§ = 0;
            }
            §§goto(addr69);
         }
         addr69:
         this.§;!4§ = 0;
      }
      
      public function §@X§(param1:§`m§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(this.§@d§);
         if(!_loc5_)
         {
            §§push(§#!;§.§<!C§);
            if(_loc6_)
            {
               if(§§pop() < §§pop())
               {
                  §§push(this);
                  §§push(this.§@d§);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().§@d§ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(this);
                     §§push(this.§;!4§);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + this.§8Y§);
                     }
                     §§pop().§;!4§ = §§pop();
                     if(!_loc5_)
                     {
                        §§push(param2);
                        §§push(§#!;§.§'w§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc6_)
                           {
                              addr69:
                              §§push(this.§=m§);
                              if(!(_loc5_ && param1))
                              {
                                 addr78:
                                 §§push(§§pop() * §§pop() * Math.sin(Math.PI / 4 + this.§;!4§ * 2 * Math.PI));
                                 if(_loc6_ || param2)
                                 {
                                    _loc3_ = §§pop();
                                    addr104:
                                    §§push(param2);
                                    §§push(§#!;§.§'w§);
                                    if(_loc6_ || param1)
                                    {
                                       addr113:
                                       §§push(§§pop() / §§pop());
                                       §§push(this.§=m§);
                                    }
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() * Math.sin(this.§;!4§ * 2.1 * Math.PI));
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 _loc4_ = §§pop();
                                 §§push(this);
                                 §§push(this.§=m§);
                                 if(!_loc5_)
                                 {
                                    §§push(param2);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§#!;§.§[!?§);
                                       if(_loc6_)
                                       {
                                          addr176:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§#!;§.§<!C§);
                                          }
                                          §§pop().§=m§ = §§pop() - §§pop();
                                          if(_loc6_ || param2)
                                          {
                                             addr185:
                                             §§push(this);
                                             §§push(this.§8Y§);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(param2);
                                                if(!_loc5_)
                                                {
                                                   §§push(§#!;§.§+!"§);
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr229:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr217:
                                                         §§push(§§pop() / §#!;§.§<!C§);
                                                      }
                                                      §§pop().§8Y§ = §§pop() - §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr232:
                                                         param1.§"]§(_loc3_,_loc4_);
                                                         if(_loc6_ || this)
                                                         {
                                                            param1.§@o§();
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
