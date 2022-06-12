package § I§
{
   public class §3N§
   {
       
      
      public function §3N§()
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
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param3);
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || §3N§)
            {
               §§push(param4);
               if(!_loc7_)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc7_)
                  {
                     addr44:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(_loc6_ || §3N§)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           addr55:
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_ || param3)
                           {
                              addr83:
                              §§push(param1);
                              if(_loc6_)
                              {
                                 addr86:
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_ || param3)
                                 {
                                    addr95:
                                    §§push(§§pop() + param2);
                                 }
                              }
                              §§goto(addr95);
                           }
                           return §§pop();
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr44);
         }
         §§goto(addr83);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || param1)
         {
            §§push(-§§pop());
            if(_loc7_ || §3N§)
            {
               addr33:
               §§push(param1);
               if(_loc7_)
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
                        if(_loc7_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc6_ && §3N§))
                           {
                              addr69:
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc7_)
                              {
                                 addr87:
                                 §§push(param1);
                                 if(_loc7_ || §3N§)
                                 {
                                    addr95:
                                    §§push(§§pop() - 2);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§goto(addr109);
                                    }
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              addr109:
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 return param2;
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr87);
         }
         §§goto(addr33);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(param1);
            if(_loc6_ || param3)
            {
               §§push(param4);
               if(_loc6_ || param2)
               {
                  §§push(§§pop() / 2);
                  if(!_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param1))
                        {
                           var _loc5_:* = §§pop();
                           if(_loc6_ || §3N§)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_ || param2)
                              {
                                 param1 = §§pop();
                                 §§push(_loc5_);
                              }
                           }
                           if(_loc6_)
                           {
                              §§push(1);
                              if(_loc6_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(param3);
                                       if(!_loc7_)
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             addr87:
                                             §§push(§§pop() / §§pop());
                                             if(_loc6_)
                                             {
                                                §§push(param1);
                                                if(!_loc7_)
                                                {
                                                   addr93:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr114:
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc7_ && §3N§))
                                                         {
                                                            addr122:
                                                            §§push(param2);
                                                            if(_loc6_ || param3)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§goto(addr138);
                                                               }
                                                               else
                                                               {
                                                                  addr151:
                                                                  §§push(§§pop() / 2);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr154:
                                                                     §§push(param1);
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           addr170:
                                                                           §§push(§§pop());
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr181:
                                                                                 param1 = §§pop();
                                                                                 §§goto(addr215);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr207:
                                                                                 §§push(§§pop() - 1);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    addr215:
                                                                                    if(!(_loc7_ && param2))
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() - 2);
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc7_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  §§goto(addr220);
                                                               }
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr151);
                                       }
                                       addr138:
                                       return §§pop();
                                    }
                                    addr139:
                                    §§push(param3);
                                    if(!_loc7_)
                                    {
                                       addr142:
                                       §§push(-§§pop());
                                       if(_loc7_ && param2)
                                       {
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr181);
                     }
                     addr220:
                     return §§pop() + param2;
                  }
                  §§goto(addr93);
               }
               §§goto(addr114);
            }
            §§goto(addr142);
         }
         §§goto(addr139);
      }
   }
}
