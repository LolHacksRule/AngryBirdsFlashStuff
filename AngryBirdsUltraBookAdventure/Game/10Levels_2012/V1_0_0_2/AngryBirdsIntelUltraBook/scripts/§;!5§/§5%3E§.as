package §;!5§
{
   import §^_§.§!>§;
   
   public class §5>§
   {
      
      private static var §@k§:§9!H§;
      
      private static var §=!P§:§!+§;
      
      private static var §&V§:Boolean = true;
      
      public static var §^!L§:String = "";
      
      public static var §-!b§:XML;
      
      public static var §[?§:XML;
      
      public static const §=!r§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&V§ = true;
            while(true)
            {
               §^!L§ = "";
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            §=!r§ = true;
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            if(§-!b§ == null)
            {
               if(_loc7_ || _loc2_)
               {
                  §!>§.log("Server configuration not avaialble");
                  if(!_loc8_)
                  {
                     §§goto(addr38);
                  }
               }
            }
            var _loc2_:XML = null;
            if(!_loc8_)
            {
               if(param1 != null)
               {
                  if(_loc7_ || §5>§)
                  {
                     addr54:
                     _loc2_ = §8!m§(param1,§-!b§);
                     addr60:
                     if(_loc2_ == null)
                     {
                        if(!_loc8_)
                        {
                           _loc2_ = §8!m§(§-!b§.Default[0].toString(),§-!b§);
                        }
                        addr105:
                        var _loc3_:Class = §6t§[_loc2_.ConnectionType[0].toString()];
                        var _loc4_:Class = §4U§[_loc2_.ResponseType[0].toString()];
                        var _loc5_:Number = Number(_loc2_.Port[0].toString());
                        if(!(_loc8_ && _loc3_))
                        {
                           if(_loc2_.ServerType[0] != null)
                           {
                              if(!_loc8_)
                              {
                                 addr147:
                                 §^!L§ = _loc2_.ServerType[0].toString();
                              }
                           }
                           var _loc6_:String = _loc2_.Address[0].toString();
                           if(_loc7_ || param1)
                           {
                              §@k§ = new _loc3_(_loc6_,_loc5_);
                              while(true)
                              {
                                 §=!P§ = new _loc4_();
                                 §§goto(addr205);
                              }
                           }
                           addr205:
                           while(true)
                           {
                              §@k§.§@;§(§=!P§.§2>§,§=!P§.§3'§);
                              if(!_loc8_)
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           return;
                        }
                        §§goto(addr147);
                     }
                     §§push(§!>§);
                     §§push("Using connection profile:");
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(§§pop() + _loc2_.Id[0]);
                     }
                     §§pop().log(§§pop());
                     if(_loc7_)
                     {
                        §[?§ = _loc2_;
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr60);
            }
            §§goto(addr54);
         }
         addr38:
      }
      
      public static function §8!m§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!(_loc7_ && param1))
         {
            if(param1 != null)
            {
               §§goto(addr29);
            }
            return null;
         }
         addr29:
         var _loc4_:int = 0;
         var _loc5_:* = §-!b§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc7_ && §5>§))
               {
                  if(!_loc3_.Id[0])
                  {
                     if(_loc7_)
                     {
                        break;
                     }
                  }
                  else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                  {
                     if(_loc6_ || param2)
                     {
                        break;
                     }
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §?T§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§[?§ == null);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr81:
                     while(true)
                     {
                        §§push(!§[?§.Directories);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr80:
               }
               while(§§pop())
               {
                  if(_loc1_ && _loc1_)
                  {
                     break;
                  }
                  addr72:
                  if(_loc2_)
                  {
                     return null;
                  }
                  §§goto(addr81);
               }
               return §[?§.Directories[0];
            }
            §§goto(addr80);
         }
         §§goto(addr72);
      }
      
      public static function §7Y§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §=!P§.§7Y§(param1,param2);
         }
      }
      
      public static function §8'§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §5>§))
         {
            §=!P§.§6!0§(param1).addCallback(param2);
         }
      }
      
      public static function §<L§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §=!P§.§6!0§(param1).§<a§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§,e§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         if(_loc11_)
         {
            §§push(§&V§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§!>§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(!_loc10_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               if(!(_loc10_ && param2))
               {
                  §§push(§=!r§);
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
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §!>§.log("URL sending...");
                              loop5:
                              while(!(_loc10_ && param2))
                              {
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§^!L§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop9:
                                          while(!_loc10_)
                                          {
                                             if(!_loc11_)
                                             {
                                                continue loop0;
                                             }
                                             if(!§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§^!L§);
                                                      if(!_loc10_)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            break;
                                                         }
                                                         §§push("PHP");
                                                         if(!(_loc10_ && §5>§))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc11_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(§@k§.§#!;§());
                                                                     if(_loc11_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push("?C=");
                                                                           addr64:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop() + param1);
                                                                              }
                                                                              if(!_loc11_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                        }
                                                                        addr63:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     var _loc8_:int = 0;
                                                                     var _loc9_:* = param2;
                                                                     addr178:
                                                                     §§push(§§hasnext(_loc9_,_loc8_));
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(§§nextname(_loc8_,_loc9_));
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§push("&");
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr177:
                                                                                       §§push(§§pop() + _loc5_);
                                                                                       if(!(_loc10_ && §5>§))
                                                                                       {
                                                                                          §§push(§§pop() + "=");
                                                                                          if(_loc11_ || §5>§)
                                                                                          {
                                                                                             addr171:
                                                                                             §§push(§§pop() + param2[_loc5_]);
                                                                                          }
                                                                                       }
                                                                                       _loc4_ = §§pop() + §§pop();
                                                                                       §§goto(addr178);
                                                                                    }
                                                                                    §§goto(addr171);
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                              §§goto(addr178);
                                                                           }
                                                                           §§goto(addr177);
                                                                        }
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 §!>§.log(_loc4_);
                                                                                 addr276:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr234:
                                                                                 if(true)
                                                                                 {
                                                                                    addr278:
                                                                                    _loc8_ = 0;
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc9_ = param2;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr406:
                                                                                          if(§§hasnext(_loc9_,_loc8_))
                                                                                          {
                                                                                             addr404:
                                                                                             _loc7_ = §§nextname(_loc8_,_loc9_);
                                                                                             addr384:
                                                                                             addr405:
                                                                                             if(_loc6_ == 0)
                                                                                             {
                                                                                                addr386:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc11_ || param2)
                                                                                                {
                                                                                                   addr396:
                                                                                                   _loc4_ = §§pop() + "?";
                                                                                                   addr314:
                                                                                                   addr397:
                                                                                                   addr395:
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(_loc11_ || §5>§)
                                                                                                      {
                                                                                                         §§push(_loc7_ + "=");
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                            {
                                                                                                               addr341:
                                                                                                               §§push(§§pop() + (§§pop() + param2[_loc7_]));
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  addr345:
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  addr346:
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(_loc11_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc11_ || §5>§)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(_loc11_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr314);
                                                                                                                                 }
                                                                                                                                 §§goto(addr406);
                                                                                                                              }
                                                                                                                              §§goto(addr397);
                                                                                                                           }
                                                                                                                           §§goto(addr346);
                                                                                                                        }
                                                                                                                        §§goto(addr384);
                                                                                                                        addr355:
                                                                                                                     }
                                                                                                                     §§goto(addr386);
                                                                                                                  }
                                                                                                                  addr374:
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                                  §§goto(addr405);
                                                                                                               }
                                                                                                               addr371:
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  §§goto(addr374);
                                                                                                               }
                                                                                                               §§goto(addr396);
                                                                                                            }
                                                                                                            addr363:
                                                                                                            if(_loc11_ || param2)
                                                                                                            {
                                                                                                               §§goto(addr371);
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr395);
                                                                                                         }
                                                                                                         §§goto(addr341);
                                                                                                      }
                                                                                                      addr360:
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr363);
                                                                                                         §§push("&");
                                                                                                      }
                                                                                                      §§goto(addr386);
                                                                                                   }
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                §§goto(addr404);
                                                                                             }
                                                                                             §§goto(addr360);
                                                                                             §§push(_loc4_);
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr412:
                                                                                             §!>§.log(_loc4_);
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                break loop1;
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       §§goto(addr355);
                                                                                    }
                                                                                    §§goto(addr406);
                                                                                 }
                                                                              }
                                                                              addr236:
                                                                              break loop1;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr406);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§^!L§);
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     if(§§pop() == "Google")
                                                                     {
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           §§push(§@k§.§#!;§());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr259:
                                                                              §§push(§§pop() + param1);
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    _loc6_ = Number(§§pop());
                                                                                    if(_loc11_ || param2)
                                                                                    {
                                                                                       §§goto(addr234);
                                                                                    }
                                                                                    break loop1;
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr276);
                                                                              }
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     break loop1;
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                         }
                                                         §§goto(addr64);
                                                      }
                                                      §§goto(addr63);
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             §§goto(addr53);
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
                  _loc3_ = §=!P§.§6!0§(param1);
                  if(_loc11_)
                  {
                     if(_loc3_.§#@§())
                     {
                        if(!(_loc10_ && param1))
                        {
                           §@k§.sendRequest(param1,param2);
                           if(!_loc11_)
                           {
                           }
                           addr459:
                           break;
                        }
                     }
                     else
                     {
                        §!>§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  §§goto(addr459);
               }
               §§goto(addr113);
            }
            return;
         }
         §§goto(addr101);
      }
      
      public static function §#!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&V§ = true;
         }
         do
         {
            §@k§.§!!C§();
         }
         while(!_loc1_);
         
      }
      
      public static function §!!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&V§ = false;
         }
         do
         {
            §@k§.§97§();
         }
         while(_loc2_);
         
      }
      
      public static function §3<§() : Boolean
      {
         return §&V§;
      }
      
      public static function §<l§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §=!P§.§6!0§(param1).§ var§(true);
         }
      }
      
      public static function §+I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §5>§)
         {
            §=!P§.§6!0§(param1).§ var§(false);
         }
      }
      
      public static function §@!D§() : String
      {
         return §@k§.§#!;§();
      }
      
      public static function §"1§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§-!b§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
