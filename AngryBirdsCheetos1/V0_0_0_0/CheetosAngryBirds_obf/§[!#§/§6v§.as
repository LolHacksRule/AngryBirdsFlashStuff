package §[!#§
{
   import §@,§.§4h§;
   
   public class §6v§
   {
      
      private static var §+!J§:§]R§;
      
      private static var § =§:§5Y§;
      
      private static var §6!8§:Boolean = true;
      
      public static var §%0§:String = "";
      
      public static var §-!H§:XML;
      
      public static var §4G§:XML;
      
      public static const §>§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6!8§ = true;
            while(true)
            {
               §%0§ = "";
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §>§ = true;
                     if(_loc2_ || §6v§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §6v§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(§-!H§ == null)
            {
               if(_loc7_ || §6v§)
               {
                  addr28:
                  §4h§.log("Server configuration not avaialble");
                  if(_loc8_)
                  {
                     addr34:
                     var _loc2_:XML = null;
                     if(_loc7_)
                     {
                        if(param1 != null)
                        {
                           if(_loc7_)
                           {
                              addr44:
                              _loc2_ = §=S§(param1,§-!H§);
                              addr50:
                              if(_loc2_ == null)
                              {
                                 if(_loc7_ || §6v§)
                                 {
                                    _loc2_ = §=S§(§-!H§.Default[0].toString(),§-!H§);
                                    addr70:
                                    §4h§.log("Using connection profile:" + _loc2_.Id[0]);
                                    if(_loc8_ && _loc3_)
                                    {
                                    }
                                    addr98:
                                    var _loc3_:Class = §<!I§[_loc2_.ConnectionType[0].toString()];
                                    var _loc4_:Class = §#!M§[_loc2_.ResponseType[0].toString()];
                                    var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                    if(!_loc8_)
                                    {
                                       if(_loc2_.ServerType[0] != null)
                                       {
                                          if(_loc7_ || param1)
                                          {
                                             §%0§ = _loc2_.ServerType[0].toString();
                                          }
                                       }
                                    }
                                    var _loc6_:String = _loc2_.Address[0].toString();
                                    if(!_loc8_)
                                    {
                                       §+!J§ = new _loc3_(_loc6_,_loc5_);
                                       while(true)
                                       {
                                          § =§ = new _loc4_();
                                          while(_loc7_)
                                          {
                                             §+!J§.§7^§(§ =§.§try §,§ =§.§#!S§);
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             return;
                                             addr170:
                                          }
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §4G§ = _loc2_;
                                 §§goto(addr98);
                              }
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr50);
                     }
                     §§goto(addr44);
                  }
               }
               return;
            }
            §§goto(addr34);
         }
         §§goto(addr28);
      }
      
      public static function §=S§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_ || §6v§)
         {
            if(param1 != null)
            {
               addr30:
               for each(_loc3_ in §-!H§.Connection)
               {
                  if(!(_loc6_ && param2))
                  {
                     if(!_loc3_.Id[0])
                     {
                        if(_loc7_ || §6v§)
                        {
                        }
                     }
                     else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(_loc7_ || §6v§)
                        {
                           return _loc3_;
                        }
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr30);
      }
      
      public static function §&P§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§4G§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr76:
                     do
                     {
                        §§push(!§4G§.Directories);
                        if(_loc1_ && _loc2_)
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc1_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr69:
                     break;
                  }
                  if(!_loc1_)
                  {
                     return null;
                  }
                  §§goto(addr76);
               }
               return §4G§.Directories[0];
            }
         }
         §§goto(addr69);
      }
      
      public static function §9!D§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            § =§.§9!D§(param1,param2);
         }
      }
      
      public static function §@C§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            § =§.§=y§(param1).addCallback(param2);
         }
      }
      
      public static function §>!;§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            § =§.§=y§(param1).§!9§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§-Z§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(!_loc10_)
         {
            §§push(§6!8§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §4h§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(§>§);
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push("");
                        loop4:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §4h§.log("URL sending...");
                              addr121:
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§%0§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc11_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!(_loc11_ || _loc3_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(§+!J§.§#F§());
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(§§pop() + "?C=");
                                                         if(_loc11_)
                                                         {
                                                            §§push(§§pop() + param1);
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop());
                                                      }
                                                      _loc4_ = §§pop();
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop7;
                                                   }
                                                   var _loc8_:* = 0;
                                                   var _loc9_:* = param2;
                                                   addr179:
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(§§nextname(_loc8_,_loc9_));
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc11_ || param1)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push("&" + _loc5_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr178:
                                                                     §§push(§§pop() + "=");
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr172:
                                                                        §§push(§§pop() + param2[_loc5_]);
                                                                     }
                                                                     _loc4_ = §§pop() + §§pop();
                                                                     §§goto(addr179);
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               §4h§.log(_loc4_);
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  addr207:
                                                                  break loop2;
                                                               }
                                                               break loop0;
                                                            }
                                                            break loop2;
                                                         }
                                                         addr381:
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         break loop2;
                                                      }
                                                      addr380:
                                                      §§goto(addr381);
                                                      §§goto(addr381);
                                                   }
                                                   addr379:
                                                   if(§§pop())
                                                   {
                                                      addr376:
                                                      _loc7_ = §§nextname(_loc8_,_loc9_);
                                                      addr354:
                                                      addr377:
                                                      if(_loc6_ == 0)
                                                      {
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            addr364:
                                                            §§push(_loc4_);
                                                            if(_loc11_)
                                                            {
                                                               addr368:
                                                               _loc4_ = §§pop() + "?";
                                                               addr302:
                                                               addr369:
                                                               §§push(_loc4_);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(_loc7_ + "=");
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() + param2[_loc7_]);
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        addr331:
                                                                        §§push(§§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr334:
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr283:
                                                                                       _loc6_ = §§pop();
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr302);
                                                                                                }
                                                                                                addr378:
                                                                                                §§goto(addr379);
                                                                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          addr351:
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr334);
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                              }
                                                                              §§goto(addr283);
                                                                              addr341:
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        if(_loc11_)
                                                                        {
                                                                           addr350:
                                                                           _loc4_ = §§pop() + "&";
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr376);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr331);
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr380);
                                                }
                                                else
                                                {
                                                   §§push(§%0§);
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(§§pop() == "Google")
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§push(§+!J§.§#F§());
                                                            if(_loc11_)
                                                            {
                                                               addr238:
                                                               _loc4_ = §§pop() + param1;
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc10_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(_loc11_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr207);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(0);
                                                                        }
                                                                     }
                                                                     break loop2;
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     _loc9_ = param2;
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§goto(addr378);
                                                                     }
                                                                     §§goto(addr341);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         break loop0;
                                                      }
                                                      break loop2;
                                                   }
                                                   §§goto(addr238);
                                                }
                                                continue loop0;
                                             }
                                             §4h§.log(_loc4_);
                                             if(_loc11_ || §6v§)
                                             {
                                                break loop2;
                                             }
                                             break loop0;
                                             addr54:
                                          }
                                       }
                                       addr101:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop6;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc3_ = § =§.§=y§(param1);
                  if(!(_loc10_ && _loc3_))
                  {
                     if(_loc3_.§@_§())
                     {
                        if(_loc11_)
                        {
                           §+!J§.sendRequest(param1,param2);
                           if(_loc11_ || param1)
                           {
                           }
                        }
                     }
                     else
                     {
                        §4h§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  break loop0;
               }
            }
            return;
         }
         §§goto(addr121);
      }
      
      public static function §2A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!8§ = true;
            do
            {
               §+!J§.§<Q§();
            }
            while(_loc1_);
            
         }
      }
      
      public static function §;!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6!8§ = false;
         }
         do
         {
            §+!J§.§=!U§();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public static function §?§() : Boolean
      {
         return §6!8§;
      }
      
      public static function §-!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            § =§.§=y§(param1).§&s§(true);
         }
      }
      
      public static function §-!F§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § =§.§=y§(param1).§&s§(false);
         }
      }
      
      public static function §?!;§() : String
      {
         return §+!J§.§#F§();
      }
      
      public static function §]r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§-!H§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
