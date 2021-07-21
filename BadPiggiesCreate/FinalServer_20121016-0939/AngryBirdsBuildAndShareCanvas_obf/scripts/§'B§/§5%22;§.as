package §'B§
{
   public class §5";§
   {
       
      
      public function §5";§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(_loc7_ || param2)
         {
            §§push(param1);
            if(_loc7_ || param3)
            {
               §§push(param4);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc7_)
                  {
                     addr45:
                     var _loc5_:*;
                     §§push(_loc5_ = §§pop());
                     if(_loc7_ || param3)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || param3)
                        {
                           param1 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_ || param3)
                        {
                           addr89:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr111);
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr45);
            }
            addr92:
            §§push(§§pop() * §§pop());
            if(_loc7_ || param2)
            {
               addr111:
               return §§pop() + param2;
            }
         }
         §§goto(addr89);
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param3);
         if(!_loc6_)
         {
            §§push(-§§pop());
            if(_loc7_ || param3)
            {
               addr28:
               §§push(param1);
               if(_loc7_)
               {
                  §§push(param4);
                  if(_loc7_ || §5";§)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr53:
                        var _loc5_:*;
                        §§push(_loc5_ = §§pop());
                        if(_loc7_ || param1)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                        }
                        if(_loc7_ || param2)
                        {
                           addr74:
                           §§push(§§pop() * §§pop());
                           if(!_loc6_)
                           {
                              addr77:
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 addr80:
                                 §§push(§§pop() - 2);
                                 if(_loc7_)
                                 {
                                    §§goto(addr84);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr80);
                     }
                     addr84:
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && param3))
                     {
                        return param2;
                     }
                  }
                  §§goto(addr53);
               }
               §§goto(addr74);
            }
            §§goto(addr77);
         }
         §§goto(addr28);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(param4);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() / 2);
                  if(!_loc7_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc7_)
                     {
                        §§goto(addr36);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr200);
               }
               §§goto(addr165);
            }
            addr36:
            §§push(§§pop());
            if(!_loc7_)
            {
               var _loc5_:* = §§pop();
               if(!(_loc7_ && param1))
               {
                  §§push(Number(§§pop()));
                  if(!_loc7_)
                  {
                     addr50:
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
                           if(!(_loc7_ && param2))
                           {
                              §§push(param3);
                              if(!_loc7_)
                              {
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(param1);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             §§push(param1);
                                             if(_loc6_ || §5";§)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc7_ && §5";§))
                                                {
                                                   §§push(param2);
                                                   if(!(_loc7_ && §5";§))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                      else
                                                      {
                                                         addr137:
                                                         §§push(-§§pop());
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            addr146:
                                                            §§push(§§pop() / 2);
                                                            if(_loc6_ || §5";§)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     addr165:
                                                                     §§push(§§pop());
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc6_)
                                                                        {
                                                                           param1 = §§pop();
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc6_ || §5";§)
                                                                              {
                                                                                 addr192:
                                                                                 §§push(§§pop() - 2);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr197:
                                                                                 §§push(§§pop() - 1);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr200:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc6_ || param3)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                     }
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr220);
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr128);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr137);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr128);
                           }
                           else
                           {
                              addr129:
                              §§push(param3);
                              if(!(_loc7_ && param3))
                              {
                                 §§goto(addr137);
                              }
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr146);
                  }
                  addr128:
                  return §§pop();
               }
               §§goto(addr50);
            }
            addr220:
            return §§pop() + param2;
         }
         §§goto(addr129);
      }
   }
}
