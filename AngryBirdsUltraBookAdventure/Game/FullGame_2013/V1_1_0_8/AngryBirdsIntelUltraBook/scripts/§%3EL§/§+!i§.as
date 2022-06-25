package §>L§
{
   import §1!B§.§<m§;
   import flash.external.ExternalInterface;
   
   public class §+!i§
   {
      
      public static var §3"!§:Boolean = true;
      
      private static var §=[§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3"!§ = true;
            do
            {
               §=[§ = {};
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §+!i§()
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
            if(!§=[§[param1])
            {
               if(_loc5_ || _loc3_)
               {
                  §=[§[param1] = new § !2§(param1);
                  if(_loc5_)
                  {
                     addr56:
                     (§=[§[param1] as § !2§).addCallback(param2);
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
      
      public static function §=+§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§=[§[param1])
            {
               if(_loc4_ || param1)
               {
                  addr40:
                  (§=[§[param1] as § !2§).§=+§(param2);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public static function §>!y§(param1:String, ... rest) : *
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
                  addr67:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     loop4:
                     while(true)
                     {
                        addr50:
                        addr74:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§pop().§§slot[2] = rest;
                              addr54:
                              while(!_loc7_)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                        }
                        var _loc4_:int = 0;
                        var _loc5_:* = params;
                        addr202:
                        if(§§hasnext(_loc5_,_loc4_))
                        {
                           addr196:
                           var obj:Object = §§nextvalue(_loc4_,_loc5_);
                           addr201:
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              if(§§pop().§§slot[4] != null)
                              {
                                 if(!_loc7_)
                                 {
                                    addr175:
                                    §§push(§§newactivation());
                                    if(!(_loc7_ && §+!i§))
                                    {
                                       addr191:
                                       §§pop().§§slot[3] = debugStr + (obj.toString() + ", ");
                                       addr192:
                                       §§goto(addr202);
                                       addr192:
                                       addr190:
                                       addr189:
                                       addr184:
                                       addr183:
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr192);
                              }
                              §§push(§§newactivation());
                              if(!(_loc7_ && §+!i§))
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(!(_loc7_ && rest))
                                    {
                                       if(!(_loc7_ && rest))
                                       {
                                          §§push("null");
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(§§pop() + ", ");
                                          }
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc7_ && rest))
                                             {
                                                addr136:
                                                §§push(§§pop());
                                                if(_loc6_ || §+!i§)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr196);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr191);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr175);
                        }
                        if(!_loc7_)
                        {
                           §§push(§§newactivation());
                           if(!_loc7_)
                           {
                              §§pop().§§slot[3] = debugStr + ");";
                              addr231:
                              §§push(§<m§);
                              §§push("ExternalInterface call: ");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + debugStr);
                              }
                              §§pop().log(§§pop());
                              addr256:
                              if(!(_loc7_ && rest))
                              {
                                 §§push(Boolean(ExternalInterface.available));
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr231);
                                                }
                                                §§push(§3"!§);
                                                if(_loc7_ && param1)
                                                {
                                                }
                                                §§goto(addr266);
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr286);
                                       }
                                    }
                                 }
                                 addr266:
                                 if(§§pop())
                                 {
                                    if(_loc6_ || rest)
                                    {
                                       try
                                       {
                                          addr275:
                                          params.unshift(call);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§goto(addr286);
                                          }
                                          addr293:
                                       }
                                       catch(e:Error)
                                       {
                                          §§push(§<m§);
                                          §§push("ExternalInterface call failed!\nCall was:");
                                          if(_loc6_ || §+!i§)
                                          {
                                             §§push(§§pop() + call);
                                             if(!_loc6_)
                                             {
                                             }
                                             addr331:
                                             §§pop().log(§§pop() + e.toString());
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                    §§goto(addr286);
                                 }
                                 return;
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr275);
                        }
                        addr286:
                        return ExternalInterface.call.apply(null,params);
                     }
                  }
               }
            }
         }
      }
   }
}
