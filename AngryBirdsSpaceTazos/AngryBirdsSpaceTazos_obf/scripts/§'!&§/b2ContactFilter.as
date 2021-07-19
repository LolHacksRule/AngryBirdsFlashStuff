package §'!&§
{
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §'!7§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2ContactFilter)
         {
            §'!7§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function §!!Z§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§>"5§();
         var _loc4_:b2FilterData = param2.§>"5§();
         if(!_loc7_)
         {
            §§push(_loc3_.§=!l§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§=!l§);
               if(!_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(_loc3_.§5!@§);
                                 if(!_loc7_)
                                 {
                                    §§push(_loc4_.§ #§);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(!_loc7_)
                                       {
                                          §§push(0);
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc6_ || param2)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop());
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  addr77:
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc7_ && param1)
                                                                        {
                                                                           break loop8;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           §§push(_loc3_.§ #§);
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr159:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_.§=!l§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr166:
                                                                     §§push(§§pop() == 0);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§goto(addr189);
                                                                     }
                                                                     §§goto(addr187);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        addr128:
                                                                        addr158:
                                                                        while(!_loc7_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        §§goto(addr77);
                                                                     }
                                                                     addr127:
                                                                  }
                                                                  §§goto(addr159);
                                                               }
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr77);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                §§goto(addr77);
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                    addr164:
                                    §§goto(addr166);
                                    §§push(§§pop() & §§pop());
                                 }
                                 break;
                              }
                              §§goto(addr164);
                              §§push(_loc4_.§5!@§);
                           }
                           §§push(_loc3_.§=!l§);
                           if(_loc6_ || param1)
                           {
                              addr142:
                              §§push(§§pop() > §§pop());
                              if(!_loc7_)
                              {
                                 return §§pop();
                              }
                              addr189:
                              §§push(!§§pop());
                              if(!_loc7_)
                              {
                                 addr187:
                                 §§push(Boolean(§§pop()));
                              }
                              return §§pop();
                              §§push(0);
                           }
                           else
                           {
                              §§goto(addr166);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr158);
                     }
                  }
               }
               §§goto(addr166);
            }
         }
         §§goto(addr148);
      }
      
      public function §9!+§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(!param1)
            {
               if(_loc4_ || this)
               {
                  addr43:
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return this.§!!Z§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr43);
      }
   }
}
