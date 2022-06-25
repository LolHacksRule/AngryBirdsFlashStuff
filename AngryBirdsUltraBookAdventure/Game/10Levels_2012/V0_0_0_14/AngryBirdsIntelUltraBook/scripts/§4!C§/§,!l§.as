package §4!C§
{
   import §6z§.§[g§;
   
   public class §,!l§
   {
      
      private static var §30§:§-!i§;
      
      private static var §5o§:§7b§;
      
      private static var §3i§:Boolean = true;
      
      public static var §%T§:String = "";
      
      public static var §'N§:XML;
      
      public static var §8!q§:XML;
      
      public static const §'![§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3i§ = true;
            while(true)
            {
               §%T§ = "";
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            §'![§ = true;
            if(_loc1_ || §,!l§)
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,!l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            if(§'N§ == null)
            {
               if(_loc7_)
               {
                  addr23:
                  §[g§.log("Server configuration not avaialble");
                  if(_loc8_ && §,!l§)
                  {
                     addr34:
                     var _loc2_:XML = null;
                     if(!_loc8_)
                     {
                        if(param1 != null)
                        {
                           if(_loc7_)
                           {
                              addr44:
                              _loc2_ = §5y§(param1,§'N§);
                              addr50:
                              if(_loc2_ == null)
                              {
                                 if(!(_loc8_ && §,!l§))
                                 {
                                    addr60:
                                    _loc2_ = §5y§(§'N§.Default[0].toString(),§'N§);
                                    addr70:
                                    §§push(§[g§);
                                    §§push("Using connection profile:");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc2_.Id[0]);
                                    }
                                    §§pop().log(§§pop());
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §8!q§ = _loc2_;
                                    }
                                 }
                                 var _loc3_:Class = §-§[_loc2_.ConnectionType[0].toString()];
                                 var _loc4_:Class = §%!@§[_loc2_.ResponseType[0].toString()];
                                 var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                 if(!_loc8_)
                                 {
                                    if(_loc2_.ServerType[0] != null)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr137:
                                          §%T§ = _loc2_.ServerType[0].toString();
                                       }
                                    }
                                    var _loc6_:String = _loc2_.Address[0].toString();
                                    if(_loc7_ || param1)
                                    {
                                       §30§ = new _loc3_(_loc6_,_loc5_);
                                       while(true)
                                       {
                                          §5o§ = new _loc4_();
                                          loop1:
                                          while(!_loc8_)
                                          {
                                             while(true)
                                             {
                                                §30§.§^9§(§5o§.§8Z§,§5o§.§5!<§);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop1;
                                             }
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr60);
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
         §§goto(addr23);
      }
      
      public static function §5y§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_)
         {
            if(param1 != null)
            {
               addr24:
               for each(_loc3_ in §'N§.Connection)
               {
                  if(_loc6_ || param1)
                  {
                     if(_loc3_.Id[0])
                     {
                        if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                        {
                           if(!_loc7_)
                           {
                              return _loc3_;
                           }
                        }
                        continue;
                     }
                     if(_loc7_ && §,!l§)
                     {
                        continue;
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr24);
      }
      
      public static function §"!D§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§8!q§ == null);
            if(!_loc1_)
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
                        §§push(!§8!q§.Directories);
                        if(_loc2_)
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
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr81);
               }
               return §8!q§.Directories[0];
            }
            §§goto(addr80);
         }
         addr70:
         return null;
      }
      
      public static function §1!,§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §5o§.§1!,§(param1,param2);
         }
      }
      
      public static function §!J§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §5o§.§;!A§(param1).addCallback(param2);
         }
      }
      
      public static function §`z§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §5o§.§;!A§(param1).§^!D§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§!!^§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(!_loc10_)
         {
            §§push(§3i§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§[g§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(!(_loc10_ && param2))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               if(!_loc10_)
               {
                  §§push(§'![§);
                  loop1:
                  for(; §§pop(); if(!(_loc11_ || param1))
                  {
                     continue;
                  },§§goto(addr58))
                  {
                     loop2:
                     while(true)
                     {
                        §§push("");
                        loop3:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr140:
                           while(true)
                           {
                              §[g§.log("URL sending...");
                              loop5:
                              for(; _loc11_ || §,!l§; if(_loc10_ && §,!l§)
                              {
                                 continue;
                              },if(!(_loc11_ || _loc3_))
                              {
                                 continue loop2;
                              },§§push(§30§.§8! §()),if(!_loc10_)
                              {
                                 §§goto(addr92);
                              },§§goto(addr106))
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§%T§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc11_)
                                          {
                                             continue loop0;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc10_ && §,!l§))
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§%T§);
                                                         if(!_loc10_)
                                                         {
                                                            §§push("PHP");
                                                            if(!_loc10_)
                                                            {
                                                               addr41:
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc11_ || param2)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               addr118:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop10;
                                                                  §§goto(addr41);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr92:
                                                            §§push("?C=");
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc10_ && param1)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() + param1);
                                                         }
                                                         addr106:
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc4_ = §§pop();
                                                      }
                                                      continue loop2;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop6;
                                                   }
                                                   var _loc8_:int = 0;
                                                   var _loc9_:* = param2;
                                                   addr193:
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   if(!(_loc10_ && §,!l§))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(§§nextname(_loc8_,_loc9_));
                                                         if(_loc11_ || param2)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc11_)
                                                               {
                                                                  §§push("&");
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop() + _loc5_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr192:
                                                                        §§push(§§pop() + "=");
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           addr186:
                                                                           §§push(§§pop() + param2[_loc5_]);
                                                                        }
                                                                        _loc4_ = §§pop() + §§pop();
                                                                        §§goto(addr193);
                                                                     }
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §[g§.log(_loc4_);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  addr238:
                                                                  break loop1;
                                                               }
                                                               break loop1;
                                                            }
                                                            break;
                                                         }
                                                         addr281:
                                                         _loc9_ = param2;
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr401:
                                                            if(§§hasnext(_loc9_,_loc8_))
                                                            {
                                                               addr399:
                                                               _loc7_ = §§nextname(_loc8_,_loc9_);
                                                               addr400:
                                                               if(_loc6_ == 0)
                                                               {
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     addr387:
                                                                     §§push(_loc4_);
                                                                     if(_loc11_)
                                                                     {
                                                                        addr391:
                                                                        _loc4_ = §§pop() + "?";
                                                                        addr316:
                                                                        addr392:
                                                                        addr390:
                                                                        §§push(_loc4_);
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           §§push(_loc7_ + "=");
                                                                           if(_loc11_ || §,!l§)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr341:
                                                                                 §§push(§§pop() + param2[_loc7_]);
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr352:
                                                                                       §§push(§§pop());
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          addr355:
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc11_ || §,!l§)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr307:
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr316);
                                                                                                               }
                                                                                                               §§goto(addr401);
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         addr374:
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   §§goto(addr400);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr307);
                                                                                          }
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          addr371:
                                                                                          §§push(§§pop() + "&");
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 §§goto(addr390);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr341);
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr399);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr352);
                                                               §§push(_loc4_);
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               §[g§.log(_loc4_);
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  break loop1;
                                                               }
                                                               break loop0;
                                                            }
                                                            break loop0;
                                                         }
                                                         §§goto(addr391);
                                                      }
                                                   }
                                                   §§goto(addr401);
                                                }
                                                else
                                                {
                                                   §§push(§%T§);
                                                   if(_loc11_ || param2)
                                                   {
                                                      if(§§pop() == "Google")
                                                      {
                                                         if(_loc11_ || §,!l§)
                                                         {
                                                            §§push(§30§.§8! §());
                                                            if(!_loc10_)
                                                            {
                                                               addr264:
                                                               _loc4_ = §§pop() + param1;
                                                               break;
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         break loop0;
                                                      }
                                                      break loop1;
                                                   }
                                                   §§goto(addr264);
                                                }
                                             }
                                             addr265:
                                             §§push(0);
                                             if(_loc11_)
                                             {
                                                _loc6_ = §§pop();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§goto(addr265);
                                                   }
                                                   if(false)
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                   else
                                                   {
                                                      addr278:
                                                      _loc8_ = 0;
                                                      if(_loc11_)
                                                      {
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                }
                                                break loop0;
                                             }
                                             §§goto(addr278);
                                             addr58:
                                          }
                                          §§goto(addr118);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc3_ = §5o§.§;!A§(param1);
                  if(_loc11_ || param2)
                  {
                     if(_loc3_.§>%§())
                     {
                        if(_loc11_ || _loc3_)
                        {
                           §30§.sendRequest(param1,param2);
                           if(_loc10_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §[g§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  break;
               }
               §§goto(addr138);
            }
            return;
         }
         §§goto(addr140);
      }
      
      public static function §+;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3i§ = true;
            do
            {
               §30§.§>T§();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function §-!y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §,!l§)
         {
            §3i§ = false;
            do
            {
               §30§.§0s§();
            }
            while(_loc1_ && §,!l§);
            
         }
      }
      
      public static function §?!'§() : Boolean
      {
         return §3i§;
      }
      
      public static function §4!+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5o§.§;!A§(param1).§]Q§(true);
         }
      }
      
      public static function §"!$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5o§.§;!A§(param1).§]Q§(false);
         }
      }
      
      public static function §<!V§() : String
      {
         return §30§.§8! §();
      }
      
      public static function §9e§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§'N§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
