package §[H§
{
   import §0!<§.§#y§;
   
   public class §7P§
   {
      
      private static var §true§:§++§;
      
      private static var §`a§:§=4§;
      
      private static var §3C§:Boolean = true;
      
      public static var §1V§:String = "";
      
      public static var §@!+§:XML;
      
      public static var §8!'§:XML;
      
      public static const §[v§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3C§ = true;
            if(_loc1_ || _loc1_)
            {
               §1V§ = "";
               if(_loc1_)
               {
                  addr43:
                  §[v§ = true;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §7P§()
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
            if(§@!+§ == null)
            {
               if(!_loc7_)
               {
                  §#y§.log("Server configuration not avaialble");
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
                  _loc2_ = § §(param1,§@!+§);
                  addr61:
                  if(_loc2_ == null)
                  {
                     if(_loc8_)
                     {
                        _loc2_ = § §(§@!+§.Default[0].toString(),§@!+§);
                     }
                     addr101:
                     var _loc3_:Class = §-f§[_loc2_.ConnectionType[0].toString()];
                     var _loc4_:Class = §8j§[_loc2_.ResponseType[0].toString()];
                     var _loc5_:Number = Number(_loc2_.Port[0].toString());
                     if(_loc8_)
                     {
                        if(_loc2_.ServerType[0] != null)
                        {
                           if(_loc8_ || _loc2_)
                           {
                              addr143:
                              §1V§ = _loc2_.ServerType[0].toString();
                           }
                        }
                        var _loc6_:String = _loc2_.Address[0].toString();
                        if(_loc8_ || §7P§)
                        {
                           §true§ = new _loc3_(_loc6_,_loc5_);
                           if(!_loc7_)
                           {
                              §`a§ = new _loc4_();
                              if(_loc8_ || §7P§)
                              {
                                 §true§.§"?§(§`a§.§ !F§,§`a§.§^N§);
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr143);
                  }
                  §§push(§#y§);
                  §§push("Using connection profile:");
                  if(_loc8_)
                  {
                     §§push(§§pop() + _loc2_.Id[0]);
                  }
                  §§pop().log(§§pop());
                  if(_loc8_)
                  {
                     addr98:
                     §8!'§ = _loc2_;
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr61);
         }
         §§goto(addr98);
      }
      
      public static function § §(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_ || §7P§)
         {
            if(param1 != null)
            {
               §§goto(addr30);
            }
            return null;
         }
         addr30:
         var _loc4_:int = 0;
         var _loc5_:* = §@!+§.Connection;
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
      
      public static function §#§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§8!'§ == null);
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
                  §§push(!§8!'§.Directories);
               }
               return §8!'§.Directories[0];
            }
         }
         §§goto(addr53);
      }
      
      public static function §?!4§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §7P§))
         {
            §`a§.§?!4§(param1,param2);
         }
      }
      
      public static function §[!D§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §`a§.§%+§(param1).addCallback(param2);
         }
      }
      
      public static function §1=§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §`a§.§%+§(param1).§class§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§9]§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         §§push(§3C§);
         if(_loc11_)
         {
            if(§§pop())
            {
               if(_loc11_ || param2)
               {
                  §§push(§[v§);
                  if(_loc11_)
                  {
                     if(§§pop())
                     {
                        §§push("");
                        if(_loc11_ || §7P§)
                        {
                           _loc4_ = §§pop();
                           if(!(_loc10_ && _loc3_))
                           {
                              addr62:
                              §#y§.log("URL sending...");
                           }
                           §§push(§1V§);
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
                              §§push(§1V§);
                              if(!(_loc10_ && §7P§))
                              {
                                 addr99:
                                 §§push("PHP");
                                 if(_loc11_)
                                 {
                                    addr103:
                                    if(§§pop())
                                    {
                                       §§push(§true§.§,f§());
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
                                                   §#y§.log(_loc4_);
                                                   addr332:
                                                   _loc3_ = §`a§.§%+§(param1);
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc3_.§case §())
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr359:
                                                            §true§.sendRequest(param1,param2);
                                                            if(!_loc11_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §#y§.log("[Server] WARNING: Trying to send request using a disabled command");
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
                                                if(!(_loc10_ && §7P§))
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
                                                                        if(_loc11_ || §7P§)
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
                                       §§push(§1V§);
                                       if(_loc11_ || param1)
                                       {
                                          if(§§pop() == "Google")
                                          {
                                             §§push(§true§.§,f§());
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
                                    §#y§.log(_loc4_);
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
               §§push(§#y§);
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
      
      public static function §&!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §7P§))
         {
            §3C§ = true;
            if(!(_loc2_ && _loc2_))
            {
               addr43:
               §true§.§`H§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      public static function §3"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3C§ = false;
            if(_loc2_ || _loc1_)
            {
               addr29:
               §true§.§=b§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §"!=§() : Boolean
      {
         return §3C§;
      }
      
      public static function §;k§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §`a§.§%+§(param1).§]y§(true);
         }
      }
      
      public static function §6!+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §`a§.§%+§(param1).§]y§(false);
         }
      }
      
      public static function §&!D§() : String
      {
         return §true§.§,f§();
      }
      
      public static function §]F§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§@!+§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
