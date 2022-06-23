package §<d§
{
   import §3a§.§7!+§;
   import flash.external.ExternalInterface;
   
   public class §9!1§
   {
      
      public static var §0m§:Boolean = true;
      
      private static var §`=§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §0m§ = true;
            if(!(_loc1_ && _loc1_))
            {
               §`=§ = {};
            }
         }
      }
      
      public function §9!1§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         try
         {
            if(!§`=§[param1])
            {
               if(_loc5_)
               {
                  §`=§[param1] = new §68§(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr56:
                     (§`=§[param1] as §68§).addCallback(param2);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr56);
         }
         catch(e:Error)
         {
         }
         addr75:
      }
      
      public static function §@u§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(§`=§[param1])
            {
               if(_loc4_ || param2)
               {
                  addr45:
                  (§`=§[param1] as §68§).§@u§(param2);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §!!I§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         if(_loc7_)
         {
            §§pop().§§slot[4] = null;
            if(!(_loc6_ && param1))
            {
               §§push(§§newactivation());
               if(!(_loc6_ && rest))
               {
                  addr42:
                  §§push(param1);
                  if(_loc7_ || _loc3_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc7_ || param1)
                        {
                           §§pop().§§slot[2] = rest;
                           if(!_loc7_)
                           {
                           }
                           addr71:
                           var _loc4_:int = 0;
                           var _loc5_:* = params;
                           while(§§hasnext(_loc5_,_loc4_))
                           {
                              §§push(§§newactivation());
                              if(_loc7_ || param1)
                              {
                                 §§pop().§§slot[4] = §§nextvalue(_loc4_,_loc5_);
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 §§push(§§newactivation());
                                 if(_loc7_)
                                 {
                                    if(§§pop().§§slot[4] != null)
                                    {
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                       §§push(§§newactivation());
                                       if(!_loc6_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && rest))
                                          {
                                             §§push(§§pop().§§slot[3]);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(obj.toString() + ", ");
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(_loc6_ && param1)
                                                         {
                                                         }
                                                         continue;
                                                      }
                                                      addr168:
                                                      §§push("null");
                                                      if(!_loc6_)
                                                      {
                                                         addr171:
                                                         §§push(§§pop() + ", ");
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   addr175:
                                                   §§pop().§§slot[3] = §§pop();
                                                   continue;
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr168);
                                          }
                                          else
                                          {
                                             addr165:
                                             §§push(§§pop().§§slot[3]);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr168);
                                             }
                                          }
                                          §§goto(addr175);
                                       }
                                       else
                                       {
                                          addr164:
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr165);
                                    }
                                    else
                                    {
                                       §§push(§§newactivation());
                                    }
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§push(§§newactivation());
                           if(_loc7_)
                           {
                              §§pop().§§slot[3] = debugStr + ");";
                              §§push(§7!+§);
                              §§push("ExternalInterface call: ");
                              if(_loc7_)
                              {
                                 §§push(§§pop() + debugStr);
                              }
                              §§pop().log(§§pop());
                              if(_loc7_)
                              {
                                 §§push(Boolean(ExternalInterface.available));
                                 if(_loc7_ || rest)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ || §9!1§)
                                       {
                                          addr217:
                                          §§pop();
                                          §§push(§0m§);
                                          if(!(_loc6_ && rest))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc7_ || §9!1§)
                                       {
                                          try
                                          {
                                             addr236:
                                             params.unshift(call);
                                             if(!(_loc6_ && §9!1§))
                                             {
                                                return ExternalInterface.call.apply(null,params);
                                             }
                                             addr254:
                                          }
                                          catch(e:Error)
                                          {
                                             §§push(§7!+§);
                                             §§push("ExternalInterface call failed!\nCall was:");
                                             if(_loc7_ || §9!1§)
                                             {
                                                §§push(§§pop() + call);
                                                if(_loc6_)
                                                {
                                                }
                                                addr292:
                                                §§pop().log(§§pop() + e.toString());
                                             }
                                             §§goto(addr292);
                                          }
                                       }
                                       §§goto(addr254);
                                    }
                                    return;
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr236);
                        }
                        addr68:
                        §§pop().§§slot[3] = call + "(";
                        addr66:
                        §§goto(addr71);
                     }
                     §§goto(addr66);
                     §§push(§§newactivation());
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr71);
         }
         §§goto(addr42);
      }
   }
}
