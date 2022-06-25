package §6!a§
{
   import §6b§.Log;
   
   public class Server
   {
      
      private static var §@n§:§?!!§;
      
      private static var §[!j§:ResponseHandler;
      
      private static var §,T§:Boolean = true;
      
      public static var §]6§:String = "";
      
      public static var §=`§:XML;
      
      public static var §@§:XML;
      
      public static const §`l§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,T§ = true;
         }
         do
         {
            §]6§ = "";
            do
            {
               §`l§ = true;
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
      }
      
      public function Server()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(§=`§ == null)
            {
               if(!(_loc8_ && _loc2_))
               {
                  addr29:
                  Log.log("Server configuration not avaialble");
                  if(!(_loc7_ || Server))
                  {
                     addr42:
                     var _loc2_:XML = null;
                     if(!(_loc8_ && _loc2_))
                     {
                        if(param1 != null)
                        {
                           if(!(_loc8_ && Server))
                           {
                              addr62:
                              _loc2_ = §&$§(param1,§=`§);
                              addr69:
                              if(_loc2_ == null)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    _loc2_ = §&$§(§=`§.Default[0].toString(),§=`§);
                                    addr91:
                                    §§push(Log);
                                    §§push("Using connection profile:");
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + _loc2_.Id[0]);
                                    }
                                    §§pop().log(§§pop());
                                    if(!(_loc8_ && Server))
                                    {
                                       addr120:
                                       §@§ = _loc2_;
                                    }
                                 }
                                 var _loc3_:Class = §"!+§[_loc2_.ConnectionType[0].toString()];
                                 var _loc4_:Class = §3!Z§[_loc2_.ResponseType[0].toString()];
                                 var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                 if(!_loc8_)
                                 {
                                    if(_loc2_.ServerType[0] != null)
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          addr167:
                                          §]6§ = _loc2_.ServerType[0].toString();
                                       }
                                    }
                                    var _loc6_:String = _loc2_.Address[0].toString();
                                    if(_loc7_ || Server)
                                    {
                                       §@n§ = new _loc3_(_loc6_,_loc5_);
                                    }
                                    do
                                    {
                                       §[!j§ = new _loc4_();
                                       do
                                       {
                                          §@n§.§]!5§(§[!j§.§>8§,§[!j§.§0W§);
                                       }
                                       while(_loc8_ && param1);
                                       
                                    }
                                    while(!(_loc7_ || param1));
                                    
                                    return;
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr62);
                  }
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr29);
      }
      
      public static function §&$§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            if(param1 != null)
            {
               addr25:
               for each(_loc3_ in §=`§.Connection)
               {
                  if(_loc7_)
                  {
                     if(!_loc3_.Id[0])
                     {
                        if(_loc6_)
                        {
                        }
                     }
                     else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(_loc7_ || param1)
                        {
                           return _loc3_;
                        }
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr25);
      }
      
      public static function §&7§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§@§ == null);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc1_))
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop2:
                  for(; §§pop(); continue loop0)
                  {
                     if(_loc1_)
                     {
                        return null;
                     }
                     if(!(_loc2_ && Server))
                     {
                        break;
                     }
                     addr102:
                     loop3:
                     while(true)
                     {
                        §§push(!§@§.Directories);
                        if(_loc1_ || _loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        addr101:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  return §@§.Directories[0];
                  addr60:
               }
               §§goto(addr101);
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr102);
      }
      
      public static function §&H§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §[!j§.§&H§(param1,param2);
         }
      }
      
      public static function §`!8§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §[!j§.§-!T§(param1).addCallback(param2);
         }
      }
      
      public static function §`!^§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §[!j§.§-!T§(param1).§in§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:ServerCommand = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(!_loc10_)
         {
            §§push(§,T§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(Log);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(_loc11_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               if(!(_loc10_ && param1))
               {
                  §§push(§`l§);
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push("");
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr179:
                              while(true)
                              {
                                 Log.log("URL sending...");
                                 loop6:
                                 for(; !(_loc10_ && param2); if(_loc10_ && Server)
                                 {
                                    continue;
                                 },§§push(§@n§.§^!B§()),if(_loc11_ || param2)
                                 {
                                    §§goto(addr85);
                                 },§§goto(addr104))
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§]6§);
                                       loop8:
                                       while(!_loc10_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc10_ && Server))
                                          {
                                             §§push(Boolean(§§pop()));
                                             continue loop0;
                                          }
                                          addr145:
                                          loop12:
                                          while(true)
                                          {
                                             §§pop();
                                             loop11:
                                             for(; !_loc10_; continue loop12)
                                             {
                                                while(true)
                                                {
                                                   §§push(§]6§);
                                                   if(_loc11_ || param2)
                                                   {
                                                      §§push("PHP");
                                                      if(!(_loc10_ && Server))
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc11_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr112:
                                                                     while(true)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           var _loc8_:int = 0;
                                                                           var _loc9_:* = param2;
                                                                           addr222:
                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                        }
                                                                        continue loop7;
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§push(§§nextname(_loc8_,_loc9_));
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push("&");
                                                                                       if(!(_loc10_ && Server))
                                                                                       {
                                                                                          §§push(§§pop() + _loc5_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() + "=");
                                                                                             if(_loc10_)
                                                                                             {
                                                                                             }
                                                                                             addr221:
                                                                                             _loc4_ = §§pop() + §§pop();
                                                                                             addr219:
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          §§push(§§pop() + param2[_loc5_]);
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    Log.log(_loc4_);
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       addr279:
                                                                                       break loop1;
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 addr277:
                                                                                 if(true)
                                                                                 {
                                                                                    addr311:
                                                                                    _loc8_ = 0;
                                                                                    addr448:
                                                                                    if(_loc11_ || Server)
                                                                                    {
                                                                                       _loc9_ = param2;
                                                                                       addr427:
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          addr445:
                                                                                          §§push(§§hasnext(_loc9_,_loc8_));
                                                                                          break;
                                                                                       }
                                                                                       if(_loc6_ == 0)
                                                                                       {
                                                                                          addr429:
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr435:
                                                                                             _loc4_ += "?";
                                                                                             addr354:
                                                                                             addr436:
                                                                                             addr434:
                                                                                             addr433:
                                                                                             addr432:
                                                                                             §§push(_loc4_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr404:
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(_loc7_ + "=");
                                                                                                      if(_loc11_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + param2[_loc7_]);
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr391:
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  addr392:
                                                                                                                  if(!(_loc10_ && param2))
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc11_ || Server)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                        if(_loc11_)
                                                                                                                        {
                                                                                                                           addr342:
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              addr345:
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr354);
                                                                                                                                       }
                                                                                                                                       §§goto(addr445);
                                                                                                                                    }
                                                                                                                                    §§goto(addr429);
                                                                                                                                 }
                                                                                                                                 §§goto(addr436);
                                                                                                                              }
                                                                                                                              §§goto(addr392);
                                                                                                                           }
                                                                                                                           §§goto(addr427);
                                                                                                                        }
                                                                                                                        §§goto(addr345);
                                                                                                                     }
                                                                                                                     §§goto(addr342);
                                                                                                                  }
                                                                                                                  addr424:
                                                                                                                  §§goto(addr354);
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                            addr415:
                                                                                                            addr416:
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc10_ && Server))
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            _loc7_ = §§pop();
                                                                                                            §§goto(addr427);
                                                                                                         }
                                                                                                         §§goto(addr433);
                                                                                                      }
                                                                                                      addr414:
                                                                                                      §§goto(addr415);
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   if(!(_loc10_ && param2))
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§goto(addr414);
                                                                                                         §§push("&");
                                                                                                      }
                                                                                                      §§goto(addr432);
                                                                                                   }
                                                                                                   §§goto(addr435);
                                                                                                }
                                                                                                §§goto(addr416);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr427);
                                                                                       }
                                                                                       §§goto(addr404);
                                                                                       §§push(_loc4_);
                                                                                    }
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       Log.log(_loc4_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           addr447:
                                                                           §§goto(addr448);
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr415);
                                                                        §§push(§§nextname(_loc8_,_loc9_));
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§]6§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(§§pop() == "Google")
                                                                        {
                                                                           addr287:
                                                                           §§push(§@n§.§^!B§());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr292:
                                                                              §§push(§§pop() + param1);
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           addr296:
                                                                           §§push(0);
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr277);
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                               }
                                                               continue loop3;
                                                               addr62:
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop12;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(§§pop() + param1);
                                                         }
                                                         if(!(_loc11_ || _loc3_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop());
                                                         while(true)
                                                         {
                                                            if(_loc10_ && _loc3_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                      }
                                                      addr86:
                                                      §§goto(addr112);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr85:
                                                   }
                                                   §§goto(addr86);
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc3_ = §[!j§.§-!T§(param1);
                  if(_loc11_ || param2)
                  {
                     if(_loc3_.§4Y§())
                     {
                        if(_loc11_ || Server)
                        {
                           §@n§.sendRequest(param1,param2);
                           if(!_loc11_)
                           {
                           }
                        }
                     }
                     else
                     {
                        Log.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  break;
               }
               §§goto(addr179);
            }
            return;
         }
         §§goto(addr148);
      }
      
      public static function enable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,T§ = true;
         }
         do
         {
            §@n§.§1?§();
         }
         while(!(_loc2_ || Server));
         
      }
      
      public static function §-Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §,T§ = false;
            do
            {
               §@n§.§;k§();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public static function §4!7§() : Boolean
      {
         return §,T§;
      }
      
      public static function §+!B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §[!j§.§-!T§(param1).§4%§(true);
         }
      }
      
      public static function §,5§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §[!j§.§-!T§(param1).§4%§(false);
         }
      }
      
      public static function §"w§() : String
      {
         return §@n§.§^!B§();
      }
      
      public static function §9'§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§=`§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
   }
}
