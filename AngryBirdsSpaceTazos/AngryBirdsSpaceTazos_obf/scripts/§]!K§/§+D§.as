package §]!K§
{
   public class §+D§
   {
       
      
      public function §+D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || §+D§)
         {
            §§push(-§§pop());
            if(!(_loc6_ && §+D§))
            {
               addr43:
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!_loc6_)
               {
                  §§goto(addr76);
               }
               §§push(§§pop() + §§pop());
            }
            addr76:
            §§push(§§pop() * §§pop());
            if(_loc7_)
            {
               return param2;
            }
         }
         §§goto(addr43);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!(_loc7_ && §+D§))
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(!_loc7_)
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(param4);
               if(!(_loc7_ && §+D§))
               {
                  §§push(§§pop() / 2);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           addr54:
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 addr60:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(!_loc7_)
                              {
                                 addr65:
                                 §§push(1);
                                 if(!(_loc7_ && param3))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_ || §+D§)
                                       {
                                          §§push(param3);
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc7_ && param1))
                                             {
                                                addr107:
                                                §§push(2);
                                                if(_loc6_ || param3)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(Math.sqrt(1 - param1 * param1) - 1);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr141:
                                                            §§push(param2);
                                                            if(!_loc7_)
                                                            {
                                                               addr144:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr147);
                                                               }
                                                               else
                                                               {
                                                                  addr156:
                                                                  addr157:
                                                                  §§push(§§pop() / 2);
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     addr165:
                                                                     §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  addr196:
                                                                  addr197:
                                                                  return §§pop();
                                                                  §§push(§§pop() + param2);
                                                               }
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr157);
                                             }
                                             addr147:
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr148:
                                          §§push(param3);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr144);
               }
               §§goto(addr54);
            }
            §§goto(addr141);
         }
         §§goto(addr148);
      }
   }
}
