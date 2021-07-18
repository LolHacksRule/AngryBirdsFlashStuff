package §=,§
{
   public class §-x§
   {
       
      
      public function §-x§()
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
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc6_ || §-x§)
                  {
                     §§goto(addr34);
                  }
                  §§goto(addr65);
               }
               §§goto(addr34);
            }
            addr34:
            var _loc5_:*;
            §§push(_loc5_ = §§pop());
            if(_loc6_)
            {
               §§push(Number(§§pop()));
               if(!(_loc7_ && §-x§))
               {
                  param1 = §§pop();
                  §§push(_loc5_);
               }
            }
            if(_loc6_ || param1)
            {
               addr65:
               §§push(§§pop() * §§pop());
               if(_loc6_ || §-x§)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§goto(addr86);
                  }
               }
               §§goto(addr90);
            }
            addr86:
            §§push(§§pop() * §§pop());
            if(!_loc7_)
            {
               addr90:
               return §§pop() + param2;
            }
         }
         §§goto(addr90);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(_loc7_ || param1)
            {
               §§push(param1);
               if(_loc7_)
               {
                  §§push(param4);
                  if(_loc7_ || §-x§)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc7_)
                     {
                        addr53:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              addr59:
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                           if(!_loc6_)
                           {
                              §§goto(addr64);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr59);
                     }
                     addr64:
                     §§push(§§pop() * §§pop());
                     if(_loc7_ || §-x§)
                     {
                        addr72:
                        §§push(param1);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - 2);
                           if(!(_loc6_ && param1))
                           {
                              addr94:
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 addr98:
                                 §§push(§§pop() + param2);
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr94);
                     }
                     return §§pop();
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr72);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §-x§))
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(§§pop() / 2);
                  if(_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr45:
                           var _loc5_:* = §§pop();
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && §-x§))
                              {
                                 addr56:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(_loc7_)
                              {
                                 addr61:
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(param3);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(2);
                                             if(!(_loc6_ && param3))
                                             {
                                                addr83:
                                                §§push(§§pop() / §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr107:
                                                         §§push(param1);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc7_)
                                                            {
                                                               addr113:
                                                               §§push(param2);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc6_ && §-x§))
                                                                  {
                                                                     §§goto(addr124);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr210:
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            else
                                                            {
                                                               addr128:
                                                               §§push(-§§pop());
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§goto(addr137);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr209);
                                             }
                                             addr137:
                                             §§push(§§pop() / 2);
                                             if(_loc7_ || param1)
                                             {
                                                addr145:
                                                §§push(param1);
                                                if(_loc7_ || param2)
                                                {
                                                   addr153:
                                                   §§push(§§pop() - 1);
                                                   if(!_loc6_)
                                                   {
                                                      addr156:
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc7_ || param3)
                                                         {
                                                            param1 = §§pop();
                                                            addr188:
                                                            if(_loc7_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  §§push(§§pop() - 2);
                                                               }
                                                            }
                                                            §§push(§§pop() - 1);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc7_)
                                                      {
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   addr191:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc6_ && §-x§))
                                                   {
                                                      addr209:
                                                      §§goto(addr210);
                                                      §§push(param2);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr188);
                                             }
                                             addr211:
                                             return §§pop();
                                          }
                                          §§goto(addr107);
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
                                       §§goto(addr209);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr45);
               }
               §§goto(addr191);
            }
            addr124:
            return §§pop();
         }
         §§goto(addr125);
      }
   }
}
