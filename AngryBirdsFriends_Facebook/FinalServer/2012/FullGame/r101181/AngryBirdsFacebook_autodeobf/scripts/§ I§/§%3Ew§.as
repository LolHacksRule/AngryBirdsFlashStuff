package § I§
{
   public class §>w§
   {
       
      
      public function §>w§()
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || param3)
         {
            §§push(-§§pop());
            if(_loc7_ || param2)
            {
               §§push(Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1);
               if(!(_loc6_ && §>w§))
               {
                  §§goto(addr86);
               }
               §§push(§§pop() + §§pop());
            }
         }
         addr86:
         §§push(§§pop() * §§pop());
         if(!(_loc6_ && param2))
         {
            return param2;
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1));
            if(_loc7_ || param2)
            {
               addr69:
               return §§pop() + param2;
            }
         }
         §§goto(addr69);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§push(param4);
               if(!_loc7_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc7_)
                  {
                     addr33:
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc7_ && param2))
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(_loc6_)
                           {
                              addr55:
                              §§push(1);
                              if(!_loc7_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(param3);
                                       if(_loc6_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc6_ || §>w§)
                                          {
                                             addr72:
                                             §§push(2);
                                             if(!(_loc7_ && §>w§))
                                             {
                                                addr90:
                                                §§push(§§pop() / §§pop());
                                                if(_loc6_)
                                                {
                                                   §§push(Math.sqrt(1 - param1 * param1) - 1);
                                                   if(_loc6_)
                                                   {
                                                      addr103:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         §§push(param2);
                                                         if(_loc6_ || param3)
                                                         {
                                                            addr119:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr131:
                                                            §§push(§§pop() / 2);
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                         addr177:
                                                         §§push(§§pop() * (Math.sqrt(1 - (param1 = Number(param1 - 2)) * param1) + 1));
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr175:
                                                            §§push(param2);
                                                         }
                                                         return §§pop();
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr119);
                                                }
                                             }
                                             §§goto(addr131);
                                          }
                                       }
                                       §§goto(addr177);
                                    }
                                    else
                                    {
                                       addr123:
                                       §§push(param3);
                                       if(_loc6_ || param1)
                                       {
                                          §§goto(addr131);
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr103);
               }
               §§goto(addr33);
            }
            §§goto(addr55);
         }
         §§goto(addr123);
      }
   }
}
