package §'!W§
{
   public class §=!'§
   {
       
      
      public function §=!'§()
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
         if(!_loc6_)
         {
            §§push(param1);
            if(!(_loc6_ && §=!'§))
            {
               §§push(param4);
               if(!(_loc6_ && param2))
               {
                  §§goto(addr101);
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && §=!'§))
               {
                  §§push(Number(§§pop()));
                  if(_loc7_ || param2)
                  {
                     param1 = §§pop();
                     §§push(_loc5_);
                  }
               }
               if(!(_loc6_ && §=!'§))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr94:
                     §§push(param1);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           addr100:
                           addr101:
                           §§push(§§pop() / §§pop());
                           if(!(_loc6_ && §=!'§))
                           {
                              §§push(§§pop());
                           }
                           return §§pop() + §§pop();
                           §§push(param2);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr94);
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
               addr23:
               §§push(param1);
               if(!_loc6_)
               {
                  §§push(param4);
                  if(_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc7_ || param1)
                     {
                        addr48:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              addr54:
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                           if(!_loc6_)
                           {
                              addr59:
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 §§push(param1);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() - 2);
                                    if(_loc7_)
                                    {
                                       addr74:
                                       §§push(§§pop() * §§pop());
                                       if(_loc7_ || §=!'§)
                                       {
                                       }
                                       §§goto(addr94);
                                    }
                                    addr93:
                                    addr94:
                                    return §§pop();
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              §§goto(addr93);
                              §§push(param2);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr48);
               }
               §§goto(addr59);
            }
            §§goto(addr74);
         }
         §§goto(addr23);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_ || param3)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param1))
                        {
                           var _loc5_:* = §§pop();
                           if(!(_loc7_ && §=!'§))
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 addr60:
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
                                       if(_loc6_ || param1)
                                       {
                                          addr76:
                                          §§push(param3);
                                          if(!_loc7_)
                                          {
                                             §§push(2);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc6_ || param2)
                                                {
                                                   addr100:
                                                   §§push(param1);
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr111:
                                                         §§push(param1);
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_)
                                                            {
                                                               addr122:
                                                               §§push(param2);
                                                               if(_loc6_ || §=!'§)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr155:
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc7_)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           addr164:
                                                                           §§push(param1);
                                                                           if(_loc7_)
                                                                           {
                                                                           }
                                                                           addr169:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              addr172:
                                                                              §§push(§§pop() - 1);
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                              }
                                                                              addr195:
                                                                              return §§pop() + §§pop();
                                                                              addr194:
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              addr193:
                                                                              §§goto(addr194);
                                                                              §§push(param2);
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                        §§goto(addr172);
                                                                     }
                                                                     §§push(§§pop() - 2);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            else
                                                            {
                                                               addr140:
                                                               §§push(§§pop() / 2);
                                                               if(!_loc7_)
                                                               {
                                                                  addr144:
                                                                  §§push(param1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr147:
                                                                     §§push(§§pop() - 1);
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr111);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr193);
                                       }
                                       else
                                       {
                                          addr134:
                                          §§push(param3);
                                          if(_loc6_)
                                          {
                                             §§push(-§§pop());
                                             if(_loc6_)
                                             {
                                                §§goto(addr140);
                                             }
                                             §§goto(addr193);
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr60);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr172);
               }
               §§goto(addr147);
            }
            §§goto(addr111);
         }
         §§goto(addr76);
      }
   }
}
