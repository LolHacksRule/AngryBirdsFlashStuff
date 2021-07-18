package §_-Iw§
{
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-QX§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-QX§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §_-Zp§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§_-ys§();
         var _loc4_:b2FilterData = param2.§_-ys§();
         if(!_loc7_)
         {
            §§push(_loc3_.§_-oa§);
            if(_loc6_ || this)
            {
               §§push(_loc4_.§_-oa§);
               if(_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc3_.§_-oa§);
                           if(_loc6_ || param1)
                           {
                              §§push(0);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() != §§pop());
                                 if(!_loc7_)
                                 {
                                    addr82:
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(_loc3_.§_-oa§);
                                          if(_loc6_ || param1)
                                          {
                                             addr94:
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                return §§pop() > §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr117:
                                             §§push(0);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                addr125:
                                                §§push(§§pop() != §§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§pop();
                                                            addr154:
                                                            §§push((_loc3_.§try§ & _loc4_.§_-Gi§) == 0);
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr157);
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr154);
                                       }
                                       else
                                       {
                                          addr101:
                                          §§push(_loc3_.§_-Gi§);
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_.§try§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§pop() & §§pop());
                                                if(_loc6_)
                                                {
                                                   §§goto(addr117);
                                                }
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr82);
                  }
                  addr157:
                  §§push(!§§pop());
                  if(!_loc6_)
                  {
                  }
                  return §§pop();
               }
               §§goto(addr125);
            }
            §§goto(addr94);
         }
         §§goto(addr154);
      }
      
      public function §_-nf§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(true);
                  if(!(_loc4_ && param2))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  §§push(this.§_-Zp§(param1 as b2Fixture,param2));
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
   }
}
