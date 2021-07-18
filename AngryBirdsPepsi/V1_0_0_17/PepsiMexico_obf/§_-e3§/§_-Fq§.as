package §_-e3§
{
   public class §_-Fq§
   {
       
      
      public function §_-Fq§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §_-tf§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(param2)
            {
               if(_loc3_ || param1)
               {
                  §§push(1);
                  if(_loc3_ || param1)
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        param1 = §§pop() - §§pop();
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(param1);
                           §§push(param1);
                           if(!(_loc4_ && §_-Fq§))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_ || §_-Fq§)
                              {
                                 param1 = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§goto(addr94);
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr94);
                     }
                  }
               }
               §§goto(addr92);
            }
            addr94:
            §§push(param1);
            if(_loc3_)
            {
               addr97:
               §§push(§§pop() * param1);
            }
            return §§pop();
         }
         addr92:
         return 1 - param1;
      }
      
      public static function §_-Ba§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(param3);
            if(_loc5_ || param2)
            {
               §§push(0);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_ || §_-Fq§)
                           {
                              addr56:
                              §§push(param3);
                              if(_loc5_)
                              {
                                 addr61:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       addr69:
                                       param2 = Math.max(0,param2);
                                    }
                                    addr80:
                                    var _loc4_:Number = Math.pow(10,param2);
                                    if(_loc5_ || §_-Fq§)
                                    {
                                       §§push(Math.round(param1 * _loc4_) / _loc4_);
                                       if(_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       param1 = §§pop();
                                       if(_loc5_ || param1)
                                       {
                                          §§push(param3);
                                          §§push(0);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc5_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§pop();
                                                      if(!(_loc6_ && §_-Fq§))
                                                      {
                                                         addr142:
                                                         §§push(param3);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr152:
                                                            if(§§pop() < 10)
                                                            {
                                                               if(_loc5_ || param2)
                                                               {
                                                                  addr160:
                                                                  §§push(§§findproperty(§_-Ba§));
                                                                  §§push(param1);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(param3);
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        addr178:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(param2 - 1);
                                                                     }
                                                                     param1 = Number(§§pop().§_-Ba§(§§pop(),§§pop(),-1) / param3);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr188);
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               addr188:
                                                               §§push(Number(§_-Ba§(param1,param2,-1)));
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr208:
                                                                  param1 = §§pop();
                                                                  addr209:
                                                                  §§push(param1);
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr69);
                        }
                     }
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr80);
         }
         §§goto(addr56);
      }
   }
}
