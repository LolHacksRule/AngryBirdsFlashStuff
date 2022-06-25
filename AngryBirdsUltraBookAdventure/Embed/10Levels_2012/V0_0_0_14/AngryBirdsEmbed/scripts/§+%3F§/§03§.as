package §+?§
{
   import §+!"§.§5!<§;
   
   public class §03§
   {
      
      private static var §%z§:§2V§;
      
      private static var § y§:§#!?§;
      
      private static var §>k§:Boolean = true;
      
      public static var §]7§:String = "";
      
      public static var §&Z§:XML;
      
      public static var §>1§:XML;
      
      public static const §[U§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>k§ = true;
            if(_loc1_ || _loc1_)
            {
               §]7§ = "";
               if(_loc1_)
               {
                  addr43:
                  §[U§ = true;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §03§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            if(§&Z§ == null)
            {
               if(!_loc7_)
               {
                  §5!<§.log("Server configuration not avaialble");
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:XML = null;
         if(_loc8_ || _loc2_)
         {
            if(param1 != null)
            {
               if(_loc8_ || param1)
               {
                  _loc2_ = §4P§(param1,§&Z§);
                  addr61:
                  if(_loc2_ == null)
                  {
                     if(_loc8_)
                     {
                        _loc2_ = §4P§(§&Z§.Default[0].toString(),§&Z§);
                     }
                     addr101:
                     var _loc3_:Class = §+X§[_loc2_.ConnectionType[0].toString()];
                     var _loc4_:Class = §+c§[_loc2_.ResponseType[0].toString()];
                     var _loc5_:Number = Number(_loc2_.Port[0].toString());
                     if(_loc8_)
                     {
                        if(_loc2_.ServerType[0] != null)
                        {
                           if(_loc8_ || _loc2_)
                           {
                              addr143:
                              §]7§ = _loc2_.ServerType[0].toString();
                           }
                        }
                        var _loc6_:String = _loc2_.Address[0].toString();
                        if(_loc8_ || §03§)
                        {
                           §%z§ = new _loc3_(_loc6_,_loc5_);
                           if(!_loc7_)
                           {
                              § y§ = new _loc4_();
                              if(_loc8_ || §03§)
                              {
                                 §%z§.§[!0§(§ y§.§'C§,§ y§.§@!3§);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr143);
                  }
                  §§push(§5!<§);
                  §§push("Using connection profile:");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc2_.Id[0]);
                  }
                  §§pop().log(§§pop());
                  if(_loc8_)
                  {
                     addr98:
                     §>1§ = _loc2_;
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr61);
         }
         §§goto(addr98);
      }
      
      public static function §4P§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_ || §03§)
         {
            if(param1 != null)
            {
               §§goto(addr30);
            }
            return null;
         }
         addr30:
         var _loc4_:int = 0;
         var _loc5_:* = §&Z§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_ || _loc3_)
               {
                  if(_loc3_.Id[0])
                  {
                     if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  if(_loc6_ && param2)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §3!-§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§>1§ == null);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr53:
                     §§pop();
                     §§goto(addr69);
                  }
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     return null;
                  }
                  §§goto(addr69);
               }
               addr69:
               if(_loc2_ || _loc2_)
               {
                  §§push(!§>1§.Directories);
               }
               return §>1§.Directories[0];
            }
         }
         §§goto(addr53);
      }
      
      public static function §7j§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §03§))
         {
            § y§.§7j§(param1,param2);
         }
      }
      
      public static function §6L§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            § y§.§9n§(param1).addCallback(param2);
         }
      }
      
      public static function §65§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            § y§.§9n§(param1).§?`§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§8T§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         §§push(§>k§);
         if(_loc11_)
         {
            if(§§pop())
            {
               if(_loc11_ || param2)
               {
                  §§push(§[U§);
                  if(_loc11_)
                  {
                     if(§§pop())
                     {
                        §§push("");
                        if(_loc11_ || §03§)
                        {
                           _loc4_ = §§pop();
                           if(!(_loc10_ && _loc3_))
                           {
                              addr62:
                              §5!<§.log("URL sending...");
                           }
                           §§push(§]7§);
                           if(!(_loc10_ && _loc3_))
                           {
                              §§push(!§§pop());
                              if(_loc11_ || param2)
                              {
                                 addr81:
                                 if(!§§pop())
                                 {
                                    if(_loc11_ || param2)
                                    {
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§pop();
                              §§push(§]7§);
                              if(!(_loc10_ && §03§))
                              {
                                 addr99:
                                 §§push("PHP");
                                 if(_loc11_)
                                 {
                                    addr103:
                                    if(§§pop())
                                    {
                                       §§push(§%z§.§'y§());
                                       if(!_loc10_)
                                       {
                                          addr109:
                                          §§push(§§pop() + "?C=");
                                          if(!_loc10_)
                                          {
                                             addr114:
                                             §§push(§§pop() + param1);
                                          }
                                          §§goto(addr114);
                                       }
                                       addr115:
                                       _loc4_ = §§pop();
                                       var _loc8_:* = 0;
                                       var _loc9_:* = param2;
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc9_,_loc8_));
                                          if(!_loc10_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                if(_loc11_)
                                                {
                                                   §5!<§.log(_loc4_);
                                                   addr332:
                                                   _loc3_ = § y§.§9n§(param1);
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc3_.§]v§())
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr359:
                                                            §%z§.sendRequest(param1,param2);
                                                            if(!_loc11_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §5!<§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr382);
                                             }
                                             else
                                             {
                                                §§push(§§nextname(_loc8_,_loc9_));
                                                if(!(_loc10_ && §03§))
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc11_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc11_)
                                                      {
                                                         addr140:
                                                         §§push("&");
                                                         if(_loc11_)
                                                         {
                                                            §§push(§§pop() + _loc5_);
                                                            if(_loc11_)
                                                            {
                                                               §§push(§§pop() + "=");
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() + param2[_loc5_]);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      _loc4_ = §§pop();
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr140);
                                             }
                                          }
                                          else
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop0;
                                                }
                                                §§push(§§nextname(_loc8_,_loc9_));
                                                if(_loc11_)
                                                {
                                                   _loc7_ = §§pop();
                                                   §§push(_loc6_);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      if(§§pop() == 0)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push("?");
                                                               if(_loc11_ || param2)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(_loc11_)
                                                                     {
                                                                        addr290:
                                                                        §§push(_loc4_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr309:
                                                                           §§push(_loc7_ + "=");
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              addr303:
                                                                              §§push(§§pop() + param2[_loc7_]);
                                                                           }
                                                                           _loc4_ = §§pop() + §§pop();
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc11_ || §03§)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc11_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              addr321:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     addr310:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr289:
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr290);
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               else
                                                               {
                                                                  addr281:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     §§goto(addr289);
                                                                  }
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                            else
                                                            {
                                                               addr273:
                                                               §§push("&");
                                                               if(_loc11_ || param2)
                                                               {
                                                                  §§goto(addr281);
                                                               }
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr273);
                                                         }
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr321);
                                                }
                                                §§goto(addr273);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(§]7§);
                                       if(_loc11_ || param1)
                                       {
                                          if(§§pop() == "Google")
                                          {
                                             §§push(§%z§.§'y§());
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                          }
                                          §§goto(addr332);
                                       }
                                       _loc4_ = §§pop();
                                       §§push(0);
                                       if(!_loc10_)
                                       {
                                          _loc6_ = Number(§§pop());
                                          if(!_loc10_)
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr332);
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc11_ || param1)
                                       {
                                          _loc9_ = param2;
                                          if(!_loc10_)
                                          {
                                             §§goto(addr323);
                                          }
                                          §§goto(addr310);
                                       }
                                    }
                                    §5!<§.log(_loc4_);
                                    if(!_loc10_)
                                    {
                                       §§goto(addr332);
                                    }
                                    addr382:
                                    return;
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr332);
                  }
                  §§goto(addr81);
               }
               §§goto(addr62);
            }
            else
            {
               §§push(§5!<§);
               §§push("[Server] WARNING: Currently disabled, not sending request for: ");
               if(!(_loc10_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            §§goto(addr382);
         }
         §§goto(addr103);
      }
      
      public static function §;Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §03§))
         {
            §>k§ = true;
            if(!(_loc2_ && _loc2_))
            {
               addr43:
               §%z§.§6!H§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §7?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>k§ = false;
            if(_loc2_ || _loc1_)
            {
               addr29:
               §%z§.§,M§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §`9§() : Boolean
      {
         return §>k§;
      }
      
      public static function §>!B§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            § y§.§9n§(param1).§0[§(true);
         }
      }
      
      public static function §-X§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § y§.§9n§(param1).§0[§(false);
         }
      }
      
      public static function §3!;§() : String
      {
         return §%z§.§'y§();
      }
      
      public static function §&;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§&Z§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
