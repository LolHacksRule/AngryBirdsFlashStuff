package § A§
{
   public class §%"!§
   {
       
      
      public function §%"!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && param3))
         {
            §§push(-§§pop());
            if(!(_loc6_ && param2))
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     addr80:
                     return §§pop() + param2;
                  }
               }
               §§goto(addr80);
            }
         }
         §§goto(addr80);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(!_loc6_)
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(param4);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_ || param2)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_ || param1)
                              {
                                 addr60:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_ || §%"!§)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(param3);
                                          if(_loc6_)
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc7_ && param3))
                                             {
                                                §§push(2);
                                                if(_loc6_ || param3)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr108:
                                                      §§push(Math.sqrt(1 - param1 * param1) - 1);
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr123:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr131:
                                                            §§push(param2);
                                                            if(!_loc7_)
                                                            {
                                                               addr134:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr137);
                                                               }
                                                               else
                                                               {
                                                                  addr150:
                                                                  §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                                  if(_loc7_ && param3)
                                                                  {
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                            }
                                                            addr186:
                                                            addr187:
                                                            return §§pop();
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   else
                                                   {
                                                      addr147:
                                                      §§push(§§pop() / 2);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   §§goto(addr186);
                                                   §§push(param2);
                                                }
                                                §§goto(addr147);
                                             }
                                          }
                                          §§goto(addr137);
                                       }
                                       else
                                       {
                                          addr138:
                                          §§push(param3);
                                          if(!(_loc7_ && param3))
                                          {
                                             §§goto(addr147);
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr147);
                              }
                              addr137:
                              return §§pop();
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr134);
               }
               §§goto(addr131);
            }
            §§goto(addr108);
         }
         §§goto(addr138);
      }
   }
}
