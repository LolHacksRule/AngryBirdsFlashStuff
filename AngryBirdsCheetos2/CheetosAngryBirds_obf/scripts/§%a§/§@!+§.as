package §%a§
{
   public class §@!+§
   {
       
      
      public function §@!+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!(_loc7_ && param2))
               {
                  §§goto(addr75);
               }
               §§push(§§pop() + §§pop());
            }
         }
         addr75:
         §§push(§§pop() * §§pop());
         if(_loc6_ || param3)
         {
            return param2;
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || param1)
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
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc7_ && param1))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || §@!+§)
                     {
                        §§push(§§pop());
                        if(_loc6_ || param1)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc7_ && §@!+§))
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(!_loc7_)
                           {
                              §§push(1);
                              if(_loc6_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(param3);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(-§§pop());
                                          if(_loc6_ || param1)
                                          {
                                             §§push(2);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr108);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr147);
                                          }
                                          addr108:
                                          §§push(Math.sqrt(1 - param1 * param1) - 1);
                                          if(!(_loc7_ && param2))
                                          {
                                             addr123:
                                             §§push(§§pop() * §§pop());
                                             if(!_loc7_)
                                             {
                                                §§push(param2);
                                                if(_loc6_)
                                                {
                                                   addr129:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_ && param3)
                                                   {
                                                      addr147:
                                                      §§push(§§pop() / 2);
                                                      if(_loc6_)
                                                      {
                                                         addr150:
                                                         §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                         if(_loc7_ && param2)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                }
                                                §§goto(addr187);
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    else
                                    {
                                       addr138:
                                       §§push(param3);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr129);
               }
               addr187:
               return §§pop() + param2;
            }
            §§goto(addr147);
         }
         §§goto(addr138);
      }
   }
}
