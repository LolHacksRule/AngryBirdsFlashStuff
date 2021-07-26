package §6"1§
{
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §-"H§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-"H§ = new b2ContactFilter();
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
      
      public function §[">§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§%"L§();
         var _loc4_:b2FilterData = param2.§%"L§();
         if(!(_loc7_ && param2))
         {
            §§push(_loc3_.§+!,§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§+!,§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr194:
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc3_.§+!,§);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(0);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                addr154:
                                                addr162:
                                                loop5:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc3_.§+!,§);
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         addr121:
                                                         §§pop();
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(true)
                                                            {
                                                               addr200:
                                                               §§push((_loc3_.§@!1§ & _loc4_.§="[§) == 0);
                                                            }
                                                            else
                                                            {
                                                               addr201:
                                                            }
                                                            continue loop9;
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr209:
                                                               §§push(!§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  addr212:
                                                                  return Boolean(§§pop());
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§="[§);
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_.§@!1§);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break loop5;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   addr165:
                                                   break;
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc7_ && param2))
                                                {
                                                   return §§pop();
                                                }
                                                continue loop3;
                                             }
                                             continue loop1;
                                             addr153:
                                          }
                                          §§goto(addr212);
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                              }
                           }
                        }
                        §§goto(addr153);
                        addr106:
                        if(_loc7_ && _loc3_)
                        {
                           continue;
                        }
                        if(§§pop())
                        {
                           if(_loc6_ || param2)
                           {
                              §§goto(addr121);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr212);
                     }
                  }
                  §§goto(addr209);
               }
            }
         }
         §§goto(addr194);
      }
      
      public function §0!x§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               if(!_loc4_)
               {
                  addr22:
                  §§push(true);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr26:
                  return this.§[">§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr26);
         }
         §§goto(addr22);
      }
   }
}
