package §#I§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §^!J§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^!J§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function §'!F§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§4!Z§();
         var _loc4_:b2FilterData = param2.§4!Z§();
         if(_loc7_ || this)
         {
            §§push(_loc3_.§"!7§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§"!7§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc3_.§"!7§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(0);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(!(_loc7_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                loop6:
                                                while(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§?!K§);
                                                      if(_loc7_ || param2)
                                                      {
                                                         addr205:
                                                         §§push(_loc4_.§[!k§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() & §§pop());
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               addr160:
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr163:
                                                                        §§push(§§pop() > §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(!§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           addr113:
                                                                           §§pop();
                                                                           if(_loc7_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break loop6;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 §§push(_loc3_.§[!k§);
                                                                                 break;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        var _loc5_:* = §§pop();
                                                                        return §§pop();
                                                                     }
                                                                     addr225:
                                                                     continue loop2;
                                                                     break loop1;
                                                                  }
                                                                  break loop5;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr163);
                                                                  §§push(0);
                                                               }
                                                               addr160:
                                                            }
                                                            addr206:
                                                            break loop5;
                                                         }
                                                         §§goto(addr206);
                                                         §§push(§§pop() & §§pop());
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr205);
                                                   §§push(_loc4_.§?!K§);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr160);
                                                }
                                                addr156:
                                                addr158:
                                             }
                                             addr223:
                                             §§push(Boolean(§§pop()));
                                          }
                                          §§goto(addr225);
                                          §§push(§§pop());
                                       }
                                       break;
                                    }
                                    §§goto(addr160);
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc7_ || param2)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr223);
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                  }
                  break;
               }
               §§push(!§§pop());
               if(!(_loc6_ && _loc3_))
               {
                  §§goto(addr223);
               }
               §§goto(addr224);
            }
         }
         §§goto(addr158);
      }
      
      public function §8x§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(!param1)
            {
               if(_loc4_ || param1)
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
                  addr47:
                  return this.§'!F§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
   }
}
