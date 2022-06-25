package §#V§
{
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5!o§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!o§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function §'!3§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§%!v§();
         var _loc4_:b2FilterData = param2.§%!v§();
         if(_loc6_)
         {
            §§push(_loc3_.§^b§);
            if(_loc6_ || param1)
            {
               §§push(_loc4_.§^b§);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr169:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc6_ || param2)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr189:
                              while(true)
                              {
                                 addr103:
                                 addr196:
                                 while(true)
                                 {
                                    §§push(_loc3_.§^b§);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       return §§pop() > §§pop();
                                    }
                                    addr154:
                                    continue loop0;
                                 }
                                 addr196:
                                 §§push(§§pop() == 0);
                                 if(_loc6_)
                                 {
                                    §§goto(addr209);
                                 }
                                 §§goto(addr207);
                              }
                           }
                           addr188:
                        }
                        else
                        {
                           while(true)
                           {
                              addr134:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc3_.§'!7§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(_loc4_.§8K§);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(!_loc7_)
                                             {
                                                §§push(0);
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  addr79:
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc3_.§8K§);
                                                                              break loop5;
                                                                           }
                                                                        }
                                                                        addr101:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr135:
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(_loc3_.§^b§);
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc6_ || _loc3_))
                                                                              {
                                                                                 §§goto(addr196);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr189);
                                                                        }
                                                                     }
                                                                     §§goto(addr103);
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr79);
                                                }
                                             }
                                             §§goto(addr196);
                                          }
                                          addr194:
                                          §§goto(addr196);
                                          §§push(§§pop() & §§pop());
                                       }
                                       break;
                                    }
                                    §§goto(addr194);
                                    §§push(_loc4_.§'!7§);
                                 }
                                 §§goto(addr135);
                              }
                           }
                           addr133:
                        }
                        §§goto(addr196);
                     }
                     addr209:
                     §§push(!§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        addr207:
                        return Boolean(§§pop());
                     }
                  }
               }
            }
            §§goto(addr196);
         }
         §§goto(addr101);
      }
      
      public function § &§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               if(!_loc4_)
               {
                  addr22:
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr26:
                  return this.§'!3§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr26);
         }
         §§goto(addr22);
      }
   }
}
