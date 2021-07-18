package §]!K§
{
   public class §,!H§
   {
       
      
      public function §,!H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               §§push(param4);
               if(!(_loc7_ && param3))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc6_ || param3)
                  {
                     addr59:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_ || param3)
                        {
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                     if(_loc6_ || param2)
                     {
                        addr80:
                        §§push(§§pop() * §§pop());
                        if(!(_loc7_ && §,!H§))
                        {
                           addr98:
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§goto(addr101);
                           }
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr80);
               }
               §§goto(addr59);
            }
            addr101:
            §§push(§§pop() * §§pop());
            if(_loc6_)
            {
               addr105:
               return §§pop() + param2;
            }
         }
         §§goto(addr98);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               §§push(param1);
               if(!(_loc6_ && §,!H§))
               {
                  §§push(param4);
                  if(!(_loc6_ && param3))
                  {
                     §§goto(addr94);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || §,!H§)
                     {
                        addr64:
                        param1 = §§pop();
                        §§push(_loc5_);
                     }
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc6_ && param3))
                        {
                           addr77:
                           §§push(param1);
                           if(!(_loc6_ && param3))
                           {
                              §§push(§§pop() - 2);
                              if(_loc7_ || param1)
                              {
                                 addr94:
                                 §§push(§§pop() / §§pop());
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_ && param1)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr64);
               }
               §§goto(addr94);
            }
            addr114:
            return §§pop() + param2;
         }
         §§goto(addr77);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            §§push(param1);
            if(_loc6_ || §,!H§)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc7_ && §,!H§))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc6_ || param2)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_ || param2)
                              {
                                 addr65:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(!(_loc7_ && §,!H§))
                              {
                                 §§push(1);
                                 if(_loc6_ || §,!H§)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          addr86:
                                          §§push(param3);
                                          if(!_loc7_)
                                          {
                                             §§push(2);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc6_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      addr103:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc7_ && §,!H§))
                                                      {
                                                         addr121:
                                                         §§push(param1);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§push(param2);
                                                               if(_loc6_)
                                                               {
                                                                  addr135:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr234:
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr156:
                                                               §§push(§§pop() / 2);
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr164:
                                                                  §§push(param1);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              addr191:
                                                                              param1 = §§pop();
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    addr207:
                                                                                    §§push(§§pop() - 2);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr212:
                                                                                    §§push(§§pop() - 1);
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       §§goto(addr235);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr234);
                                                                           }
                                                                           §§goto(addr207);
                                                                        }
                                                                        §§goto(addr191);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                   }
                                                   §§goto(addr235);
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                          else
                                          {
                                             addr147:
                                             §§push(-§§pop());
                                             if(_loc6_ || §,!H§)
                                             {
                                                §§goto(addr156);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr144:
                                          §§push(param3);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr147);
                                          }
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr65);
                        }
                        addr235:
                        §§push(§§pop() * §§pop());
                        if(!_loc7_)
                        {
                           addr233:
                           §§goto(addr234);
                           return param2;
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr135);
               }
               §§goto(addr103);
            }
            §§goto(addr121);
         }
         §§goto(addr86);
      }
   }
}
