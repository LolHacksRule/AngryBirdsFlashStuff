package §>!L§
{
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §4"§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4"§ = new b2ContactFilter();
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
      
      public function §,!5§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§@N§();
         var _loc4_:b2FilterData = param2.§@N§();
         if(!(_loc6_ && param2))
         {
            §§push(_loc3_.§4U§);
            if(_loc7_ || this)
            {
               §§push(_loc4_.§4U§);
               if(_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        addr203:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr214:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc3_.§4U§);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(0);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc7_ || param2)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc7_)
                                                   {
                                                      addr167:
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                      }
                                                      addr177:
                                                      §§push(_loc3_.§4U§ > 0);
                                                      if(!_loc6_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr240:
                                                      addr240:
                                                      return §§pop();
                                                      addr168:
                                                   }
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ && param1)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               addr135:
                                                               §§pop();
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr230:
                                                               addr230:
                                                               §§push((_loc3_.§4!<§ & _loc4_.§"!`§) == 0);
                                                               if(!_loc6_)
                                                               {
                                                                  addr233:
                                                                  §§push(!§§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr236:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr239:
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr177);
                                                         §§goto(addr240);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§"!`§);
                                                         if(_loc7_)
                                                         {
                                                            §§push(_loc4_.§4!<§);
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(!(_loc7_ || _loc3_))
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr177);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr230);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr177);
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      continue loop10;
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr233);
                                             }
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                    addr223:
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr168);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr230);
         }
         §§goto(addr223);
      }
      
      public function §<9§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(!param1);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr41:
                     §§push(true);
                     if(_loc4_)
                     {
                        §§goto(addr44);
                     }
                  }
                  else
                  {
                     addr45:
                     return this.§,!5§(param1 as b2Fixture,param2);
                  }
                  return §§pop();
               }
               §§goto(addr45);
            }
            addr44:
            return §§pop();
         }
         §§goto(addr41);
      }
   }
}
