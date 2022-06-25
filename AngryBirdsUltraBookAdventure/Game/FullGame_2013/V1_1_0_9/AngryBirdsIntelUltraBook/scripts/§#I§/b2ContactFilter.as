package §#I§
{
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var §^!J§:b2ContactFilter;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!J§ = new b2ContactFilter();
         }
      }
      
      public function b2ContactFilter()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function §'!F§(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2FilterData = param1.§4!Z§();
         var _loc4_:b2FilterData = param2.§4!Z§();
         if(_loc6_ || param2)
         {
            §§push(_loc3_.§"!7§);
            if(!_loc7_)
            {
               §§push(_loc4_.§"!7§);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc6_ || param2)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§pop();
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_.§"!7§);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(0);
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          addr121:
                                          §§goto(addr193);
                                       }
                                    }
                                    break;
                                 }
                                 addr180:
                                 §§goto(addr181);
                              }
                           }
                           break;
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr193);
                  }
                  break;
               }
               §§push(!§§pop());
               if(_loc6_)
               {
                  §§goto(addr192);
               }
               addr193:
               loop4:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc6_)
                  {
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(_loc3_.§?!K§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(_loc4_.§[!k§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() & §§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_ || param2)
                                       {
                                          break loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr181:
                                    }
                                    continue loop3;
                                    break loop4;
                                 }
                                 break loop2;
                              }
                              addr179:
                              §§push(§§pop() & §§pop());
                              break loop2;
                           }
                           break;
                           addr137:
                        }
                        §§goto(addr179);
                        §§push(_loc4_.§?!K§);
                     }
                     addr126:
                     §§push(_loc3_.§"!7§);
                     if(_loc7_)
                     {
                        break loop2;
                     }
                     §§push(0);
                     if(!_loc7_)
                     {
                        addr134:
                        return §§pop() > §§pop();
                     }
                     §§goto(addr181);
                     addr124:
                  }
                  break;
               }
               addr193:
               return §§pop();
            }
            §§goto(addr180);
         }
         §§goto(addr126);
      }
      
      public function §8x§(param1:*, param2:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(!param1)
            {
               if(_loc4_ || this)
               {
                  addr43:
                  §§push(true);
                  if(_loc4_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return this.§'!F§(param1 as b2Fixture,param2);
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr43);
      }
   }
}
