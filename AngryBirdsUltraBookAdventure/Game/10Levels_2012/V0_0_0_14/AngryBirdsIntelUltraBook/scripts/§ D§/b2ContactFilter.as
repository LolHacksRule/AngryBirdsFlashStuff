package § D§
{
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5!7§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!7§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function §>?§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§[J§();
         var _loc4_:b2FilterData = param2.§[J§();
         if(_loc7_ || this)
         {
            §§push(_loc3_.§6!e§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§6!e§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc3_.§6!e§);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       §§push(0);
                                       loop5:
                                       for(; !_loc6_; if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc7_)
                                             {
                                                §§goto(addr78);
                                             }
                                             addr103:
                                             if(!(_loc6_ && param2))
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§pop();
                                                   if(_loc6_ && param2)
                                                   {
                                                      if(!(_loc7_ || param1))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§goto(addr33);
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr33);
                                                         §§push(_loc3_.§ H§);
                                                      }
                                                      addr122:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr138);
                                                   }
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr149);
                                          }
                                          break loop1;
                                       })
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr136:
                                             while(true)
                                             {
                                                while(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§,9§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc4_.§ H§);
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(0);
                                                               if(_loc6_ && param1)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr187:
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  return §§pop() > §§pop();
                                                               }
                                                               addr149:
                                                               §§goto(addr148);
                                                            }
                                                            break loop4;
                                                         }
                                                         addr185:
                                                         §§push(§§pop() & §§pop());
                                                         break loop4;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr185);
                                                   §§push(_loc4_.§,9§);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                addr138:
                                                §§push(_loc3_.§6!e§);
                                                if(_loc6_ && _loc3_)
                                                {
                                                   break loop4;
                                                }
                                                addr148:
                                                continue loop5;
                                                return §§pop();
                                                continue loop6;
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr187);
                              }
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr187);
                  }
                  break;
               }
               §§push(!§§pop());
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr198);
               }
               §§goto(addr187);
            }
         }
         §§goto(addr122);
      }
      
      public function §8!Q§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(!param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return this.§>?§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
         }
         §§goto(addr46);
      }
   }
}
