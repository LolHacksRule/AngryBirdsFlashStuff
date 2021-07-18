package §3y§
{
   public class §9r§
   {
       
      
      public function §9r§()
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
         if(!(_loc7_ && param1))
         {
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               §§push(param4);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc6_)
                  {
                     addr54:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param2))
                        {
                           addr65:
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                        if(!(_loc7_ && param1))
                        {
                           addr75:
                           §§push(§§pop() * §§pop());
                           if(!(_loc7_ && §9r§))
                           {
                              §§push(param1);
                              if(!_loc7_)
                              {
                                 addr86:
                                 §§push(§§pop() * §§pop());
                                 if(_loc7_ && §9r§)
                                 {
                                 }
                                 §§goto(addr106);
                              }
                              addr105:
                              addr106:
                              return §§pop();
                              §§push(§§pop() + §§pop());
                           }
                           §§push(param2);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr75);
               }
               §§goto(addr54);
            }
         }
         §§goto(addr86);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || param3)
         {
            §§push(-§§pop());
            if(_loc7_ || param3)
            {
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(param4);
                  if(_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr53:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc7_ || param3)
                           {
                              addr64:
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                           if(!_loc6_)
                           {
                              addr69:
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(param1);
                                 if(!(_loc6_ && §9r§))
                                 {
                                    §§push(§§pop() - 2);
                                    if(_loc7_)
                                    {
                                       §§goto(addr99);
                                    }
                                 }
                                 addr99:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc6_)
                                 {
                                    addr97:
                                    §§push(param2);
                                 }
                                 return §§pop();
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr53);
               }
               §§goto(addr69);
            }
            §§goto(addr99);
         }
         §§goto(addr97);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §§push(param1);
            if(_loc6_ || §9r§)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           var _loc5_:* = §§pop();
                           if(!(_loc7_ && param1))
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 addr55:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_ || §9r§)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          addr76:
                                          §§push(param3);
                                          if(_loc6_ || param2)
                                          {
                                             addr84:
                                             §§push(2);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!_loc7_)
                                                {
                                                   addr90:
                                                   §§push(param1);
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(param1);
                                                         if(!_loc7_)
                                                         {
                                                            addr119:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(param2);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr159:
                                                                  §§push(param1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr162:
                                                                     §§push(§§pop() - 1);
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                     }
                                                                     addr197:
                                                                     §§push(§§pop() - 1);
                                                                     if(!(_loc7_ && param3))
                                                                     {
                                                                        addr205:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_ && §9r§)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§push(§§pop());
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     §§goto(addr186);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               addr186:
                                                               param1 = §§pop();
                                                               if(_loc6_)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr192:
                                                                     §§push(§§pop() - 2);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr147:
                                                         §§push(-§§pop());
                                                         if(!_loc7_)
                                                         {
                                                            addr151:
                                                            §§push(§§pop() / 2);
                                                            if(_loc6_ || §9r§)
                                                            {
                                                               §§goto(addr159);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr90);
                                       }
                                       else
                                       {
                                          addr139:
                                          §§push(param3);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§goto(addr147);
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr55);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr84);
                  }
                  addr225:
                  return §§pop() + param2;
               }
               §§goto(addr162);
            }
            §§goto(addr90);
         }
         §§goto(addr76);
      }
   }
}
