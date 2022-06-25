package §_-aU§
{
   import §_-5§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §_-Rt§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-Rt§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function §_-VH§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§_-et§();
         var _loc4_:b2FilterData = param2.§_-et§();
         if(_loc6_)
         {
            §§push(_loc3_.§_-0CL§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§_-0CL§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && param2))
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_.§_-0CL§);
                                       if(!(_loc7_ && param2))
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          addr124:
                                          while(true)
                                          {
                                             §§push(_loc3_.§_-0CL§);
                                             continue loop0;
                                          }
                                       }
                                       addr199:
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       addr27:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc3_.§_-j6§);
                                          if(!(_loc7_ && param2))
                                          {
                                             addr204:
                                             §§push(_loc4_.§_-R-§);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() & §§pop());
                                                if(!(_loc7_ && this))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(0);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(_loc7_ && param1)
                                                      {
                                                         break loop8;
                                                      }
                                                      addr66:
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(_loc7_ && _loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(!§§pop());
                                                            if(_loc7_)
                                                            {
                                                            }
                                                            addr214:
                                                            return Boolean(§§pop());
                                                            addr213:
                                                         }
                                                         §§push(§§pop());
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§pop();
                                                                  if(_loc7_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§push(_loc3_.§_-R-§);
                                                                        break loop10;
                                                                     }
                                                                     §§goto(addr124);
                                                                  }
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc7_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc6_ || this)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr199);
                                                               }
                                                               addr198:
                                                            }
                                                            §§goto(addr66);
                                                         }
                                                         addr135:
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   addr206:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr214);
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                                addr205:
                                                §§goto(addr206);
                                                §§push(0);
                                             }
                                             §§goto(addr205);
                                             §§push(§§pop() & §§pop());
                                          }
                                          break;
                                       }
                                       §§goto(addr204);
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr27);
                           }
                           §§push(§§pop() > §§pop());
                           if(_loc6_)
                           {
                              return §§pop();
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr214);
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function §_-Kw§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(!(_loc3_ && param2))
               {
                  §§push(true);
                  if(!(_loc3_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  return this.§_-VH§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
   }
}
