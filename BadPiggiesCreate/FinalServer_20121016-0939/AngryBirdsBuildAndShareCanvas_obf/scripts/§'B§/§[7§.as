package §'B§
{
   public class §[7§
   {
       
      
      public function §[7§()
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!(_loc7_ && §[7§))
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               addr27:
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!(_loc7_ && §[7§))
               {
                  §§goto(addr75);
               }
               §§push(§§pop() + §§pop());
            }
            addr75:
            §§push(§§pop() * §§pop());
            if(_loc6_)
            {
               return param2;
            }
         }
         §§goto(addr27);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && §[7§))
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(!(_loc6_ && param3))
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §[7§))
         {
            §§push(param1);
            if(!(_loc6_ && param2))
            {
               §§push(param4);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() / 2);
                  if(_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop());
                        if(_loc7_ || §[7§)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc7_ || param2)
                           {
                              §§push(Number(§§pop()));
                              if(_loc7_)
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(!(_loc6_ && param3))
                           {
                              §§push(1);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       addr107:
                                       §§push(param3);
                                       if(!_loc6_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc7_)
                                          {
                                             addr113:
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc7_ || param2)
                                                {
                                                }
                                                §§goto(addr203);
                                             }
                                             addr163:
                                             §§push(§§pop() / §§pop());
                                             if(!(_loc6_ && param1))
                                             {
                                                addr171:
                                                §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                if(!_loc6_)
                                                {
                                                   addr202:
                                                   addr203:
                                                   return §§pop();
                                                   §§push(§§pop() + param2);
                                                }
                                             }
                                             §§goto(addr203);
                                          }
                                          §§push(Math.sqrt(1 - param1 * param1) - 1);
                                          if(_loc7_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc6_ && §[7§))
                                             {
                                                §§push(param2);
                                                if(!_loc6_)
                                                {
                                                   addr150:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                §§goto(addr202);
                                             }
                                             addr162:
                                             §§goto(addr163);
                                             §§push(2);
                                          }
                                          §§goto(addr202);
                                       }
                                       §§goto(addr203);
                                    }
                                    else
                                    {
                                       addr154:
                                       §§push(param3);
                                       if(!(_loc6_ && §[7§))
                                       {
                                          §§goto(addr162);
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr113);
                  }
               }
               §§goto(addr202);
            }
            §§goto(addr113);
         }
         §§goto(addr107);
      }
   }
}
