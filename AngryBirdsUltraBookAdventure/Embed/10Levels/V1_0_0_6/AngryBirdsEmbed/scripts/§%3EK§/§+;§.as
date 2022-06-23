package §>K§
{
   public class §+;§
   {
       
      
      public function §+;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §=z§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(param2)
            {
               if(!_loc4_)
               {
                  addr27:
                  §§push(1);
                  if(_loc3_ || §+;§)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        param1 = §§pop() - §§pop();
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(param1);
                              if(!(_loc4_ && param2))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    param1 = §§pop();
                                    if(!_loc4_)
                                    {
                                       addr91:
                                       §§push(1 - param1);
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr97:
                                       §§push(param1);
                                       if(_loc4_ && _loc3_)
                                       {
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§push(param1);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           addr107:
                           return §§pop();
                        }
                     }
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr97);
         }
         §§goto(addr27);
      }
      
      public static function §]=§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param3);
            if(!(_loc6_ && param1))
            {
               §§push(0);
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(param3);
                              if(!_loc6_)
                              {
                                 addr54:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       addr62:
                                       param2 = Math.max(0,param2);
                                    }
                                    §§push(Number(Math.pow(10,param2)));
                                 }
                                 §§goto(addr62);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 §§push(Math.round(param1 * _loc4_) / _loc4_);
                                 if(_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_)
                                    {
                                       param1 = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(param3);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(0);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(_loc5_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§pop();
                                                         if(!(_loc6_ && §+;§))
                                                         {
                                                            §§push(param3);
                                                            if(!_loc6_)
                                                            {
                                                               addr142:
                                                               if(§§pop() < 10)
                                                               {
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     addr150:
                                                                     §§push(§§findproperty(§]=§));
                                                                     §§push(param1);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr167);
                                                                     }
                                                                     §§goto(addr163);
                                                                  }
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr142);
                                          }
                                          addr167:
                                          §§push(param3);
                                          if(!(_loc6_ && §+;§))
                                          {
                                             addr163:
                                             §§push(§§pop() * §§pop());
                                             §§push(param2 - 1);
                                          }
                                          §§push(§§pop().§]=§(§§pop(),§§pop(),-1) / param3);
                                          if(_loc5_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc6_ && param1))
                                             {
                                                addr194:
                                                param1 = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr197:
                                                   §§push(§]=§(param1,param2,-1));
                                                   if(_loc5_ || param2)
                                                   {
                                                      addr209:
                                                      §§push(Number(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         param1 = §§pop();
                                                         addr213:
                                                         §§push(param1);
                                                      }
                                                   }
                                                }
                                                §§goto(addr213);
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr197);
                                    }
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr62);
                        }
                     }
                  }
               }
            }
            §§goto(addr54);
         }
         §§goto(addr62);
      }
   }
}
