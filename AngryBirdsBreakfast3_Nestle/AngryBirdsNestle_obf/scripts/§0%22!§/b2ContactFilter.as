package §0"!§
{
   import §'!_§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §]2§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]2§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function §^m§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§9!l§();
         var _loc4_:b2FilterData = param2.§9!l§();
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc3_.§?!x§);
            if(!_loc7_)
            {
               §§push(_loc4_.§?!x§);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop());
                     while(true)
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
                                    §§push(_loc3_.§?!x§);
                                    if(!_loc7_)
                                    {
                                       §§push(0);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                addr145:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.§?!x§);
                                                            break loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr119:
                                                            §§pop();
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               if(true)
                                                               {
                                                                  addr195:
                                                                  §§push((_loc3_.§^!d§ & _loc4_.§+!+§) == 0);
                                                               }
                                                               else
                                                               {
                                                                  addr196:
                                                               }
                                                               continue loop4;
                                                               if(_loc6_ || param1)
                                                               {
                                                                  break loop2;
                                                               }
                                                               break loop5;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§+!+§);
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_.§^!d§);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(_loc7_ && param1)
                                                            {
                                                               break loop4;
                                                            }
                                                            §§push(0);
                                                            if(_loc6_ || param1)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr195);
                                                         }
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                continue loop5;
                                             }
                                             addr144:
                                          }
                                          break;
                                       }
                                       addr223:
                                       §§goto(addr224);
                                       §§push(§§pop());
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc7_)
                                       {
                                          break loop2;
                                       }
                                       if(_loc6_ || _loc3_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr196);
                                 }
                              }
                           }
                           §§push(!§§pop());
                           if(_loc6_ || this)
                           {
                              addr222:
                              §§push(Boolean(§§pop()));
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr144);
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        if(§§pop())
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr222);
                     }
                  }
                  §§goto(addr222);
               }
            }
            §§goto(addr196);
         }
         §§goto(addr155);
      }
      
      public function §+",§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!param1)
            {
               if(_loc4_)
               {
                  addr38:
                  §§push(true);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return this.§^m§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr38);
      }
   }
}
