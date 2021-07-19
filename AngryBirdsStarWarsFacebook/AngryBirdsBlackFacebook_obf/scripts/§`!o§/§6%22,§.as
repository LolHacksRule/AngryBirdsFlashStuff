package §`!o§
{
   import §5t§.Log;
   
   public class §6",§
   {
      
      private static var §=&§:§^!f§;
      
      private static var §"!P§:§4"0§;
      
      private static var §'!a§:Boolean = true;
      
      public static var §#"7§:String = "";
      
      public static var §7"'§:XML;
      
      public static var §1#A§:XML;
      
      public static const §6!N§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!a§ = true;
            while(true)
            {
               §#"7§ = "";
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §6!N§ = true;
                     if(_loc2_ || §6",§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §6",§()
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || _loc2_)
         {
            if(§7"'§ == null)
            {
               if(_loc7_)
               {
                  addr28:
                  Log.log("Server configuration not avaialble");
                  if(_loc8_)
                  {
                     addr34:
                     var _loc2_:XML = null;
                     if(!_loc8_)
                     {
                        if(param1 != null)
                        {
                           if(!_loc8_)
                           {
                              _loc2_ = §#!-§(param1,§7"'§);
                              addr50:
                              if(_loc2_ == null)
                              {
                                 if(_loc7_)
                                 {
                                    _loc2_ = §#!-§(§7"'§.Default[0].toString(),§7"'§);
                                 }
                                 var _loc3_:Class = §4p§[_loc2_.ConnectionType[0].toString()];
                                 var _loc4_:Class = §?"8§[_loc2_.ResponseType[0].toString()];
                                 var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                 addr83:
                                 if(_loc7_)
                                 {
                                    if(_loc2_.ServerType[0] != null)
                                    {
                                       if(_loc7_)
                                       {
                                          addr130:
                                          §#"7§ = _loc2_.ServerType[0].toString();
                                       }
                                    }
                                    var _loc6_:String = _loc2_.Address[0].toString();
                                    if(_loc7_)
                                    {
                                       §=&§ = new _loc3_(_loc6_,_loc5_);
                                    }
                                    while(true)
                                    {
                                       §"!P§ = new _loc4_();
                                       while(!(_loc8_ && _loc2_))
                                       {
                                          §=&§.§9R§(§"!P§.§,!-§,§"!P§.§^""§);
                                          if(!(_loc8_ && param1))
                                          {
                                             return;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr130);
                              }
                              Log.log("Using connection profile:" + _loc2_.Id[0]);
                              if(_loc7_ || param1)
                              {
                                 addr80:
                                 §1#A§ = _loc2_;
                              }
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr50);
                     }
                     §§goto(addr80);
                  }
               }
               return;
            }
            §§goto(addr34);
         }
         §§goto(addr28);
      }
      
      public static function §#!-§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!(_loc7_ && _loc3_))
         {
            if(param1 != null)
            {
               §§goto(addr29);
            }
            return null;
         }
         addr29:
         var _loc4_:int = 0;
         var _loc5_:* = §7"'§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc7_ && _loc3_))
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
                     if(!_loc7_)
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
      
      public static function §<[§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§1#A§ == null);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr76:
                     loop2:
                     while(true)
                     {
                        §§push(!§1#A§.Directories);
                        if(!_loc1_)
                        {
                           while(§§pop())
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              if(!_loc1_)
                              {
                                 return null;
                              }
                              continue loop2;
                           }
                           return §1#A§.Directories[0];
                           addr44:
                        }
                     }
                  }
                  addr75:
               }
               §§goto(addr44);
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      public static function §%C§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §6",§))
         {
            §"!P§.§%C§(param1,param2);
         }
      }
      
      public static function §>V§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §6",§))
         {
            §"!P§.§0"2§(param1).addCallback(param2);
         }
      }
      
      public static function §,w§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §6",§))
         {
            §"!P§.§0"2§(param1).§&z§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§return§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         if(_loc10_)
         {
            §§push(§'!a§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  Log.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(§6!N§);
                  loop2:
                  while(§§pop())
                  {
                     if(_loc10_ || param2)
                     {
                        while(true)
                        {
                           §§push("");
                           addr141:
                           while(true)
                           {
                              _loc4_ = §§pop();
                           }
                        }
                        addr140:
                     }
                     loop3:
                     while(true)
                     {
                        Log.log("URL sending...");
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§#"7§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(§#"7§);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() == "Google")
                                                {
                                                   addr247:
                                                   §§push(§=&§.§@"X§());
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                }
                                                break loop2;
                                             }
                                             _loc4_ = §§pop();
                                             addr255:
                                             if(_loc10_ || param2)
                                             {
                                                §§push(0);
                                                if(_loc10_)
                                                {
                                                   _loc6_ = Number(§§pop());
                                                   if(!(_loc11_ && param2))
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr247);
                                                         }
                                                         if(false)
                                                         {
                                                            addr240:
                                                            break loop2;
                                                         }
                                                         addr268:
                                                         var _loc8_:int = 0;
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   break loop2;
                                                }
                                                §§goto(addr268);
                                             }
                                             break;
                                          }
                                          if(_loc10_ || _loc3_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(§=&§.§@"X§());
                                                if(!(_loc11_ && §6",§))
                                                {
                                                   addr75:
                                                   if(_loc11_ && param2)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(§§pop() + "?C=");
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   if(_loc10_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                }
                                                _loc4_ = §§pop();
                                                addr102:
                                                if(_loc11_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc11_)
                                                {
                                                   continue loop1;
                                                }
                                                if(false)
                                                {
                                                   continue loop5;
                                                }
                                                _loc8_ = 0;
                                                var _loc9_:* = param2;
                                                addr193:
                                                §§push(§§hasnext(_loc9_,_loc8_));
                                                if(!_loc11_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(§§nextname(_loc8_,_loc9_));
                                                      if(!_loc11_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc11_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc10_ || §6",§)
                                                            {
                                                               addr167:
                                                               §§push("&" + _loc5_);
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + "=");
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() + param2[_loc5_]);
                                                                  }
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            Log.log(_loc4_);
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr276:
                                                         _loc9_ = param2;
                                                         if(!_loc11_)
                                                         {
                                                            addr382:
                                                            if(§§hasnext(_loc9_,_loc8_))
                                                            {
                                                               addr380:
                                                               _loc7_ = §§nextname(_loc8_,_loc9_);
                                                               addr365:
                                                               addr381:
                                                               if(_loc6_ == 0)
                                                               {
                                                                  addr367:
                                                                  §§push(_loc4_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr372:
                                                                     _loc4_ = §§pop() + "?";
                                                                     addr309:
                                                                     addr373:
                                                                     §§push(_loc4_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(_loc7_ + "=");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + param2[_loc7_]);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           addr331:
                                                                           §§push(§§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 addr336:
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr289:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          if(!(_loc11_ && §6",§))
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   §§goto(addr382);
                                                                                                }
                                                                                                §§goto(addr367);
                                                                                             }
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 addr360:
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                              §§goto(addr367);
                                                                           }
                                                                           §§push(§§pop() + "&");
                                                                        }
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr360);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                               §§goto(addr331);
                                                               §§push(_loc4_);
                                                            }
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               addr393:
                                                               Log.log(_loc4_);
                                                               if(_loc10_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               break loop0;
                                                            }
                                                            break loop0;
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                      §§goto(addr393);
                                                   }
                                                }
                                                §§goto(addr382);
                                             }
                                             else
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      break loop6;
                                                   }
                                                   §§push(§#"7§);
                                                   if(_loc11_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() == "PHP");
                                                   if(_loc10_ || §6",§)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr113:
                                                   while(!(_loc11_ && _loc3_))
                                                   {
                                                      §§pop();
                                                      continue loop9;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr75);
                                          }
                                          §§goto(addr102);
                                          §§goto(addr382);
                                       }
                                       §§goto(addr240);
                                       addr55:
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  _loc3_ = §"!P§.§0"2§(param1);
                  if(_loc10_ || _loc3_)
                  {
                     if(_loc3_.§6!h§())
                     {
                        if(!_loc11_)
                        {
                           §=&§.sendRequest(param1,param2);
                           if(!(_loc11_ && §6",§))
                           {
                              addr426:
                           }
                        }
                        §§goto(addr426);
                     }
                     else
                     {
                        Log.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                     break loop0;
                  }
                  §§goto(addr426);
               }
            }
            return;
         }
         §§goto(addr140);
      }
      
      public static function enable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'!a§ = true;
         }
         do
         {
            §=&§.§&#>§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function disable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!a§ = false;
         }
         do
         {
            §=&§.§,#U§();
         }
         while(_loc1_);
         
      }
      
      public static function isEnabled() : Boolean
      {
         return §'!a§;
      }
      
      public static function §9!j§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §"!P§.§0"2§(param1).§1#V§(true);
         }
      }
      
      public static function §=#G§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §"!P§.§0"2§(param1).§1#V§(false);
         }
      }
      
      public static function §?"c§() : String
      {
         return §=&§.§@"X§();
      }
      
      public static function §;!=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§7"'§ == null);
         if(!(_loc1_ && §6",§))
         {
            return !§§pop();
         }
      }
   }
}
