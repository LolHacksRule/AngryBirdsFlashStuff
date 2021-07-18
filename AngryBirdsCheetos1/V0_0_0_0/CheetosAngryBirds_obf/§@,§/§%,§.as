package §@,§
{
   public class §%,§
   {
       
      
      public function §%,§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §#8§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(!param2)
            {
               addr24:
               §§push(param1);
               if(!_loc4_)
               {
                  if(!(_loc4_ && param2))
                  {
                     if(!(_loc4_ && §%,§))
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              addr53:
                              §§push(§§pop() * §§pop());
                              if(!(_loc4_ && param1))
                              {
                                 return §§pop();
                              }
                              loop7:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    addr116:
                                    param1 = §§pop();
                                    if(_loc3_ || param2)
                                    {
                                       §§push(1);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             addr139:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr140:
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr141:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      §§push(param1);
                                                      if(_loc3_ || param2)
                                                      {
                                                         §§push(param1);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr113:
                                                            while(true)
                                                            {
                                                               continue loop7;
                                                            }
                                                         }
                                                         addr112:
                                                      }
                                                      §§goto(addr113);
                                                      continue loop3;
                                                   }
                                                }
                                                §§goto(addr116);
                                             }
                                             while(true)
                                             {
                                                §§push(1);
                                                addr138:
                                                while(true)
                                                {
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr116);
                                             }
                                             addr139:
                                             addr137:
                                          }
                                          §§goto(addr86);
                                       }
                                       §§goto(addr138);
                                       §§goto(addr139);
                                    }
                                    else
                                    {
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr113);
                  }
                  addr86:
                  return §§pop() - §§pop();
               }
               §§goto(addr53);
            }
            §§goto(addr139);
         }
         §§goto(addr24);
      }
      
      public static function §-V§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param3);
            if(!(_loc5_ && param3))
            {
               §§push(0);
               if(!(_loc5_ && §%,§))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              addr74:
                              §§push(param3);
                              if(_loc6_ || param1)
                              {
                                 addr54:
                                 §§push(§§pop() < 10);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_ || param3)
                              {
                                 §§push(Math.round(param1 * _loc4_) / _loc4_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr248:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr249:
                                       while(true)
                                       {
                                          §§push(param3);
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr187);
                           }
                           addr63:
                           param2 = Math.max(0,param2);
                           §§goto(addr74);
                           §§push(Number(Math.pow(10,param2)));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_ && param1)
                     {
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr54);
            }
            §§goto(addr74);
         }
         §§goto(addr63);
      }
   }
}
