package §+!"§
{
   public class §2+§
   {
       
      
      public function §2+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §5r§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §2+§)
         {
            if(param2)
            {
               if(!_loc4_)
               {
                  §§push(1);
                  if(_loc3_)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        param1 = Number(§§pop() - §§pop());
                        if(!_loc4_)
                        {
                           addr48:
                           §§push(param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 §§push(Number(§§pop() * §§pop()));
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    param1 = §§pop();
                                    if(!(_loc4_ && §2+§))
                                    {
                                       §§goto(addr88);
                                    }
                                    else
                                    {
                                       addr90:
                                       §§push(param1);
                                       if(!(_loc4_ && §2+§))
                                       {
                                          addr99:
                                          §§push(§§pop() * param1);
                                       }
                                    }
                                 }
                                 return §§pop();
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr88);
                  }
                  addr88:
                  return 1 - param1;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr90);
      }
      
      public static function §0?§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            §§push(param3);
            if(_loc6_ || param2)
            {
               §§push(0);
               if(_loc6_ || param3)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(param3);
                              if(!(_loc5_ && param3))
                              {
                                 addr65:
                                 if(§§pop() < 10)
                                 {
                                    if(!_loc6_)
                                    {
                                    }
                                    addr79:
                                    var _loc4_:Number = Math.pow(10,param2);
                                    if(!_loc5_)
                                    {
                                       §§push(Number(Math.round(param1 * _loc4_) / _loc4_));
                                       if(!(_loc5_ && §2+§))
                                       {
                                          param1 = §§pop();
                                          if(!(_loc5_ && param2))
                                          {
                                             addr115:
                                             §§push(param3);
                                             if(!_loc5_)
                                             {
                                                §§push(0);
                                                if(_loc6_ || param3)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            addr133:
                                                            §§pop();
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr144:
                                                               if(param3 < 10)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§findproperty(§0?§));
                                                                     §§push(param1);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§push(param3);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr170:
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(param2 - 1);
                                                                        }
                                                                        §§push(§§pop().§0?§(§§pop(),§§pop(),-1));
                                                                        if(!_loc5_)
                                                                        {
                                                                           param1 = Number(§§pop() / param3);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr182);
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr195);
                                          }
                                          addr182:
                                          §§push(Number(§0?§(param1,param2,-1)));
                                          if(_loc6_ || param2)
                                          {
                                             addr195:
                                             param1 = §§pop();
                                             addr196:
                                             §§push(param1);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              §§goto(addr79);
                           }
                           param2 = Math.max(0,param2);
                           §§goto(addr79);
                        }
                     }
                  }
               }
               §§goto(addr65);
            }
         }
         §§goto(addr79);
      }
   }
}
