package §3a§
{
   public class §7P§
   {
       
      
      public function §7P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §2!A§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2)
            {
               if(_loc4_)
               {
                  §§push(1);
                  if(_loc4_ || param2)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc4_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(_loc4_ || §7P§)
                           {
                              param1 = §§pop();
                              if(!_loc3_)
                              {
                                 addr73:
                                 §§push(param1);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_)
                                       {
                                          §§goto(addr88);
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                                 addr88:
                                 param1 = Number(§§pop());
                                 §§goto(addr87);
                              }
                              §§goto(addr98);
                           }
                        }
                        addr87:
                        if(_loc4_)
                        {
                           addr93:
                           §§push(1 - param1);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr98:
                           §§push(param1 * param1);
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr73);
      }
      
      public static function §-N§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(param3);
            if(_loc5_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr41:
                           §§pop();
                           if(!_loc6_)
                           {
                              addr73:
                              §§push(param3);
                              if(!(_loc6_ && param1))
                              {
                                 addr53:
                                 §§push(§§pop() < 10);
                              }
                              var _loc4_:* = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(Number(Math.round(param1 * _loc4_) / _loc4_));
                                 if(_loc5_ || §7P§)
                                 {
                                    param1 = §§pop();
                                    if(!_loc6_)
                                    {
                                       §§push(param3);
                                       if(_loc5_ || §7P§)
                                       {
                                          §§push(0);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr200:
                                                         addr199:
                                                         §§push(param3);
                                                         if(_loc5_ || param3)
                                                         {
                                                            addr144:
                                                            §§push(§§pop() < 10);
                                                         }
                                                         return Number(§§pop());
                                                         addr201:
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr148:
                                                   §§push(§§findproperty(§-N§));
                                                   §§push(param1);
                                                   if(!(_loc6_ && §7P§))
                                                   {
                                                      §§push(param3);
                                                      if(!_loc6_)
                                                      {
                                                         addr161:
                                                         §§push(§§pop() * §§pop());
                                                         §§push(param2 - 1);
                                                      }
                                                      §§push(§§pop().§-N§(§§pop(),§§pop(),-1));
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() / param3);
                                                         if(_loc5_ || param3)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc6_)
                                                            {
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                         param1 = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            §§push(§-N§(param1,param2,-1));
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr199);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr161);
                                                }
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr148);
                                 }
                              }
                              §§goto(addr200);
                           }
                           addr62:
                           param2 = Math.max(0,param2);
                           §§goto(addr73);
                           §§push(Number(Math.pow(10,param2)));
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc5_ || param2)
                        {
                        }
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr41);
               }
               §§goto(addr53);
            }
            §§goto(addr73);
         }
         §§goto(addr41);
      }
   }
}
