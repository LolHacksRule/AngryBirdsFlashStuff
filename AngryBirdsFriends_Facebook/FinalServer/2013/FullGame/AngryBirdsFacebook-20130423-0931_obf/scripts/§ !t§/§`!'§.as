package § !t§
{
   public class §`!'§
   {
       
      
      public function §`!'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(!(_loc6_ && param2))
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!(_loc6_ && §`!'§))
               {
                  §§goto(addr76);
               }
               addr76:
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
                  addr74:
                  §§push(param2);
               }
               return §§pop();
               §§push(§§pop() + §§pop());
            }
            §§goto(addr74);
         }
         §§goto(addr76);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_)
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(_loc6_ || param3)
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(param4);
               if(!(_loc6_ && §`!'§))
               {
                  §§push(§§pop() / 2);
                  if(!_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param3))
                        {
                           var _loc5_:* = §§pop();
                           if(_loc7_ || param2)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && param2))
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(!(_loc6_ && §`!'§))
                           {
                              §§push(1);
                              if(!(_loc6_ && param2))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       §§push(param3);
                                       if(_loc7_ || §`!'§)
                                       {
                                          §§push(-§§pop());
                                          if(_loc7_)
                                          {
                                             §§push(2);
                                             if(_loc7_)
                                             {
                                                §§goto(addr116);
                                             }
                                             else
                                             {
                                                addr158:
                                                §§push(§§pop() / §§pop());
                                                if(_loc7_)
                                                {
                                                   §§goto(addr171);
                                                }
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr137);
                                    }
                                    else
                                    {
                                       addr154:
                                       §§push(param3);
                                       if(!_loc6_)
                                       {
                                          addr157:
                                          §§goto(addr158);
                                          §§push(2);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr154);
                              }
                              addr116:
                              §§push(§§pop() / §§pop());
                              if(_loc7_ || param2)
                              {
                                 addr124:
                                 §§push(Math.sqrt(1 - param1 * param1) - 1);
                                 if(!_loc6_)
                                 {
                                    addr134:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       addr137:
                                       §§push(param2);
                                       if(!(_loc6_ && §`!'§))
                                       {
                                          addr145:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && §`!'§))
                                          {
                                             §§goto(addr153);
                                          }
                                          else
                                          {
                                             §§goto(addr198);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr171:
                                       §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                       if(_loc7_ || §`!'§)
                                       {
                                          addr196:
                                          §§push(param2);
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 addr198:
                                 return §§pop();
                                 §§push(§§pop() + §§pop());
                              }
                              addr153:
                              return §§pop();
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr171);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr124);
         }
         §§goto(addr154);
      }
   }
}
