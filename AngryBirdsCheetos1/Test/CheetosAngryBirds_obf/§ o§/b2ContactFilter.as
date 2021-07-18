package § o§
{
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §7l§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §7l§ = new b2ContactFilter();
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
      
      public function §#!7§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§+R§();
         var _loc4_:b2FilterData = param2.§+R§();
         if(_loc7_ || this)
         {
            §§push(_loc3_.§=!d§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc4_.§=!d§);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              addr195:
                              while(true)
                              {
                                 addr127:
                                 while(true)
                                 {
                                    §§push(_loc3_.§=!d§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc7_ || param1))
                                          {
                                             break;
                                          }
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(!§§pop());
                                             if(_loc7_ || param2)
                                             {
                                                while(!§§pop())
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.§&!6§);
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_.§5!G§);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§push(§§pop() & §§pop());
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr202:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                  }
                                                                  addr219:
                                                                  §§push(§§pop());
                                                                  break loop1;
                                                               }
                                                               continue loop5;
                                                            }
                                                            addr160:
                                                            §§push(0);
                                                            if(_loc7_ || param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr201:
                                                            §§push(0);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      else
                                                      {
                                                         addr200:
                                                         §§goto(addr201);
                                                         §§push(§§pop() & §§pop());
                                                      }
                                                      §§goto(addr201);
                                                      addr177:
                                                      while(true)
                                                      {
                                                         continue loop7;
                                                      }
                                                   }
                                                   §§goto(addr200);
                                                   §§push(_loc4_.§&!6§);
                                                }
                                                addr158:
                                                §§goto(addr160);
                                                §§push(_loc3_.§=!d§);
                                                addr156:
                                             }
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    addr215:
                                    §§push(!§§pop());
                                    if(!_loc6_)
                                    {
                                       addr218:
                                       §§push(Boolean(§§pop()));
                                    }
                                    §§goto(addr219);
                                 }
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                     break;
                  }
                  var _loc5_:* = §§pop();
                  return §§pop();
               }
            }
            §§goto(addr201);
         }
         §§goto(addr177);
      }
      
      public function §-#§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr38:
                  §§push(true);
                  if(!(_loc3_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return this.§#!7§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
   }
}
