package
{
   import §;8§.§3f§;
   import flash.external.ExternalInterface;
   
   public class §%B§
   {
      
      public static var dynamic:Boolean = true;
      
      private static var §7c§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            dynamic = true;
         }
         do
         {
            §7c§ = {};
         }
         while(!_loc2_);
         
      }
      
      public function §%B§()
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
            if(!§7c§[param1])
            {
               if(!(_loc4_ && _loc3_))
               {
                  §7c§[param1] = new §7[§(param1);
                  if(!_loc4_)
                  {
                     addr56:
                     (§7c§[param1] as §7[§).addCallback(param2);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr56);
         }
         catch(e:Error)
         {
         }
         addr75:
      }
      
      public static function §2&§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§7c§[param1])
            {
               if(_loc3_ || param1)
               {
                  (§7c§[param1] as §7[§).§2&§(param2);
               }
            }
         }
      }
      
      public static function §,!2§(param1:String, ... rest) : *
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
               while(true)
               {
                  §§push(param1);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 §§pop().§§slot[2] = rest;
                                 while(!(_loc7_ && rest))
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc7_)
                                    {
                                       §§push(call);
                                       if(_loc6_ || §%B§)
                                       {
                                          §§pop().§§slot[3] = §§pop() + "(";
                                          if(!(_loc6_ || param1))
                                          {
                                             continue;
                                          }
                                          if(!(_loc6_ || §%B§))
                                          {
                                             break loop5;
                                          }
                                          if(false)
                                          {
                                             continue loop5;
                                          }
                                          var _loc4_:int = 0;
                                          var _loc5_:* = params;
                                          addr186:
                                          if(§§hasnext(_loc5_,_loc4_))
                                          {
                                             addr180:
                                             var obj:Object = §§nextvalue(_loc4_,_loc5_);
                                             addr185:
                                             if(obj)
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   if(!(_loc7_ && §%B§))
                                                   {
                                                      addr162:
                                                      §§push(§§newactivation());
                                                      if(_loc6_)
                                                      {
                                                         addr175:
                                                         addr165:
                                                         §§push(debugStr);
                                                         if(_loc6_)
                                                         {
                                                            addr174:
                                                            §§push(§§pop() + (obj.toString() + ", "));
                                                         }
                                                         §§pop().§§slot[3] = §§pop();
                                                         addr176:
                                                         §§goto(addr186);
                                                         addr176:
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§push(§§newactivation());
                                             if(_loc6_ || param1)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc6_ || rest)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push("null");
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() + ", ");
                                                            }
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  addr128:
                                                                  §§pop().§§slot[3] = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr180);
                                                                     }
                                                                     §§goto(addr186);
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§push(§§newactivation());
                                          if(!(_loc7_ && §%B§))
                                          {
                                             §§pop().§§slot[3] = debugStr + ");";
                                             addr206:
                                             §§push(§3f§);
                                             §§push("ExternalInterface call: ");
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(§§pop() + debugStr);
                                             }
                                             §§pop().log(§§pop());
                                             if(!_loc7_)
                                             {
                                                §§push(Boolean(ExternalInterface.available));
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§pop();
                                                         if(_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr206);
                                                            }
                                                            §§push(dynamic);
                                                            if(!(_loc7_ && rest))
                                                            {
                                                               addr245:
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         try
                                                         {
                                                            addr248:
                                                            params.unshift(call);
                                                            return ExternalInterface.call.apply(null,params);
                                                            addr247:
                                                         }
                                                         catch(e:Error)
                                                         {
                                                            §§push(§3f§);
                                                            §§push("ExternalInterface call failed!\nCall was:");
                                                            if(_loc6_ || rest)
                                                            {
                                                               §§push(§§pop() + call);
                                                               if(!(_loc7_ && rest))
                                                               {
                                                                  §§push(§§pop() + "\nError data:");
                                                               }
                                                            }
                                                            §§pop().log(§§pop() + e.toString());
                                                            §§goto(addr309);
                                                         }
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr247);
                                                   }
                                                   addr309:
                                                   return;
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr248);
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
   }
}
