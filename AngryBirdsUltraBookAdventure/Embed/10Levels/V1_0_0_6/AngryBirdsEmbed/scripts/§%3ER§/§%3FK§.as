package §>R§
{
   import §>K§.§9X§;
   import flash.external.ExternalInterface;
   
   public class §?K§
   {
      
      public static var §#!2§:Boolean = true;
      
      private static var §+3§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!2§ = true;
            if(_loc2_)
            {
               addr24:
               §+3§ = {};
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §?K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            if(!§+3§[param1])
            {
               if(_loc4_ || §?K§)
               {
                  §+3§[param1] = new §5§(param1);
                  if(!_loc5_)
                  {
                     addr55:
                     (§+3§[param1] as §5§).addCallback(param2);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr55);
         }
         catch(e:Error)
         {
         }
         addr74:
      }
      
      public static function §"!!§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§+3§[param1])
            {
               if(_loc3_ || §?K§)
               {
                  addr39:
                  (§+3§[param1] as §5§).§"!!§(param2);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function §+v§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc7_)
         {
            §§pop().§§slot[4] = null;
            if(_loc6_)
            {
               §§push(§§newactivation());
               if(_loc6_)
               {
                  addr31:
                  §§push(param1);
                  if(_loc6_ || _loc3_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(_loc6_ || §?K§)
                     {
                        addr47:
                        §§push(§§newactivation());
                        if(!_loc7_)
                        {
                           addr50:
                           §§pop().§§slot[2] = rest;
                           addr60:
                           if(_loc6_)
                           {
                              §§push(§§newactivation());
                           }
                           var _loc4_:int = 0;
                           var _loc5_:* = params;
                           while(§§hasnext(_loc5_,_loc4_))
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || §?K§)
                              {
                                 §§pop().§§slot[4] = §§nextvalue(_loc4_,_loc5_);
                                 if(_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc7_)
                                    {
                                       addr86:
                                       if(§§pop().§§slot[4] != null)
                                       {
                                          if(_loc6_ || §?K§)
                                          {
                                             addr96:
                                             §§push(§§newactivation());
                                             if(!_loc7_)
                                             {
                                                addr99:
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   if(_loc6_)
                                                   {
                                                      §§push(obj.toString() + ", ");
                                                      if(!(_loc7_ && rest))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc7_ && rest))
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  addr141:
                                                               }
                                                               continue;
                                                            }
                                                            addr152:
                                                            §§push("null");
                                                            if(_loc6_)
                                                            {
                                                               addr155:
                                                               §§push(§§pop() + ", ");
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         addr159:
                                                         §§pop().§§slot[3] = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                else
                                                {
                                                   addr144:
                                                   §§push(§§pop().§§slot[3]);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§goto(addr152);
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             else
                                             {
                                                addr143:
                                                §§push(§§newactivation());
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr141);
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr86);
                           }
                           §§push(§§newactivation());
                           if(_loc6_ || rest)
                           {
                              §§pop().§§slot[3] = debugStr + ");";
                              if(_loc6_ || param1)
                              {
                                 §§push(§9X§);
                                 §§push("ExternalInterface call: ");
                                 if(!(_loc7_ && §?K§))
                                 {
                                    §§push(§§pop() + debugStr);
                                 }
                                 §§pop().log(§§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(ExternalInterface.available));
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§pop();
                                             §§push(§#!2§);
                                             if(_loc6_ || §?K§)
                                             {
                                                addr222:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          try
                                          {
                                             addr225:
                                             params.unshift(call);
                                             §§goto(addr229);
                                          }
                                          catch(e:Error)
                                          {
                                             §§push(§9X§);
                                             §§push("ExternalInterface call failed!\nCall was:");
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(§§pop() + call);
                                                if(!(_loc7_ && §?K§))
                                                {
                                                   §§push(§§pop() + "\nError data:");
                                                }
                                             }
                                             §§pop().log(§§pop() + e.toString());
                                             §§goto(addr286);
                                          }
                                       }
                                       §§goto(addr286);
                                    }
                                    §§goto(addr222);
                                 }
                                 addr229:
                                 return ExternalInterface.call.apply(null,params);
                              }
                              addr286:
                              return;
                           }
                           §§goto(addr225);
                        }
                        addr57:
                        §§pop().§§slot[3] = call + "(";
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr57);
               }
               §§goto(addr50);
            }
            §§goto(addr47);
         }
         §§goto(addr31);
      }
   }
}
