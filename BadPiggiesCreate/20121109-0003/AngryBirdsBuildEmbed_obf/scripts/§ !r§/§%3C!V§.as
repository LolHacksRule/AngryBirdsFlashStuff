package § !r§
{
   public class §<!V§
   {
       
      
      public function §<!V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §;]§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_ || param1)
               {
                  §§push(1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc4_)
                        {
                           param1 = §§pop();
                           if(!_loc4_)
                           {
                              addr55:
                              §§push(param1);
                              if(_loc3_ || §<!V§)
                              {
                                 §§push(param1);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc4_)
                                    {
                                       param1 = §§pop();
                                       if(_loc3_ || param1)
                                       {
                                          addr95:
                                          §§push(1 - param1);
                                          if(_loc3_ || param1)
                                          {
                                             §§goto(addr103);
                                          }
                                          else
                                          {
                                             addr105:
                                             §§push(§§pop() * param1);
                                          }
                                       }
                                       else
                                       {
                                          addr104:
                                          §§goto(addr105);
                                          §§push(param1);
                                       }
                                       §§goto(addr105);
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr104);
                        }
                        addr103:
                        return §§pop();
                     }
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr104);
         }
         §§goto(addr55);
      }
      
      public static function §^%§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param3);
            if(_loc6_ || §<!V§)
            {
               §§push(0);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc6_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr60:
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr65:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc6_)
                                    {
                                       addr68:
                                       param2 = Math.max(0,param2);
                                    }
                                    §§push(Number(Math.pow(10,param2)));
                                 }
                                 §§goto(addr68);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_ || §<!V§)
                              {
                                 §§push(Math.round(param1 * _loc4_) / _loc4_);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc5_)
                                    {
                                       addr114:
                                       param1 = §§pop();
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(param3);
                                          §§push(0);
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || §<!V§)
                                                   {
                                                      addr143:
                                                      §§pop();
                                                      if(_loc6_ || §<!V§)
                                                      {
                                                         addr151:
                                                         §§push(param3);
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr161:
                                                            if(§§pop() < 10)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                               }
                                                               addr214:
                                                               return param1;
                                                               addr213:
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         addr193:
                                                         §§push(Number(§§pop()));
                                                         if(_loc6_)
                                                         {
                                                            param1 = §§pop();
                                                            if(!(_loc5_ && §<!V§))
                                                            {
                                                               §§push(Number(§^%§(param1,param2,-1)));
                                                               if(!_loc5_)
                                                               {
                                                                  addr212:
                                                                  param1 = §§pop();
                                                                  §§goto(addr213);
                                                               }
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§push(§§findproperty(§^%§));
                                                      §§push(param1);
                                                      if(_loc6_)
                                                      {
                                                         §§push(param3);
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr187:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(param2 - 1);
                                                         }
                                                         §§goto(addr193);
                                                         §§push(§§pop().§^%§(§§pop(),§§pop(),-1) / param3);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr68);
                        }
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         §§goto(addr60);
      }
   }
}
