package § A§
{
   public class §@!t§
   {
       
      
      public function §@!t§()
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || §@!t§)
         {
            §§push(param1);
            if(_loc7_ || param2)
            {
               §§push(param4);
               if(!(_loc6_ && param2))
               {
                  §§goto(addr87);
               }
               var _loc5_:* = §§pop();
               if(!_loc6_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc6_)
                  {
                     addr61:
                     param1 = §§pop();
                     §§push(_loc5_);
                  }
                  if(_loc7_ || param2)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc6_)
                     {
                        §§push(param1);
                        if(_loc7_)
                        {
                           §§goto(addr87);
                        }
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr61);
            }
            addr87:
            §§push(§§pop() / §§pop());
            if(!_loc6_)
            {
               §§push(§§pop());
            }
            §§push(§§pop() * §§pop());
            if(_loc7_)
            {
               addr90:
               return §§pop() + param2;
            }
         }
         §§goto(addr90);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_ || param3)
         {
            §§push(-§§pop());
            if(_loc6_)
            {
               §§push(param1);
               if(!_loc7_)
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                        addr37:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(!(_loc7_ && param2))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc7_)
                           {
                              addr58:
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                           if(_loc6_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 §§push(param1);
                                 if(_loc6_ || param2)
                                 {
                                    addr79:
                                    §§push(§§pop() - 2);
                                    if(_loc7_)
                                    {
                                    }
                                    addr98:
                                    return §§pop() + §§pop();
                                    addr97:
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(!_loc7_)
                                 {
                                    addr96:
                                    §§goto(addr97);
                                    §§push(param2);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr79);
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr79);
         }
         §§goto(addr96);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            §§push(param1);
            if(_loc6_ || param3)
            {
               §§push(param4);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_)
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(!(_loc7_ && param3))
                           {
                              §§push(1);
                              if(!(_loc7_ && §@!t§))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(param3);
                                       if(_loc6_)
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc6_ || param1)
                                             {
                                                §§push(param1);
                                                if(!_loc7_)
                                                {
                                                   addr103:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(param2);
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr160);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         else
                                                         {
                                                            addr157:
                                                            §§push(-§§pop());
                                                            if(_loc6_)
                                                            {
                                                               addr160:
                                                               §§push(§§pop() / 2);
                                                               if(_loc6_ || §@!t§)
                                                               {
                                                                  addr169:
                                                                  §§push(param1);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr172:
                                                                     §§push(§§pop() - 1);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §§goto(addr186);
                                                                           }
                                                                           §§goto(addr202);
                                                                        }
                                                                        addr186:
                                                                        param1 = §§pop();
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           addr194:
                                                                           §§push(param1);
                                                                           if(!(_loc7_ && §@!t§))
                                                                           {
                                                                              addr202:
                                                                              §§push(§§pop() - 2);
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 addr220:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc6_ || §@!t§)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr240);
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       addr149:
                                       §§push(param3);
                                       if(_loc6_ || §@!t§)
                                       {
                                          §§goto(addr157);
                                       }
                                       §§goto(addr240);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr103);
               }
               addr240:
               return §§pop() + param2;
            }
            §§goto(addr169);
         }
         §§goto(addr149);
      }
   }
}
