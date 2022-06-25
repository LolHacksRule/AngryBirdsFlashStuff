package §^!7§
{
   import §<u§.Log;
   
   public class Server
   {
      
      private static var §`T§:§=]§;
      
      private static var §-U§:ResponseHandler;
      
      private static var §6!B§:Boolean = true;
      
      public static var §^!G§:String = "";
      
      public static var §[`§:XML;
      
      public static var §[!#§:XML;
      
      public static const §6P§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6!B§ = true;
            while(true)
            {
               §^!G§ = "";
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            §6P§ = true;
            if(!(_loc1_ && _loc1_))
            {
               if(!(_loc1_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
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
         if(!(_loc8_ && param1))
         {
            if(§[`§ == null)
            {
               if(!(_loc8_ && _loc2_))
               {
                  Log.log("Server configuration not avaialble");
                  if(_loc7_ || Server)
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            var _loc2_:XML = null;
            if(!(_loc8_ && _loc2_))
            {
               if(param1 != null)
               {
                  if(!(_loc8_ && Server))
                  {
                     addr67:
                     _loc2_ = §'S§(param1,§[`§);
                     addr74:
                     if(_loc2_ == null)
                     {
                        if(_loc7_ || param1)
                        {
                           _loc2_ = §'S§(§[`§.Default[0].toString(),§[`§);
                           addr96:
                           §§push(Log);
                           §§push("Using connection profile:");
                           if(!_loc8_)
                           {
                              §§push(§§pop() + _loc2_.Id[0]);
                           }
                           §§pop().log(§§pop());
                           if(!(_loc8_ && Server))
                           {
                              addr125:
                              §[!#§ = _loc2_;
                           }
                        }
                        var _loc3_:Class = §,m§[_loc2_.ConnectionType[0].toString()];
                        var _loc4_:Class = §]@§[_loc2_.ResponseType[0].toString()];
                        var _loc5_:Number = Number(_loc2_.Port[0].toString());
                        if(!_loc8_)
                        {
                           if(_loc2_.ServerType[0] != null)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 addr172:
                                 §^!G§ = _loc2_.ServerType[0].toString();
                              }
                           }
                           var _loc6_:String = _loc2_.Address[0].toString();
                           if(_loc7_ || Server)
                           {
                              §`T§ = new _loc3_(_loc6_,_loc5_);
                           }
                           do
                           {
                              §-U§ = new _loc4_();
                              do
                              {
                                 §`T§.§<]§(§-U§.§4!N§,§-U§.§=c§);
                              }
                              while(_loc8_ && param1);
                              
                           }
                           while(!(_loc7_ || param1));
                           
                           return;
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr125);
               }
               §§goto(addr74);
            }
            §§goto(addr67);
         }
         addr46:
      }
      
      public static function §'S§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            if(param1 != null)
            {
               addr25:
               for each(_loc3_ in §[`§.Connection)
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
      
      public static function §'!%§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§[!#§ == null);
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
                        §§push(!§[!#§.Directories);
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
                  return §[!#§.Directories[0];
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
      
      public static function §]g§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §-U§.§]g§(param1,param2);
         }
      }
      
      public static function §,l§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §-U§.§1![§(param1).addCallback(param2);
         }
      }
      
      public static function §-!e§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §-U§.§1![§(param1).§>!X§(param2);
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
            §§push(§6!B§);
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
                  §§push(§6P§);
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
                                 },§§push(§`T§.§>?§()),if(_loc11_ || param2)
                                 {
                                    §§goto(addr85);
                                 },§§goto(addr104))
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§^!G§);
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
                                                   §§push(§^!G§);
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
                                                                     §§push(§^!G§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(§§pop() == "Google")
                                                                        {
                                                                           addr287:
                                                                           §§push(§`T§.§>?§());
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
                  _loc3_ = §-U§.§1![§(param1);
                  if(_loc11_ || param2)
                  {
                     if(_loc3_.§;!I§())
                     {
                        if(_loc11_ || Server)
                        {
                           §`T§.sendRequest(param1,param2);
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
            §6!B§ = true;
         }
         do
         {
            §`T§.§03§();
         }
         while(!(_loc2_ || Server));
         
      }
      
      public static function §`!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6!B§ = false;
            do
            {
               §`T§.§=!&§();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public static function §'5§() : Boolean
      {
         return §6!B§;
      }
      
      public static function §6!k§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §-U§.§1![§(param1).§1!g§(true);
         }
      }
      
      public static function §9p§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §-U§.§1![§(param1).§1!g§(false);
         }
      }
      
      public static function §2s§() : String
      {
         return §`T§.§>?§();
      }
      
      public static function §"!B§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§[`§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
   }
}
