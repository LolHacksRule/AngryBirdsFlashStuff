package §3!R§
{
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §'!a§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!a§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §3!C§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§5[§();
         var _loc4_:b2FilterData = param2.§5[§();
         if(!_loc6_)
         {
            §§push(_loc3_.§7!-§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§7!-§);
               addr177:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr178:
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              §§pop();
                              loop3:
                              while(true)
                              {
                                 addr118:
                                 addr165:
                                 while(true)
                                 {
                                    §§push(_loc3_.§7!-§);
                                    continue loop0;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_.§+Q§);
                                       if(_loc7_)
                                       {
                                          addr195:
                                          §§push(_loc4_.§]!&§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(!_loc6_)
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   if(_loc6_ && param1)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(0);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr215:
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              §§push(_loc3_.§]!&§);
                                                                              break loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr218:
                                                                     §§push(Boolean(§§pop()));
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop2;
                                                                  }
                                                                  break loop2;
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                         }
                                                         §§push(!§§pop());
                                                         if(!_loc7_)
                                                         {
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      else
                                                      {
                                                         addr163:
                                                         §§push(§§pop() > §§pop());
                                                      }
                                                      addr164:
                                                      return §§pop();
                                                   }
                                                   addr197:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§goto(addr215);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                else
                                                {
                                                   addr162:
                                                   §§push(0);
                                                }
                                                §§goto(addr163);
                                             }
                                             addr196:
                                             §§goto(addr197);
                                             §§push(0);
                                          }
                                          §§goto(addr196);
                                          §§push(§§pop() & §§pop());
                                       }
                                       break;
                                    }
                                    §§goto(addr195);
                                    §§push(_loc4_.§+Q§);
                                 }
                                 §§goto(addr118);
                              }
                           }
                           else
                           {
                              §§goto(addr215);
                           }
                        }
                        else
                        {
                           addr151:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(_loc3_.§7!-§);
                                 }
                                 else
                                 {
                                    §§goto(addr165);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr28);
                           }
                           addr151:
                        }
                        §§goto(addr218);
                     }
                     break;
                  }
                  var _loc5_:* = §§pop();
                  return §§pop();
               }
            }
         }
         §§goto(addr116);
      }
      
      public function §[,§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!param1)
            {
               if(!_loc3_)
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
                  return this.§3!C§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr38);
      }
   }
}
