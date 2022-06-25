package §%K§
{
   public class § D§
   {
       
      
      public function § D§()
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
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(!_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc7_)
                  {
                     addr40:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(_loc7_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                     if(_loc7_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           §§push(param1);
                           if(_loc6_ && § D§)
                           {
                           }
                           addr87:
                           return §§pop() + §§pop();
                           addr86:
                        }
                        addr85:
                        §§goto(addr86);
                        §§push(param2);
                     }
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr85);
                     }
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr40);
         }
         §§goto(addr85);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(!_loc7_)
         {
            §§push(-§§pop());
            if(!_loc7_)
            {
               §§push(param1);
               if(!(_loc7_ && § D§))
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc6_ || param3)
                     {
                        addr52:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(!(_loc7_ && param2))
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
                           §§push(§§pop() * §§pop());
                           if(!(_loc7_ && param2))
                           {
                              addr91:
                              §§push(param1);
                              if(!_loc6_)
                              {
                              }
                              addr103:
                              return §§pop() + §§pop();
                              addr102:
                           }
                           addr101:
                           §§goto(addr102);
                           §§push(param2);
                        }
                        §§push(§§pop() - 2);
                        if(!_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc7_)
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr101);
         }
         §§goto(addr91);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() / 2);
                  if(!(_loc6_ && § D§))
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && param1))
                     {
                        addr47:
                        §§push(§§pop());
                        if(_loc7_)
                        {
                           addr50:
                           var _loc5_:* = §§pop();
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && § D§))
                              {
                                 addr61:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(_loc7_ || param2)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr77:
                                          §§push(param3);
                                          if(!_loc6_)
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr83);
                                             }
                                             §§goto(addr131);
                                          }
                                       }
                                       else
                                       {
                                          addr125:
                                          §§push(param3);
                                          if(_loc7_)
                                          {
                                             §§goto(addr128);
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr125);
                                 }
                                 addr83:
                                 §§push(§§pop() / §§pop());
                                 if(_loc7_ || § D§)
                                 {
                                    §§push(param1);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc7_)
                                       {
                                          §§push(param1);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr110);
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr131);
                                    }
                                    addr110:
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_)
                                    {
                                       §§push(param2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_ || param1)
                                          {
                                             return §§pop();
                                          }
                                          addr131:
                                          §§push(§§pop() / 2);
                                          if(_loc7_ || param1)
                                          {
                                             addr140:
                                             §§push(param1);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() - 1);
                                                if(_loc7_)
                                                {
                                                   addr146:
                                                   §§push(§§pop());
                                                   if(_loc7_ || § D§)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc7_ || param3)
                                                      {
                                                         param1 = §§pop();
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(param1);
                                                            if(_loc7_ || param1)
                                                            {
                                                               addr188:
                                                               §§push(§§pop() - 2);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr198:
                                                               §§push(§§pop() - 1);
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  addr206:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr198);
                                             }
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                                 else
                                 {
                                    addr128:
                                    §§push(-§§pop());
                                    if(!_loc6_)
                                    {
                                       §§goto(addr131);
                                    }
                                 }
                                 §§goto(addr211);
                              }
                              addr211:
                              return §§pop() + param2;
                           }
                           §§goto(addr61);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr50);
               }
               §§goto(addr206);
            }
            §§goto(addr47);
         }
         §§goto(addr77);
      }
   }
}
