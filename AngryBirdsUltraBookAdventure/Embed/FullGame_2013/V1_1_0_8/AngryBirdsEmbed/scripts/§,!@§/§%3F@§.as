package §,!@§
{
   public class §?@§
   {
       
      
      public function §?@§()
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
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(!_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc7_)
                  {
                     addr45:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(_loc7_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           addr56:
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                        if(_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && §?@§))
                           {
                              addr79:
                              §§push(param1);
                              if(_loc7_ || param2)
                              {
                                 addr87:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    addr96:
                                    §§push(§§pop() + param2);
                                 }
                              }
                              §§goto(addr96);
                           }
                           return §§pop();
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr87);
               }
               §§goto(addr45);
            }
            §§goto(addr96);
         }
         §§goto(addr79);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(_loc6_ || §?@§)
            {
               addr27:
               §§push(param1);
               if(_loc6_)
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        addr47:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(!(_loc7_ && param1))
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc7_ && param1))
                           {
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                        }
                        if(_loc6_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(_loc6_)
                              {
                                 addr89:
                                 §§push(§§pop() - 2);
                                 if(_loc7_ && param1)
                                 {
                                 }
                                 addr103:
                                 return §§pop() + §§pop();
                                 addr102:
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc7_)
                              {
                                 addr101:
                                 §§goto(addr102);
                                 §§push(param2);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr47);
               }
               §§goto(addr89);
            }
            §§goto(addr101);
         }
         §§goto(addr27);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop() / (param4 / 2));
            }
            var _loc5_:*;
            §§push(_loc5_ = §§pop());
            if(_loc7_ || param2)
            {
               §§push(Number(§§pop()));
               if(_loc7_)
               {
                  addr38:
                  param1 = §§pop();
                  §§push(_loc5_);
               }
               if(_loc7_ || param2)
               {
                  §§push(1);
                  if(!(_loc6_ && §?@§))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc6_)
                        {
                           addr60:
                           §§push(param3);
                           §§push(2);
                           if(!(_loc6_ && §?@§))
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc7_)
                              {
                                 §§push(param1);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_ || param3)
                                    {
                                       §§push(param1);
                                       if(_loc7_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc6_ && param2))
                                          {
                                             addr113:
                                             §§push(param2);
                                             if(!_loc6_)
                                             {
                                                addr116:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr119);
                                                }
                                             }
                                             else
                                             {
                                                addr161:
                                                §§push(§§pop() * §§pop());
                                             }
                                             addr164:
                                             return §§pop() + param2;
                                             addr163:
                                          }
                                          addr119:
                                          return §§pop();
                                       }
                                       §§goto(addr116);
                                    }
                                    else
                                    {
                                       addr123:
                                       §§push(§§pop() / 2);
                                       if(!_loc6_)
                                       {
                                          §§push(param1);
                                          if(_loc7_)
                                          {
                                             addr139:
                                             §§push(§§pop() - 1);
                                             §§push(§§pop() - 1);
                                             if(!_loc6_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc7_)
                                                {
                                                   param1 = §§pop();
                                                   addr147:
                                                   §§push(param1);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - 2);
                                                   }
                                                }
                                             }
                                             §§push(§§pop() * §§pop() - 1);
                                             if(!(_loc6_ && param3))
                                             {
                                                §§goto(addr161);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr123);
                        }
                        else
                        {
                           addr120:
                           §§push(-param3);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr123);
               }
               §§goto(addr60);
            }
            §§goto(addr38);
         }
         §§goto(addr60);
      }
   }
}
