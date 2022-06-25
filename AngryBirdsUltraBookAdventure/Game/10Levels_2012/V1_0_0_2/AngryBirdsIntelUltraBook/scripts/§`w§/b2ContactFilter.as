package §`w§
{
   import §7!u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §#3§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#3§ = new b2ContactFilter();
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
      
      public function §9e§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§,`§();
         var _loc4_:b2FilterData = param2.§,`§();
         if(_loc6_)
         {
            §§push(_loc3_.§6L§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§6L§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr204:
                  while(true)
                  {
                     §§push(§§pop());
                     addr205:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              while(true)
                              {
                                 addr143:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc3_.§6L§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(_loc3_.§6L§);
                                                      }
                                                      else
                                                      {
                                                         addr198:
                                                         while(true)
                                                         {
                                                            addr27:
                                                            addr179:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.§?!^§);
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(_loc4_.§`!U§);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr178:
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr212:
                                                                  §§push(_loc4_.§?!^§);
                                                               }
                                                               break loop5;
                                                            }
                                                            if(_loc6_ || this)
                                                            {
                                                               §§goto(addr197);
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr198:
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr27);
                                                }
                                                addr167:
                                             }
                                             addr224:
                                             return Boolean(§§pop());
                                             addr222:
                                          }
                                          addr197:
                                          return §§pop() > §§pop();
                                       }
                                       addr216:
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_)
                                       {
                                          addr219:
                                          §§push(!§§pop());
                                          if(!_loc6_)
                                          {
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    break;
                                 }
                                 addr134:
                                 §§goto(addr216);
                                 §§push(0);
                                 if(_loc7_ && param2)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr143);
                                 }
                                 else
                                 {
                                    §§push(_loc3_.§`!U§);
                                 }
                                 §§goto(addr212);
                              }
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr167);
                     }
                  }
               }
            }
         }
         §§goto(addr198);
      }
      
      public function §&W§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               if(_loc3_ || _loc3_)
               {
                  addr37:
                  §§push(true);
                  if(_loc3_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return this.§9e§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr37);
      }
   }
}
