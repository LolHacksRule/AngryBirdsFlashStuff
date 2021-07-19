package §%a§
{
   public class §;#§
   {
       
      
      public function §;#§()
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc6_ || §;#§)
                  {
                     addr34:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(!(_loc7_ && §;#§))
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
                           addr60:
                           §§push(§§pop() * §§pop());
                           if(!_loc7_)
                           {
                              addr63:
                              §§push(param1);
                              if(!(_loc7_ && param3))
                              {
                                 §§goto(addr91);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr91);
                        }
                        addr91:
                        §§push(§§pop() * §§pop());
                        if(!(_loc7_ && param2))
                        {
                           return param2;
                        }
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr34);
         }
         §§goto(addr63);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!(_loc6_ && param2))
         {
            §§push(-§§pop());
            if(_loc7_)
            {
               §§push(param1);
               if(_loc7_ || §;#§)
               {
                  §§push(param4);
                  if(_loc7_ || param3)
                  {
                     addr95:
                     §§push(§§pop() / §§pop());
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop());
                     }
                     §§push(§§pop() - 2);
                     if(_loc7_ || param2)
                     {
                        §§goto(addr124);
                     }
                     addr124:
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && param2))
                     {
                        addr122:
                        §§push(param2);
                     }
                     return §§pop();
                     §§push(§§pop() + §§pop());
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param2)
                     {
                        param1 = §§pop();
                        §§push(_loc5_);
                     }
                  }
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_ || param2)
                     {
                        §§push(param1);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr95);
            }
            §§goto(addr124);
         }
         §§goto(addr122);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            if(!(_loc7_ && param2))
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop());
                        if(_loc6_ || param1)
                        {
                           addr54:
                           var _loc5_:* = §§pop();
                           if(_loc6_ || param1)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc7_)
                              {
                                 addr65:
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                              if(!(_loc7_ && param2))
                              {
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!(_loc7_ && §;#§))
                                       {
                                          §§goto(addr86);
                                       }
                                       else
                                       {
                                          addr139:
                                          §§push(param3);
                                          if(_loc6_)
                                          {
                                             addr142:
                                             §§push(-§§pop());
                                             if(_loc6_)
                                             {
                                                §§goto(addr146);
                                                §§push(2);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr54);
               }
               §§goto(addr135);
            }
            §§goto(addr132);
         }
         addr86:
         §§push(param3);
         if(!(_loc7_ && param1))
         {
            §§push(2);
            if(_loc6_)
            {
               addr97:
               §§push(§§pop() / §§pop());
               if(!_loc7_)
               {
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc6_ || param2)
                     {
                        §§push(param1);
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              addr132:
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 addr135:
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    §§goto(addr138);
                                 }
                                 else
                                 {
                                    addr154:
                                    §§push(param1);
                                    if(_loc6_)
                                    {
                                       addr157:
                                       §§push(§§pop() - 1);
                                       if(!(_loc7_ && §;#§))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc7_ && §;#§))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc7_ && param3))
                                             {
                                                param1 = §§pop();
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(param1);
                                                   if(!_loc6_)
                                                   {
                                                   }
                                                   addr194:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      addr207:
                                                      §§push(§§pop() - 1);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr215);
                                                      }
                                                   }
                                                   addr215:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(param2);
                                                   }
                                                   return §§pop();
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§goto(addr215);
                                             }
                                             §§push(§§pop() - 2);
                                          }
                                          §§goto(addr194);
                                       }
                                    }
                                    §§goto(addr215);
                                 }
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr135);
               }
            }
            else
            {
               addr146:
               §§push(§§pop() / §§pop());
               if(!(_loc7_ && param2))
               {
                  §§goto(addr154);
               }
               §§goto(addr215);
            }
            §§goto(addr215);
         }
         addr138:
         return §§pop();
      }
   }
}
