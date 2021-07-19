package §3!`§
{
   import §'F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var § !G§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !G§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §%g§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§'"0§();
         var _loc4_:b2FilterData = param2.§'"0§();
         if(!_loc6_)
         {
            §§push(_loc3_.§5!F§);
            if(_loc7_)
            {
               §§push(_loc4_.§5!F§);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc7_ || _loc3_)
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
                                    §§push(_loc3_.§5!F§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop7:
                                             while(_loc7_)
                                             {
                                                if(!(_loc7_ || this))
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§`"%§);
                                                         if(!_loc6_)
                                                         {
                                                            addr155:
                                                            §§push(_loc4_.§9!W§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(_loc6_ && param2)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr90:
                                                                                          §§pop();
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§9!W§);
                                                                                                }
                                                                                                continue loop4;
                                                                                                break;
                                                                                             }
                                                                                             addr116:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr120:
                                                                                                §§push(_loc3_.§5!F§);
                                                                                                §§push(0);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   break loop5;
                                                                                                }
                                                                                                addr174:
                                                                                                addr157:
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                }
                                                                                                addr173:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                §§push(Boolean(§§pop()));
                                                                                                break loop1;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§push(!§§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr173);
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        §§goto(addr90);
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  §§goto(addr120);
                                                               }
                                                               addr156:
                                                               §§goto(addr157);
                                                               §§push(0);
                                                            }
                                                            §§goto(addr156);
                                                            §§push(§§pop() & §§pop());
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr155);
                                                      §§push(_loc4_.§`"%§);
                                                   }
                                                   §§goto(addr116);
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       break;
                                    }
                                    §§push(§§pop() > §§pop());
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr174);
                                 }
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                     break;
                  }
                  var _loc5_:* = §§pop();
                  return §§pop();
               }
            }
            §§goto(addr156);
         }
         §§goto(addr132);
      }
      
      public function §@!7§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(!param1)
            {
               if(_loc4_)
               {
                  addr38:
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return this.§%g§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr38);
      }
   }
}
