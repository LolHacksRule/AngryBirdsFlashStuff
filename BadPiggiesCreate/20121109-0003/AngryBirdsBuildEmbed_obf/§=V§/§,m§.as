package §=V§
{
   import § !r§.§`![§;
   import flash.external.ExternalInterface;
   
   public class §,m§
   {
      
      public static var §0!$§:Boolean = true;
      
      private static var §7!A§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §0!$§ = true;
            if(!_loc1_)
            {
               §7!A§ = {};
            }
         }
      }
      
      public function §,m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§7!A§[param1])
            {
               if(!(_loc5_ && param1))
               {
                  §7!A§[param1] = new §-!9§(param1);
                  if(_loc4_ || param1)
                  {
                     addr60:
                     (§7!A§[param1] as §-!9§).addCallback(param2);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr60);
         }
         catch(e:Error)
         {
         }
         addr79:
      }
      
      public static function § s§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§7!A§[param1])
            {
               if(_loc3_)
               {
                  (§7!A§[param1] as §-!9§).§ s§(param2);
               }
            }
         }
      }
      
      public static function performCall(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[4] = null;
            if(!(_loc6_ && param1))
            {
               §§push(§§newactivation());
               if(_loc7_)
               {
                  §§push(param1);
                  if(_loc7_ || _loc3_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!_loc6_)
                     {
                        addr48:
                        §§push(§§newactivation());
                        if(_loc7_ || param1)
                        {
                           §§pop().§§slot[2] = rest;
                           if(_loc7_)
                           {
                              addr63:
                              var debugStr:String = call + "(";
                              addr61:
                           }
                        }
                        §§goto(addr61);
                     }
                     var _loc4_:int = 0;
                     var _loc5_:* = params;
                     while(§§hasnext(_loc5_,_loc4_))
                     {
                        §§push(§§newactivation());
                        if(_loc7_)
                        {
                           §§pop().§§slot[4] = §§nextvalue(_loc4_,_loc5_);
                           if(_loc7_)
                           {
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 if(§§pop().§§slot[4])
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc7_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && §,m§))
                                          {
                                             §§push(§§pop().§§slot[3]);
                                             if(!_loc6_)
                                             {
                                                §§push(obj.toString() + ", ");
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_ || rest)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr146:
                                                         }
                                                         continue;
                                                      }
                                                      addr157:
                                                      §§push("null");
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr165:
                                                         §§push(§§pop() + ", ");
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   addr169:
                                                   §§pop().§§slot[3] = §§pop();
                                                   continue;
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr157);
                                          }
                                          else
                                          {
                                             addr149:
                                             §§push(§§pop().§§slot[3]);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr169);
                                       }
                                       else
                                       {
                                          addr148:
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr149);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr148);
                                    §§push(§§newactivation());
                                 }
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr148);
                     }
                     if(!_loc6_)
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           §§pop().§§slot[3] = debugStr + ");";
                           if(!_loc6_)
                           {
                              §§push(§`![§);
                              §§push("ExternalInterface call: ");
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + debugStr);
                              }
                              §§pop().log(§§pop());
                              addr194:
                              §§push(Boolean(ExternalInterface.available));
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_ || rest)
                                    {
                                       §§pop();
                                       addr214:
                                       §§push(§0!$§);
                                       if(_loc7_)
                                       {
                                          addr217:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    §§goto(addr217);
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       try
                                       {
                                          §§goto(addr222);
                                       }
                                       catch(e:Error)
                                       {
                                          §§push(§`![§);
                                          §§push("ExternalInterface call failed!\nCall was:");
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(§§pop() + call);
                                             if(_loc7_ || rest)
                                             {
                                             }
                                          }
                                          §§goto(addr276);
                                       }
                                    }
                                 }
                                 addr276:
                                 §§pop().log(§§pop() + e.toString());
                                 return;
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr214);
                        }
                        addr222:
                        params.unshift(call);
                        return ExternalInterface.call.apply(null,params);
                     }
                     §§goto(addr194);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr48);
         }
         §§goto(addr63);
      }
   }
}
