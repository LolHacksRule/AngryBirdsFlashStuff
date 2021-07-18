package §"J§
{
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §!W§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!W§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §5"8§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§9"1§();
         var _loc4_:b2FilterData = param2.§9"1§();
         if(_loc6_)
         {
            §§push(_loc3_.§6"2§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc4_.§6"2§);
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
                                    §§push(_loc3_.§6"2§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(0);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          while(true)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                addr89:
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop());
                                                if(_loc6_ || param1)
                                                {
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr124:
                                                         if(!_loc7_)
                                                         {
                                                            addr126:
                                                            §§pop();
                                                            if(!(_loc6_ || param2))
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_.§'"2§);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(_loc4_.§=6§);
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              §§push(§§pop() & §§pop());
                                                                              if(_loc7_ && _loc3_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              §§push(0);
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(!(_loc6_ || _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() > §§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr179:
                                                                                 }
                                                                                 continue loop6;
                                                                                 break;
                                                                              }
                                                                              addr206:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr209);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr202:
                                                                           §§push(_loc4_.§'"2§);
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     addr180:
                                                                     return §§pop();
                                                                     addr27:
                                                                  }
                                                                  break;
                                                                  §§goto(addr126);
                                                               }
                                                               continue loop4;
                                                               addr181:
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(_loc3_.§=6§);
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr227);
                                                }
                                             }
                                             continue loop3;
                                             addr209:
                                             §§push(!§§pop());
                                             if(_loc6_ || this)
                                             {
                                                addr227:
                                                return Boolean(§§pop());
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                    break;
                                 }
                                 addr205:
                                 §§goto(addr206);
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 addr174:
                                 §§push(_loc3_.§6"2§);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr179);
                                    §§push(0);
                                 }
                                 else
                                 {
                                    §§goto(addr205);
                                 }
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr27);
                        }
                     }
                  }
               }
            }
            §§goto(addr205);
         }
         §§goto(addr174);
      }
      
      public function §+""§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return this.§5"8§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
         }
         §§goto(addr52);
      }
   }
}
