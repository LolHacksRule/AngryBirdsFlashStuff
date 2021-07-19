package §`j§
{
   import §2!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §+! §:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2ContactFilter))
         {
            §+! § = new b2ContactFilter();
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
      
      public function §`V§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§;5§();
         var _loc4_:b2FilterData = param2.§;5§();
         if(_loc6_)
         {
            §§push(_loc3_.§4g§);
            if(_loc6_ || _loc3_)
            {
               §§push(_loc4_.§4g§);
               loop0:
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
                        if(!§§pop())
                        {
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc6_)
                                       {
                                          addr153:
                                          §§push(_loc3_.§4g§ > 0);
                                          if(!_loc7_)
                                          {
                                             return §§pop();
                                          }
                                          addr203:
                                          §§goto(addr184);
                                       }
                                       else
                                       {
                                          addr174:
                                       }
                                       while(true)
                                       {
                                          break loop5;
                                       }
                                       addr174:
                                    }
                                    else
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          addr27:
                                          while(true)
                                          {
                                             §§push(_loc3_.§&!8§);
                                             if(!_loc7_)
                                             {
                                                §§push(_loc4_.§^-§);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§push(0);
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(_loc7_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr174);
                                                                  }
                                                                  addr173:
                                                               }
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                         addr181:
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            addr184:
                                                            §§push(!§§pop());
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               addr202:
                                                               return Boolean(§§pop());
                                                            }
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr153);
                                                      }
                                                   }
                                                   addr180:
                                                   §§goto(addr181);
                                                   §§push(0);
                                                }
                                                §§goto(addr180);
                                             }
                                             else
                                             {
                                                addr177:
                                                §§push(_loc4_.§&!8§);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr153);
                                       }
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr27);
                              }
                              while(true)
                              {
                                 §§push(_loc3_.§4g§);
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    if(!(_loc7_ && this))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr180);
                                 }
                                 §§goto(addr181);
                              }
                           }
                           continue loop0;
                           addr145:
                        }
                        §§goto(addr173);
                     }
                  }
               }
            }
            §§goto(addr180);
         }
         §§goto(addr174);
      }
      
      public function §-!O§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               if(_loc3_ || this)
               {
                  addr37:
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return this.§`V§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr37);
      }
   }
}
