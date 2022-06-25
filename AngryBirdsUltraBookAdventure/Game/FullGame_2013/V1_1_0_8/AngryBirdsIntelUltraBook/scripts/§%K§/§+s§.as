package §%K§
{
   public class §+s§
   {
       
      
      public function §+s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!(_loc7_ && param2))
         {
            §§push(-§§pop());
            if(!_loc7_)
            {
               addr47:
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || §+s§)
                  {
                     addr74:
                     return §§pop() + param2;
                  }
               }
            }
            §§goto(addr74);
         }
         §§goto(addr47);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && param2))
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(_loc7_ || §+s§)
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
            if(_loc6_)
            {
               §§push(param4);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 addr50:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_ || §+s§)
                                       {
                                          §§goto(addr66);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§push(param3);
                                    if(!_loc7_)
                                    {
                                       §§goto(addr126);
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr50);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr172);
               }
               §§goto(addr108);
            }
            §§goto(addr98);
         }
         addr66:
         §§push(param3);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(!(_loc7_ && §+s§))
            {
               addr87:
               §§push(2);
               if(!_loc7_)
               {
                  addr90:
                  §§push(§§pop() / §§pop());
                  if(_loc6_ || param3)
                  {
                     addr98:
                     §§push(Math.sqrt(1 - param1 * param1) - 1);
                     if(!_loc7_)
                     {
                        addr108:
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(param2);
                           if(_loc7_ && param2)
                           {
                           }
                        }
                        §§goto(addr172);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc7_)
                     {
                        §§goto(addr122);
                     }
                     else
                     {
                        addr170:
                        addr172:
                        return §§pop() + §§pop();
                        §§push(param2);
                     }
                  }
                  §§goto(addr170);
               }
               else
               {
                  addr127:
                  §§push(§§pop() / §§pop());
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                     if(!(_loc7_ && param3))
                     {
                        §§goto(addr170);
                     }
                  }
               }
               §§goto(addr172);
            }
            else
            {
               addr126:
               §§push(2);
            }
            §§goto(addr127);
         }
         addr122:
         return §§pop();
      }
   }
}
