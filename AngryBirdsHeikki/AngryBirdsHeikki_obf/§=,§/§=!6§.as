package §=,§
{
   public class §=!6§
   {
       
      
      public function §=!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || §=!6§)
         {
            §§push(-§§pop());
            if(_loc7_ || param1)
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!_loc6_)
               {
                  §§goto(addr76);
               }
               §§push(§§pop() + §§pop());
            }
         }
         addr76:
         §§push(§§pop() * §§pop());
         if(_loc7_)
         {
            return param2;
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(_loc7_)
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
            if(!_loc7_)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_ || param2)
                  {
                     addr33:
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param3))
                        {
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(_loc6_)
                           {
                              §§push(1);
                              if(!_loc7_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(param3);
                                       if(_loc6_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(2);
                                             if(!_loc7_)
                                             {
                                                addr90:
                                                §§push(§§pop() / §§pop());
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§push(Math.sqrt(1 - param1 * param1) - 1);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr113:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr116);
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§goto(addr127);
                                                   }
                                                }
                                                addr116:
                                                §§push(param2);
                                                if(_loc6_)
                                                {
                                                }
                                                §§goto(addr172);
                                             }
                                             else
                                             {
                                                addr137:
                                                §§push(§§pop() / §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                   if(_loc6_)
                                                   {
                                                      addr172:
                                                      return §§pop() + §§pop();
                                                      §§push(param2);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr116);
                                       }
                                       addr127:
                                       return §§pop();
                                    }
                                    addr128:
                                    §§push(param3);
                                    if(_loc6_ || param2)
                                    {
                                       addr136:
                                       §§goto(addr137);
                                       §§push(2);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr172);
               }
               §§goto(addr33);
            }
            §§goto(addr113);
         }
         §§goto(addr128);
      }
   }
}
