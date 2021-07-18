package §3y§
{
   public class §&"t§
   {
       
      
      public function §&"t§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
            if(!(_loc7_ && param2))
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!_loc7_)
               {
                  §§goto(addr75);
               }
               addr75:
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  addr73:
                  §§push(param2);
               }
               return §§pop();
               §§push(§§pop() + §§pop());
            }
            §§goto(addr73);
         }
         §§goto(addr75);
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
               addr64:
               return §§pop() + param2;
            }
         }
         §§goto(addr64);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!(_loc6_ && param1))
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc7_ || param2)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && param1))
                              {
                                 addr71:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(!_loc6_)
                              {
                                 addr76:
                                 §§push(1);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr97:
                                          §§push(param3);
                                          if(_loc7_ || param1)
                                          {
                                             §§goto(addr105);
                                          }
                                          §§goto(addr148);
                                       }
                                       else
                                       {
                                          addr149:
                                          §§push(param3);
                                          if(_loc7_ || param3)
                                          {
                                             §§goto(addr158);
                                             §§push(2);
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr129);
               }
               §§goto(addr191);
            }
            addr105:
            §§push(-§§pop());
            if(_loc7_)
            {
               §§push(2);
               if(!_loc6_)
               {
                  addr111:
                  §§push(§§pop() / §§pop());
                  if(!(_loc6_ && param2))
                  {
                     §§push(Math.sqrt(1 - param1 * param1) - 1);
                     if(_loc7_)
                     {
                        addr129:
                        §§push(§§pop() * §§pop());
                        if(_loc7_ || param2)
                        {
                        }
                        §§goto(addr148);
                     }
                     addr145:
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        §§goto(addr148);
                     }
                     else
                     {
                        §§goto(addr193);
                     }
                  }
                  addr148:
                  return §§pop();
               }
               addr158:
               §§push(§§pop() / §§pop());
               if(_loc7_)
               {
                  addr161:
                  §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                  if(!_loc6_)
                  {
                     addr191:
                     §§push(§§pop() + param2);
                  }
                  §§goto(addr193);
               }
               §§goto(addr191);
               §§goto(addr191);
            }
            §§push(param2);
            if(_loc7_ || §&"t§)
            {
               §§goto(addr145);
            }
            else
            {
               §§goto(addr191);
            }
            return §§pop();
         }
         §§goto(addr97);
      }
   }
}
