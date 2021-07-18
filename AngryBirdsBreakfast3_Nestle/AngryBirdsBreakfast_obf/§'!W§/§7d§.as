package §'!W§
{
   public class §7d§
   {
       
      
      public function §7d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
            if(!(_loc7_ && param1))
            {
               addr27:
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(_loc6_ || §7d§)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && param1))
                  {
                     addr79:
                     return §§pop() + param2;
                  }
               }
            }
            §§goto(addr79);
         }
         §§goto(addr27);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_)
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(_loc6_)
            {
               addr58:
               return §§pop() + param2;
            }
         }
         §§goto(addr58);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && §7d§))
         {
            §§push(param1);
            if(_loc6_ || param3)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_ || param3)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param2))
                        {
                           addr59:
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_ || §7d§)
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(_loc6_ || param2)
                           {
                              §§push(1);
                              if(_loc6_ || param3)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       addr106:
                                       §§push(param3);
                                       if(!_loc7_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc7_)
                                          {
                                             addr112:
                                             §§push(2);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc7_ && param2))
                                                {
                                                   addr128:
                                                   §§push(Math.sqrt(1 - param1 * param1) - 1);
                                                   if(_loc6_)
                                                   {
                                                      addr138:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || param3)
                                                      {
                                                         addr146:
                                                         §§push(param2);
                                                         if(_loc6_ || §7d§)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr157);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr207);
                                                            }
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   addr206:
                                                   addr207:
                                                   return §§pop();
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr146);
                                             }
                                             else
                                             {
                                                addr167:
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr206);
                                                      §§push(param2);
                                                   }
                                                }
                                                §§goto(addr207);
                                             }
                                          }
                                          addr157:
                                          return §§pop();
                                       }
                                       §§goto(addr146);
                                    }
                                    else
                                    {
                                       addr158:
                                       §§push(param3);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr166:
                                          §§goto(addr167);
                                          §§push(2);
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr59);
               }
               §§goto(addr138);
            }
            §§goto(addr112);
         }
         §§goto(addr106);
      }
   }
}
