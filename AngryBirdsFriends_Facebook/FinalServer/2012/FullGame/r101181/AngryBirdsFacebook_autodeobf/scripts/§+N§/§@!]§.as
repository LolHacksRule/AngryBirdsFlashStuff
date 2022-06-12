package §+N§
{
   import §6o§.§+!k§;
   import flash.external.ExternalInterface;
   
   public class §@!]§
   {
      
      public static var §;"%§:Boolean = true;
      
      private static var §%H§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §@!]§))
         {
            §;"%§ = true;
            do
            {
               §%H§ = {};
            }
            while(_loc2_);
            
         }
      }
      
      public function §@!]§()
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
            if(!§%H§[param1])
            {
               if(_loc4_)
               {
                  §%H§[param1] = new §4"+§(param1);
                  if(_loc4_)
                  {
                     addr50:
                     (§%H§[param1] as §4"+§).addCallback(param2);
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr50);
         }
         catch(e:Error)
         {
         }
         addr69:
      }
      
      public static function §[">§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(§%H§[param1])
            {
               if(!(_loc3_ && param1))
               {
                  addr45:
                  (§%H§[param1] as §4"+§).§[">§(param2);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public static function §9"'§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               for(; _loc6_; if(_loc7_ && rest)
               {
                  continue;
               },§§goto(addr37))
               {
                  §§push(param1);
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     while(!(_loc7_ && rest))
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = rest;
                              addr64:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_ || rest)
                                 {
                                    continue loop2;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                           addr56:
                           if(_loc7_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           var _loc4_:int = 0;
                           var _loc5_:* = params;
                           addr192:
                           if(§§hasnext(_loc5_,_loc4_))
                           {
                              addr186:
                              var obj:Object = §§nextvalue(_loc4_,_loc5_);
                              addr191:
                              §§push(§§newactivation());
                              if(_loc6_ || rest)
                              {
                                 if(§§pop().§§slot[4] != null)
                                 {
                                    addr174:
                                    var debugStr:String = debugStr + (obj.toString() + ", ");
                                    addr175:
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr192);
                                    }
                                    §§goto(addr191);
                                    addr154:
                                    addr173:
                                    addr172:
                                    addr157:
                                    addr156:
                                    addr155:
                                 }
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop().§§slot[3]);
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push("null");
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() + ", ");
                                                   }
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr130:
                                                         §§pop().§§slot[3] = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr186);
                           }
                           if(!(_loc7_ && §@!]§))
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || rest)
                              {
                                 §§pop().§§slot[3] = debugStr + ");";
                                 if(!_loc7_)
                                 {
                                    addr229:
                                    §§push(§+!k§);
                                    §§push("ExternalInterface call: ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + debugStr);
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc6_ || §@!]§)
                                    {
                                       §§push(Boolean(ExternalInterface.available));
                                       if(_loc6_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && §@!]§))
                                             {
                                                §§pop();
                                                §§goto(addr293);
                                             }
                                             §§goto(addr270);
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                try
                                                {
                                                   addr275:
                                                   params.unshift(call);
                                                   addr274:
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      return ExternalInterface.call.apply(null,params);
                                                   }
                                                   §§goto(addr293);
                                                }
                                                catch(e:Error)
                                                {
                                                   §§push(§+!k§);
                                                   §§push("ExternalInterface call failed!\nCall was:");
                                                   if(!(_loc7_ && rest))
                                                   {
                                                      §§push(§§pop() + call);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + "\nError data:");
                                                      }
                                                   }
                                                   §§pop().log(§§pop() + e.toString());
                                                }
                                             }
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr274);
                                 }
                                 addr293:
                                 if(_loc6_)
                                 {
                                    addr227:
                                    if(false)
                                    {
                                       §§goto(addr229);
                                    }
                                    §§push(§;"%§);
                                    if(_loc6_ || rest)
                                    {
                                       addr270:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr275);
                           }
                           §§goto(addr227);
                        }
                     }
                     §§push(call);
                     addr37:
                     continue loop1;
                     if(_loc7_ && _loc3_)
                     {
                        continue;
                     }
                     §§pop().§§slot[3] = §§pop() + "(";
                     if(!(_loc7_ && _loc3_))
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr64);
                  }
               }
               continue loop0;
            }
         }
      }
   }
}
