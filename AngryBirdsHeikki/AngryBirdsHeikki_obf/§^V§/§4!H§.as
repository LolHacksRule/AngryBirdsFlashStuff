package §^V§
{
   import §@R§.§4,§;
   
   public class §4!H§
   {
      
      private static var §=!e§:§"e§;
      
      private static var §5!0§:§@s§;
      
      private static var §>!!§:Boolean = true;
      
      public static var §=!M§:String = "";
      
      public static var §4R§:XML;
      
      public static var §@!L§:XML;
      
      public static const §``§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!!§ = true;
            while(true)
            {
               §=!M§ = "";
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     §``§ = true;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §4!H§()
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || _loc3_)
         {
            if(§4R§ == null)
            {
               if(!(_loc8_ && §4!H§))
               {
                  addr33:
                  §4,§.log("Server configuration not avaialble");
                  if(_loc8_)
                  {
                     addr39:
                     var _loc2_:XML = null;
                     if(!_loc8_)
                     {
                        if(param1 != null)
                        {
                           if(_loc7_)
                           {
                              _loc2_ = §4!!§(param1,§4R§);
                           }
                           addr85:
                           §@!L§ = _loc2_;
                           var _loc3_:Class = §;#§[_loc2_.ConnectionType[0].toString()];
                           var _loc4_:Class = §?!A§[_loc2_.ResponseType[0].toString()];
                           var _loc5_:Number = Number(_loc2_.Port[0].toString());
                           if(!(_loc8_ && _loc2_))
                           {
                              if(_loc2_.ServerType[0] != null)
                              {
                                 if(_loc7_)
                                 {
                                    addr140:
                                    §=!M§ = _loc2_.ServerType[0].toString();
                                 }
                              }
                              var _loc6_:String = _loc2_.Address[0].toString();
                              if(!(_loc8_ && §4!H§))
                              {
                                 §=!e§ = new _loc3_(_loc6_,_loc5_);
                              }
                              while(true)
                              {
                                 §5!0§ = new _loc4_();
                                 while(!_loc8_)
                                 {
                                    §=!e§.§]!]§(§5!0§.§0!<§,§5!0§.§=!U§);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                           §§goto(addr140);
                        }
                        if(_loc2_ == null)
                        {
                           if(_loc7_)
                           {
                              _loc2_ = §4!!§(§4R§.Default[0].toString(),§4R§);
                              addr70:
                              §4,§.log("Using connection profile:" + _loc2_.Id[0]);
                              if(!(_loc8_ && §4!H§))
                              {
                                 §§goto(addr85);
                              }
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr85);
                  }
               }
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr33);
      }
      
      public static function §4!!§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            if(param1 != null)
            {
               addr25:
               for each(_loc3_ in §4R§.Connection)
               {
                  if(!(_loc6_ && param1))
                  {
                     if(!_loc3_.Id[0])
                     {
                        if(_loc7_ || param1)
                        {
                        }
                     }
                     else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(_loc7_ || param2)
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
      
      public static function §`l§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§@!L§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr73:
                     if(_loc1_ || _loc2_)
                     {
                        return null;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(!§@!L§.Directories);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        addr79:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  return §@!L§.Directories[0];
                  addr50:
               }
               §§goto(addr79);
            }
         }
         §§goto(addr73);
      }
      
      public static function §-%§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §5!0§.§-%§(param1,param2);
         }
      }
      
      public static function §^!6§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §5!0§.§,S§(param1).addCallback(param2);
         }
      }
      
      public static function §2!R§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §5!0§.§,S§(param1).§-=§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§;a§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         if(!(_loc11_ && param2))
         {
            §§push(§>!!§);
            if(!(_loc11_ && _loc3_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§``§);
                     addr134:
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push("");
                              loop3:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §4,§.log("URL sending...");
                                    loop5:
                                    while(true)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§=!M§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop8:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§=!M§);
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            §§push(§§pop() == "PHP");
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!(_loc10_ || _loc3_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc11_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(§=!e§.§%!'§());
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        addr84:
                                                                        if(!(_loc10_ || param1))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(§§pop() + "?C=");
                                                                        if(_loc10_)
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                  }
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc11_ && _loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     addr394:
                                                                     var _loc8_:* = 0;
                                                                     var _loc9_:* = param2;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc9_,_loc8_));
                                                                        if(_loc11_ && §4!H§)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc11_ && §4!H§))
                                                                           {
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 §4,§.log(_loc4_);
                                                                                 addr231:
                                                                                 break loop11;
                                                                                 addr266:
                                                                              }
                                                                              break loop11;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§§nextname(_loc8_,_loc9_));
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(!(_loc10_ || §4!H§))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc4_);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr167:
                                                                                 §§push("&" + _loc5_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr182:
                                                                                    §§push(§§pop() + "=");
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr176:
                                                                                       §§push(§§pop() + param2[_loc5_]);
                                                                                    }
                                                                                    _loc4_ = §§pop() + §§pop();
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr176);
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           §§goto(addr167);
                                                                        }
                                                                     }
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr394);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§§nextname(_loc8_,_loc9_));
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr391:
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() != 0)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    continue loop15;
                                                                                 }
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + "?");
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr317:
                                                                                                   §§push(_loc7_ + "=");
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() + param2[_loc7_]);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc10_ || param2)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         addr342:
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            for(; _loc10_ || param1; _loc6_ = §§pop(),if(!(_loc10_ || _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },if(!_loc11_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               continue loop24;
                                                                                                            })
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + 1);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   addr366:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      §§goto(addr317);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr342);
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr392:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§=!M§);
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(§§pop() == "Google")
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              §§push(§=!e§.§%!'§());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr256:
                                                                                 §§push(§§pop() + param1);
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    _loc6_ = Number(§§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr231);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(0);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 if(!(_loc11_ && §4!H§))
                                                                                 {
                                                                                    _loc9_ = param2;
                                                                                    if(!(_loc11_ && §4!H§))
                                                                                    {
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr391);
                                                                                 }
                                                                                 §§goto(addr395);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr266);
                                                                           §§goto(addr231);
                                                                        }
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               addr395:
                                                               if(_loc10_)
                                                               {
                                                                  §4,§.log(_loc4_);
                                                                  if(_loc10_ || §4!H§)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr456);
                                                            }
                                                            _loc3_ = §5!0§.§,S§(param1);
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               if(_loc3_.§+f§())
                                                               {
                                                                  if(!(_loc11_ && §4!H§))
                                                                  {
                                                                     §=!e§.sendRequest(param1,param2);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr436:
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §4,§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                               }
                                                               §§goto(addr456);
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr84);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                §§goto(addr60);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr408);
                     }
                  }
               }
               else
               {
                  §4,§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
               }
               addr456:
               return;
            }
            §§goto(addr134);
         }
         §§goto(addr110);
      }
      
      public static function §<!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!!§ = true;
         }
         do
         {
            §=!e§.§ !2§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public static function §1>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4!H§)
         {
            §>!!§ = false;
         }
         do
         {
            §=!e§.§&,§();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public static function §`L§() : Boolean
      {
         return §>!!§;
      }
      
      public static function §0v§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §5!0§.§,S§(param1).§?!L§(true);
         }
      }
      
      public static function §8B§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5!0§.§,S§(param1).§?!L§(false);
         }
      }
      
      public static function §7!`§() : String
      {
         return §=!e§.§%!'§();
      }
      
      public static function §7!"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§4R§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
   }
}
