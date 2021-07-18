package §@!v§
{
   import §=!M§.§9!P§;
   
   public class §6!Q§
   {
      
      private static var §>"$§:§`y§;
      
      private static var §5>§:§9!2§;
      
      private static var §,! §:Boolean = true;
      
      public static var §7G§:String = "";
      
      public static var §6"-§:XML;
      
      public static var §"!e§:XML;
      
      public static const §[!J§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §,! § = true;
         }
         while(true)
         {
            §7G§ = "";
            while(_loc1_ || §6!Q§)
            {
               §[!J§ = true;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §6!Q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            if(§6"-§ == null)
            {
               if(!_loc7_)
               {
                  §9!P§.log("Server configuration not avaialble");
                  if(!_loc7_)
                  {
                     §§goto(addr34);
                  }
               }
            }
            var _loc2_:XML = null;
            if(!_loc7_)
            {
               if(param1 != null)
               {
                  if(!(_loc7_ && §6!Q§))
                  {
                     _loc2_ = § n§(param1,§6"-§);
                     addr56:
                     if(_loc2_ == null)
                     {
                        if(!_loc7_)
                        {
                           addr61:
                           _loc2_ = § n§(§6"-§.Default[0].toString(),§6"-§);
                           addr71:
                           §9!P§.log("Using connection profile:" + _loc2_.Id[0]);
                           if(_loc8_)
                           {
                              addr81:
                              §"!e§ = _loc2_;
                           }
                        }
                        var _loc3_:Class = §;^§[_loc2_.ConnectionType[0].toString()];
                        var _loc4_:Class = §const§[_loc2_.ResponseType[0].toString()];
                        var _loc5_:Number = Number(_loc2_.Port[0].toString());
                        if(_loc8_ || param1)
                        {
                           if(_loc2_.ServerType[0] != null)
                           {
                              if(_loc8_ || §6!Q§)
                              {
                                 §7G§ = _loc2_.ServerType[0].toString();
                              }
                           }
                        }
                        var _loc6_:String = _loc2_.Address[0].toString();
                        if(!(_loc7_ && _loc3_))
                        {
                           §>"$§ = new _loc3_(_loc6_,_loc5_);
                           while(true)
                           {
                              §5>§ = new _loc4_();
                              while(_loc8_ || _loc2_)
                              {
                                 §>"$§.§8!s§(§5>§.§"p§,§5>§.§0d§);
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 return;
                                 addr176:
                              }
                           }
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr81);
               }
               §§goto(addr56);
            }
            §§goto(addr61);
         }
         addr34:
      }
      
      public static function § n§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_)
         {
            if(param1 != null)
            {
               §§goto(addr24);
            }
            return null;
         }
         addr24:
         var _loc4_:int = 0;
         var _loc5_:* = §6"-§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc7_ && param2))
               {
                  if(!_loc3_.Id[0])
                  {
                     if(_loc7_ && param1)
                     {
                        break;
                     }
                  }
                  else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                  {
                     if(!(_loc7_ && §6!Q§))
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
      
      public static function §]!q§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§"!e§ == null);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr81:
                     loop2:
                     while(true)
                     {
                        §§push(!§"!e§.Directories);
                        if(!_loc1_)
                        {
                           while(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 return null;
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return §"!e§.Directories[0];
                           addr49:
                        }
                     }
                  }
                  addr80:
               }
               §§goto(addr49);
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      public static function §>c§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §5>§.§>c§(param1,param2);
         }
      }
      
      public static function §<R§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §5>§.§&m§(param1).addCallback(param2);
         }
      }
      
      public static function §2U§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §5>§.§&m§(param1).§^D§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§3y§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         if(!_loc11_)
         {
            §§push(§,! §);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §9!P§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               if(!_loc11_)
               {
                  §§push(§[!J§);
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
                           addr102:
                           loop4:
                           while(true)
                           {
                              §9!P§.log("URL sending...");
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§7G§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       if(_loc10_)
                                       {
                                          if(!_loc10_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc11_)
                                          {
                                             continue loop0;
                                          }
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§7G§);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() == "PHP");
                                                      if(_loc11_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§>"$§.§-"8§());
                                                                  if(_loc10_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(§§pop() + "?C=");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                        if(!(_loc10_ || _loc3_))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(§§pop());
                                                                     }
                                                                     addr51:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                  }
                                                               }
                                                            }
                                                            while(!_loc11_)
                                                            {
                                                               if(true)
                                                               {
                                                                  var _loc8_:int = 0;
                                                                  var _loc9_:* = param2;
                                                                  addr148:
                                                               }
                                                               continue loop6;
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(§§nextname(_loc8_,_loc9_));
                                                                     if(!(_loc11_ && param2))
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              §§push("&" + _loc5_);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr147:
                                                                                 §§push(§§pop() + "=");
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr141:
                                                                                    §§push(§§pop() + param2[_loc5_]);
                                                                                 }
                                                                                 _loc4_ = §§pop() + §§pop();
                                                                                 §§goto(addr148);
                                                                              }
                                                                              §§goto(addr141);
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        §§goto(addr148);
                                                                     }
                                                                     §§goto(addr147);
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §9!P§.log(_loc4_);
                                                                           if(_loc11_)
                                                                           {
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                        addr179:
                                                                        if(true)
                                                                        {
                                                                           addr228:
                                                                           _loc8_ = 0;
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr236:
                                                                              _loc9_ = param2;
                                                                              addr281:
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 addr362:
                                                                                 §§push(§§hasnext(_loc9_,_loc8_));
                                                                                 break;
                                                                              }
                                                                              §§push(_loc4_);
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 if(_loc10_ || §6!Q§)
                                                                                 {
                                                                                    §§push(_loc7_ + "=");
                                                                                    if(!(_loc11_ && §6!Q§))
                                                                                    {
                                                                                       §§push(§§pop() + param2[_loc7_]);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr315:
                                                                                       _loc4_ = §§pop();
                                                                                       addr316:
                                                                                       if(!(_loc11_ && §6!Q§))
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(_loc10_ || §6!Q§)
                                                                                                {
                                                                                                   addr266:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                _loc6_ = §§pop();
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(!(_loc11_ && param2))
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                         §§goto(addr362);
                                                                                                      }
                                                                                                      addr345:
                                                                                                      §§push(_loc4_);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr350:
                                                                                                         _loc4_ = §§pop() + "?";
                                                                                                         addr351:
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§goto(addr281);
                                                                                                         }
                                                                                                         addr343:
                                                                                                         if(_loc6_ == 0)
                                                                                                         {
                                                                                                            §§goto(addr345);
                                                                                                         }
                                                                                                         §§push(_loc4_);
                                                                                                         if(!(_loc11_ && param2))
                                                                                                         {
                                                                                                            addr337:
                                                                                                            §§push(§§pop() + "&");
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               addr340:
                                                                                                               §§goto(addr281);
                                                                                                            }
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                         addr361:
                                                                                                      }
                                                                                                      addr360:
                                                                                                      _loc7_ = §§pop();
                                                                                                      §§goto(addr361);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             §§goto(addr343);
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                       §§goto(addr340);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr350);
                                                                              }
                                                                              §§goto(addr315);
                                                                           }
                                                                           addr365:
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr368:
                                                                              §9!P§.log(_loc4_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 break loop1;
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  addr364:
                                                                  §§goto(addr365);
                                                               }
                                                               break;
                                                            }
                                                            break loop7;
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr360);
                                                               §§push(§§nextname(_loc8_,_loc9_));
                                                            }
                                                            §§goto(addr364);
                                                         }
                                                         else
                                                         {
                                                            §§push(§7G§);
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               if(§§pop() == "Google")
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§>"$§.§-"8§());
                                                                     if(_loc10_ || §6!Q§)
                                                                     {
                                                                        addr214:
                                                                        §§push(§§pop() + param1);
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                     break loop1;
                                                                  }
                                                                  §§push(0);
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc6_ = Number(§§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        §§goto(addr179);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               break loop1;
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr51);
                                                }
                                                continue loop4;
                                             }
                                             addr83:
                                          }
                                          §§goto(addr41);
                                       }
                                       §§goto(addr83);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc3_ = §5>§.§&m§(param1);
                  if(!(_loc11_ && _loc3_))
                  {
                     if(_loc3_.§%!0§())
                     {
                        if(!(_loc11_ && param1))
                        {
                           addr395:
                           §>"$§.sendRequest(param1,param2);
                           if(_loc11_ && param1)
                           {
                           }
                        }
                     }
                     else
                     {
                        §9!P§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                     break;
                  }
                  §§goto(addr395);
               }
               §§goto(addr102);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public static function §1!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,! § = true;
            do
            {
               §>"$§.§3$§();
            }
            while(_loc1_ && §6!Q§);
            
         }
      }
      
      public static function §3!Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,! § = false;
         }
         do
         {
            §>"$§.§0!P§();
         }
         while(_loc2_);
         
      }
      
      public static function §&!h§() : Boolean
      {
         return §,! §;
      }
      
      public static function §4!f§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §6!Q§)
         {
            §5>§.§&m§(param1).§1N§(true);
         }
      }
      
      public static function §3P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §5>§.§&m§(param1).§1N§(false);
         }
      }
      
      public static function §`!2§() : String
      {
         return §>"$§.§-"8§();
      }
      
      public static function §1h§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§6"-§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
