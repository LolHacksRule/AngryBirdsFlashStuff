package §,!@§
{
   public class §%2§
   {
       
      
      public function §%2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(_loc6_ || param2)
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(_loc6_)
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
            §§push(param2);
         }
         return §§pop();
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_)
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(_loc7_)
            {
               §§push(§§pop() + param2);
            }
         }
         return §§pop();
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §%2§))
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() / 2);
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc7_ || §%2§)
                     {
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           addr55:
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && param2))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc6_)
                              {
                                 addr66:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              §§push(1);
                              if(_loc7_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       addr85:
                                       §§push(param3);
                                       if(_loc7_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc7_)
                                          {
                                             §§push(2);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(Math.sqrt(1 - param1 * param1) - 1);
                                                   if(_loc7_)
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr118);
                                                }
                                                §§goto(addr168);
                                             }
                                             addr124:
                                             §§push(§§pop() / §§pop());
                                             if(_loc7_ || param1)
                                             {
                                                §§goto(addr142);
                                             }
                                             §§goto(addr167);
                                          }
                                          addr123:
                                          §§goto(addr124);
                                          §§push(2);
                                       }
                                       §§goto(addr167);
                                    }
                                    else
                                    {
                                       addr120:
                                       §§push(param3);
                                       if(_loc7_)
                                       {
                                          §§goto(addr123);
                                       }
                                    }
                                    addr142:
                                    §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                    if(!(_loc6_ && param3))
                                    {
                                       addr167:
                                       §§goto(addr168);
                                       §§push(param2);
                                    }
                                    addr169:
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_)
                                    {
                                       addr115:
                                       §§push(param2);
                                       if(_loc7_)
                                       {
                                          §§goto(addr118);
                                       }
                                       else
                                       {
                                          addr168:
                                          §§push(§§pop() + §§pop());
                                       }
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr115);
                  }
                  addr118:
                  return §§pop() + §§pop();
               }
               §§goto(addr55);
            }
            §§goto(addr115);
         }
         §§goto(addr85);
      }
   }
}
