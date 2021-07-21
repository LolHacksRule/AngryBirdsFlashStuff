package § !t§
{
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §0w§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2ContactFilter))
         {
            §0w§ = new b2ContactFilter();
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
      
      public function §`t§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2FilterData = param1.§[!V§();
         var _loc4_:b2FilterData = param2.§[!V§();
         if(!_loc6_)
         {
            §§push(_loc3_.§%x§);
            if(_loc7_ || _loc3_)
            {
               §§push(_loc4_.§%x§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc3_.§%x§);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc7_ || param1)
                              {
                                 addr82:
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(_loc3_.§%x§);
                                       if(_loc7_)
                                       {
                                          addr89:
                                          §§push(0);
                                          if(_loc7_ || param2)
                                          {
                                             return §§pop() > §§pop();
                                          }
                                          addr145:
                                          §§push(§§pop() == §§pop());
                                          if(!_loc6_)
                                          {
                                             §§push(!§§pop());
                                             §§push(!§§pop());
                                             if(!_loc6_)
                                             {
                                                addr152:
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr164);
                                             }
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr166);
                                    }
                                    else
                                    {
                                       addr101:
                                       §§push(_loc3_.§#$§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(_loc4_.§]!J§);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(§§pop() & §§pop());
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(0);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§goto(addr145);
                                                }
                                             }
                                          }
                                          §§goto(addr166);
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr101);
                              }
                              addr166:
                              §§push((_loc3_.§]!J§ & _loc4_.§#$§) != 0);
                              if(!_loc6_)
                              {
                                 addr164:
                                 §§push(Boolean(§§pop()));
                              }
                              return §§pop();
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr152);
               }
               §§goto(addr82);
            }
            §§goto(addr89);
         }
         §§goto(addr101);
      }
      
      public function §>!=§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(true);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  §§push(this.§`t§(param1 as b2Fixture,param2));
               }
               return §§pop();
            }
         }
         §§goto(addr46);
      }
   }
}
