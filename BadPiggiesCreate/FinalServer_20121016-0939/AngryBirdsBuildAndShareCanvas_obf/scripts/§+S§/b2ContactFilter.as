package §+S§
{
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §5"=§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2ContactFilter)
         {
            §5"=§ = new b2ContactFilter();
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
      
      public function § each§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§%!$§();
         var _loc4_:b2FilterData = param2.§%!$§();
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc3_.§[-§);
            loop0:
            while(true)
            {
               §§push(_loc4_.§[-§);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     addr178:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr180:
                              while(true)
                              {
                                 addr140:
                                 while(true)
                                 {
                                    §§push(_loc3_.§[-§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr144:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                          }
                                          addr156:
                                          while(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(_loc3_.§!!R§);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(_loc4_.§?!C§);
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      if(_loc7_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr185:
                                                      §§push(§§pop() & §§pop());
                                                   }
                                                   §§goto(addr186);
                                                }
                                                break;
                                             }
                                             §§goto(addr185);
                                             §§push(_loc4_.§!!R§);
                                          }
                                          addr157:
                                          §§push(_loc3_.§[-§);
                                          if(_loc7_)
                                          {
                                             addr163:
                                             return §§pop() > 0;
                                          }
                                          §§goto(addr186);
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr155);
                     }
                  }
                  addr177:
               }
               addr186:
               §§push(§§pop() == 0);
               if(!(_loc6_ && this))
               {
                  addr205:
                  §§push(!§§pop());
                  if(_loc7_)
                  {
                     addr208:
                     return Boolean(§§pop());
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public function §+!@§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return this.§ each§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
   }
}
