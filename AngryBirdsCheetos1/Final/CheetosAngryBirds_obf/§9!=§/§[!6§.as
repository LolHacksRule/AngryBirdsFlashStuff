package §9!=§
{
   import § !G§.§ #§;
   
   public class §[!6§
   {
      
      private static var §]Y§:§%t§;
      
      private static var §;!6§:§"#§;
      
      private static var §^!Y§:Boolean = true;
      
      public static var §3![§:String = "";
      
      public static var §^!-§:XML;
      
      public static var §[!D§:XML;
      
      public static const §=6§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!Y§ = true;
         }
         while(true)
         {
            §3![§ = "";
            while(!_loc1_)
            {
               §=6§ = true;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §[!6§()
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
         if(_loc7_)
         {
            if(§^!-§ == null)
            {
               if(!_loc8_)
               {
                  § #§.log("Server configuration not avaialble");
                  if(_loc7_)
                  {
                     §§goto(addr28);
                  }
               }
               §§goto(addr28);
            }
            var _loc2_:XML = null;
            if(_loc7_ || param1)
            {
               if(param1 != null)
               {
                  if(!_loc8_)
                  {
                     _loc2_ = §4!V§(param1,§^!-§);
                  }
                  var _loc3_:Class = §@;§[_loc2_.ConnectionType[0].toString()];
                  var _loc4_:Class = §6!S§[_loc2_.ResponseType[0].toString()];
                  var _loc5_:Number = Number(_loc2_.Port[0].toString());
                  addr88:
                  if(!(_loc8_ && §[!6§))
                  {
                     if(_loc2_.ServerType[0] != null)
                     {
                        if(_loc7_)
                        {
                           addr140:
                           §3![§ = _loc2_.ServerType[0].toString();
                        }
                     }
                     var _loc6_:String = _loc2_.Address[0].toString();
                     if(!(_loc8_ && param1))
                     {
                        §]Y§ = new _loc3_(_loc6_,_loc5_);
                     }
                     do
                     {
                        §;!6§ = new _loc4_();
                        do
                        {
                           §]Y§.§0i§(§;!6§.§do§,§;!6§.§!!Y§);
                        }
                        while(_loc8_);
                        
                     }
                     while(!_loc7_);
                     
                     return;
                  }
                  §§goto(addr140);
               }
               if(_loc2_ == null)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc2_ = §4!V§(§^!-§.Default[0].toString(),§^!-§);
                  }
                  §§goto(addr88);
               }
               § #§.log("Using connection profile:" + _loc2_.Id[0]);
               if(_loc7_ || _loc2_)
               {
                  §[!D§ = _loc2_;
               }
            }
            §§goto(addr88);
         }
         addr28:
      }
      
      public static function §4!V§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_)
         {
            if(param1 != null)
            {
               §§goto(addr25);
            }
            return null;
         }
         addr25:
         var _loc4_:int = 0;
         var _loc5_:* = §^!-§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(_loc6_ && param2)
                  {
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(!(_loc6_ && param2))
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §]Z§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§[!D§ == null);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr86:
                     loop2:
                     while(true)
                     {
                        §§push(!§[!D§.Directories);
                        if(!(_loc1_ && _loc2_))
                        {
                           while(§§pop())
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              if(!(_loc1_ && _loc1_))
                              {
                                 return null;
                              }
                              continue loop2;
                           }
                           return §[!D§.Directories[0];
                           addr54:
                        }
                     }
                  }
                  addr85:
               }
               §§goto(addr54);
            }
            §§goto(addr85);
         }
         §§goto(addr86);
      }
      
      public static function §%!G§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §;!6§.§%!G§(param1,param2);
         }
      }
      
      public static function §@C§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §[!6§))
         {
            §;!6§.§;!!§(param1).addCallback(param2);
         }
      }
      
      public static function §="§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §;!6§.§;!!§(param1).§]Q§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§5z§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(_loc10_ || param1)
         {
            §§push(§^!Y§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  § #§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(§=6§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push("");
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 § #§.log("URL sending...");
                                 loop6:
                                 while(true)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§3![§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop12:
                                                   for(; !_loc11_; continue loop13)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§3![§);
                                                         if(!(_loc11_ && §[!6§))
                                                         {
                                                            §§push(§§pop() == "PHP");
                                                            if(_loc11_ && param1)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(_loc11_ && param2)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(§]Y§.§var §());
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop() + "?C=");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                        if(!(_loc10_ || param1))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr101:
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           continue loop14;
                                                                        }
                                                                        addr101:
                                                                     }
                                                                     §§goto(addr101);
                                                                  }
                                                                  while(!_loc10_)
                                                                  {
                                                                     continue loop12;
                                                                     §§goto(addr101);
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  var _loc8_:int = 0;
                                                                  var _loc9_:* = param2;
                                                                  addr173:
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  if(_loc10_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(§§nextname(_loc8_,_loc9_));
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr172:
                                                                                 §§push("&" + _loc5_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() + "=");
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() + param2[_loc5_]);
                                                                                    }
                                                                                 }
                                                                                 _loc4_ = §§pop() + §§pop();
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr173);
                                                                        }
                                                                        §§goto(addr172);
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              § #§.log(_loc4_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr201:
                                                                                 break;
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           addr199:
                                                                           if(true)
                                                                           {
                                                                              addr248:
                                                                              _loc8_ = 0;
                                                                              if(!(_loc11_ && param2))
                                                                              {
                                                                                 _loc9_ = param2;
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    addr392:
                                                                                    if(§§hasnext(_loc9_,_loc8_))
                                                                                    {
                                                                                       addr390:
                                                                                       _loc7_ = §§nextname(_loc8_,_loc9_);
                                                                                       addr391:
                                                                                       if(_loc6_ == 0)
                                                                                       {
                                                                                          addr382:
                                                                                          _loc4_ += "?";
                                                                                          addr316:
                                                                                          addr379:
                                                                                          addr383:
                                                                                          addr380:
                                                                                          §§push(_loc4_);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!(_loc11_ && param1))
                                                                                             {
                                                                                                §§push(_loc7_ + "=");
                                                                                                if(!(_loc11_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() + param2[_loc7_]);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      addr347:
                                                                                                      _loc4_ = §§pop();
                                                                                                      addr348:
                                                                                                      §§push(_loc6_);
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(!(_loc11_ && param2))
                                                                                                         {
                                                                                                            addr284:
                                                                                                            if(_loc10_ || §[!6§)
                                                                                                            {
                                                                                                               addr292:
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!(_loc11_ && §[!6§))
                                                                                                               {
                                                                                                                  if(!(_loc11_ && param2))
                                                                                                                  {
                                                                                                                     if(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr316);
                                                                                                                        }
                                                                                                                        §§goto(addr392);
                                                                                                                     }
                                                                                                                     §§goto(addr391);
                                                                                                                  }
                                                                                                                  addr365:
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || §[!6§)
                                                                                                                     {
                                                                                                                        §§goto(addr316);
                                                                                                                     }
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  §§goto(addr383);
                                                                                                               }
                                                                                                               §§goto(addr348);
                                                                                                            }
                                                                                                            §§goto(addr391);
                                                                                                         }
                                                                                                         §§goto(addr292);
                                                                                                      }
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                   §§goto(addr382);
                                                                                                }
                                                                                                addr364:
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             addr353:
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                if(!(_loc11_ && param1))
                                                                                                {
                                                                                                   §§goto(addr364);
                                                                                                   §§push(§§pop() + "&");
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                       §§push(_loc4_);
                                                                                    }
                                                                                    if(!(_loc11_ && param1))
                                                                                    {
                                                                                       addr403:
                                                                                       § #§.log(_loc4_);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 §§goto(addr382);
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr201);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§3![§);
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     if(§§pop() == "Google")
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(§]Y§.§var §());
                                                                           if(_loc10_ || §[!6§)
                                                                           {
                                                                              addr234:
                                                                              §§push(§§pop() + param1);
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(0);
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§goto(addr199);
                                                                           }
                                                                           §§goto(addr403);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                            }
                                                            _loc3_ = §;!6§.§;!!§(param1);
                                                            if(_loc10_ || param2)
                                                            {
                                                               if(_loc3_.§0!X§())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     §]Y§.sendRequest(param1,param2);
                                                                     if(!_loc10_)
                                                                     {
                                                                     }
                                                                     addr450:
                                                                     break loop0;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  § #§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                               }
                                                            }
                                                            §§goto(addr450);
                                                         }
                                                         §§goto(addr101);
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                addr117:
                                             }
                                             §§goto(addr58);
                                          }
                                          §§goto(addr117);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr413);
                  }
               }
            }
            return;
         }
         §§goto(addr120);
      }
      
      public static function §,!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!Y§ = true;
         }
         do
         {
            §]Y§.§ in§();
         }
         while(!_loc2_);
         
      }
      
      public static function §8!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!Y§ = false;
         }
         do
         {
            §]Y§.§]V§();
         }
         while(_loc2_);
         
      }
      
      public static function §`E§() : Boolean
      {
         return §^!Y§;
      }
      
      public static function §'I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §;!6§.§;!!§(param1).§[A§(true);
         }
      }
      
      public static function §#-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §;!6§.§;!!§(param1).§[A§(false);
         }
      }
      
      public static function §]&§() : String
      {
         return §]Y§.§var §();
      }
      
      public static function §#D§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§^!-§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
   }
}
