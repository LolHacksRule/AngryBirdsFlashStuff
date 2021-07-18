package §&!"§
{
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §>3§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || b2ContactFilter)
         {
            §>3§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function §4!T§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§<!O§();
         var _loc4_:b2FilterData = param2.§<!O§();
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc3_.§&T§);
            if(_loc6_ || param1)
            {
               §§push(_loc4_.§&T§);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && this))
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc3_.§&T§);
                                    if(_loc6_)
                                    {
                                       §§push(0);
                                       if(!(_loc7_ && param2))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc6_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc6_ || _loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(_loc3_.§&T§);
                                                         if(_loc7_ && this)
                                                         {
                                                            addr195:
                                                            break loop4;
                                                         }
                                                         addr162:
                                                         §§push(§§pop() > 0);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr165);
                                                         }
                                                         addr213:
                                                         addr213:
                                                         addr214:
                                                         return §§pop();
                                                         addr213:
                                                      }
                                                      else
                                                      {
                                                         addr166:
                                                         while(true)
                                                         {
                                                         }
                                                         addr166:
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§+!0§);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc4_.§]@§);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!(_loc6_ || param2))
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    addr95:
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(_loc3_.§]@§);
                                                                                             }
                                                                                             continue loop4;
                                                                                             break;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              §§goto(addr213);
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     §§goto(addr95);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr162);
                                                                  }
                                                               }
                                                               break loop4;
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         addr194:
                                                         §§goto(addr195);
                                                         §§push(§§pop() & §§pop());
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr194);
                                                }
                                                addr143:
                                             }
                                             addr209:
                                             §§push(!§§pop());
                                             if(!_loc7_)
                                             {
                                                §§goto(addr212);
                                             }
                                             §§goto(addr213);
                                          }
                                          addr165:
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    §§goto(addr162);
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc6_)
                                 {
                                    §§goto(addr209);
                                 }
                                 §§goto(addr213);
                              }
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr143);
                     }
                  }
               }
            }
            §§goto(addr195);
         }
         §§goto(addr166);
      }
      
      public function §-_§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(!param1)
            {
               if(!_loc4_)
               {
                  §§push(true);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return this.§4!T§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
   }
}
