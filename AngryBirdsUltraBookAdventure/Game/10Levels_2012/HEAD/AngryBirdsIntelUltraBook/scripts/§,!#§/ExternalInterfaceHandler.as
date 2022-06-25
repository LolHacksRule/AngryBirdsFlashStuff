package §,!#§
{
   import §'N§.Log;
   import flash.external.ExternalInterface;
   
   public class ExternalInterfaceHandler
   {
      
      public static var §1!<§:Boolean = true;
      
      private static var §<!@§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §1!<§ = true;
            do
            {
               §<!@§ = {};
            }
            while(!_loc2_);
            
         }
      }
      
      public function ExternalInterfaceHandler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
            if(!§<!@§[param1])
            {
               if(!_loc4_)
               {
                  §<!@§[param1] = new ExternalInterfaceMethod(param1);
                  if(_loc5_ || param1)
                  {
                     addr59:
                     (§<!@§[param1] as ExternalInterfaceMethod).addCallback(param2);
                  }
                  §§goto(addr81);
               }
            }
            §§goto(addr59);
         }
         catch(e:Error)
         {
         }
         addr81:
      }
      
      public static function §<!<§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || ExternalInterfaceHandler)
         {
            if(§<!@§[param1])
            {
               if(!_loc3_)
               {
                  (§<!@§[param1] as ExternalInterfaceMethod).§<!<§(param2);
               }
            }
         }
      }
      
      public static function §!!@§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
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
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(!_loc6_)
                           {
                              if(_loc7_)
                              {
                                 §§pop().§§slot[2] = rest;
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§push(call);
                                    if(!_loc6_)
                                    {
                                       if(_loc6_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop() + "(");
                                    }
                                    §§pop().§§slot[3] = §§pop();
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    if(_loc6_ && param1)
                                    {
                                       break loop5;
                                    }
                                    if(!(_loc7_ || rest))
                                    {
                                       continue loop1;
                                    }
                                    if(false)
                                    {
                                       continue loop5;
                                    }
                                    var _loc4_:int = 0;
                                    var _loc5_:* = params;
                                    addr196:
                                    if(§§hasnext(_loc5_,_loc4_))
                                    {
                                       addr190:
                                       var obj:Object = §§nextvalue(_loc4_,_loc5_);
                                       addr195:
                                       if(obj != null)
                                       {
                                          addr154:
                                          if(_loc7_ || rest)
                                          {
                                             addr162:
                                             §§push(§§newactivation());
                                             if(_loc7_)
                                             {
                                                addr185:
                                                addr165:
                                                §§push(debugStr);
                                                if(!_loc6_)
                                                {
                                                   addr184:
                                                   §§push(§§pop() + (obj.toString() + ", "));
                                                }
                                                §§pop().§§slot[3] = §§pop();
                                                §§goto(addr196);
                                                addr186:
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§push(§§newactivation());
                                       if(_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(§§newactivation());
                                             if(_loc7_)
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(!(_loc6_ && rest))
                                                {
                                                   §§push("null");
                                                   if(_loc7_ || ExternalInterfaceHandler)
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         addr126:
                                                         §§push(§§pop() + (§§pop() + ", "));
                                                         if(!_loc6_)
                                                         {
                                                            addr130:
                                                            §§push(§§pop());
                                                            if(_loc7_)
                                                            {
                                                               §§pop().§§slot[3] = §§pop();
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr190);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr162);
                                    }
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc7_)
                                       {
                                          §§push(debugStr);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + ");");
                                          }
                                          §§pop().§§slot[3] = §§pop();
                                          if(_loc7_ || _loc3_)
                                          {
                                             addr237:
                                             §§push(Log);
                                             §§push("ExternalInterface call: ");
                                             if(_loc7_ || param1)
                                             {
                                                §§push(§§pop() + debugStr);
                                             }
                                             §§pop().log(§§pop());
                                             if(_loc7_ || ExternalInterfaceHandler)
                                             {
                                                §§push(Boolean(ExternalInterface.available));
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && rest))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr232:
                                                         §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            §§push(§1!<§);
                                                            if(!_loc7_)
                                                            {
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   addr285:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         try
                                                         {
                                                            addr289:
                                                            params.unshift(call);
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr296);
                                                            }
                                                            addr304:
                                                         }
                                                         catch(e:Error)
                                                         {
                                                            §§push(Log);
                                                            §§push("ExternalInterface call failed!\nCall was:");
                                                            if(!(_loc6_ && ExternalInterfaceHandler))
                                                            {
                                                               §§push(§§pop() + call);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(§§pop() + "\nError data:");
                                                               }
                                                            }
                                                            §§pop().log(§§pop() + e.toString());
                                                         }
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr304);
                                             addr279:
                                          }
                                          addr296:
                                          return ExternalInterface.call.apply(null,params);
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr279);
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
