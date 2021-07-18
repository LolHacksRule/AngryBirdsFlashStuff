package §2!&§
{
   import §24§.;
   
   public class §+h§
   {
      
      private static var §%!q§:§<!B§;
      
      private static var §9!0§:§+!V§;
      
      private static var §-!l§:Boolean = true;
      
      public static var §-z§:String = "";
      
      public static var §;=§:XML;
      
      public static var §9!v§:XML;
      
      public static const §'!C§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-!l§ = true;
            while(true)
            {
               §-z§ = "";
               while(!(_loc2_ && §+h§))
               {
                  §'!C§ = true;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §+h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(§;=§ == null)
            {
               if(_loc8_)
               {
                  §#7§.log("Server configuration not avaialble");
                  if(!_loc8_)
                  {
                     §§goto(addr30);
                  }
               }
               return;
            }
         }
         addr30:
         var _loc2_:XML = null;
         if(_loc8_ || param1)
         {
            if(param1 != null)
            {
               if(_loc8_)
               {
                  _loc2_ = §0v§(param1,§;=§);
                  addr51:
                  if(_loc2_ == null)
                  {
                     if(_loc8_ || param1)
                     {
                        _loc2_ = §0v§(§;=§.Default[0].toString(),§;=§);
                     }
                     §§goto(addr99);
                  }
                  §#7§.log("Using connection profile:" + _loc2_.Id[0]);
                  if(_loc7_ && _loc3_)
                  {
                  }
                  §§goto(addr99);
               }
               §9!v§ = _loc2_;
               §§goto(addr99);
            }
            §§goto(addr51);
         }
         addr99:
         var _loc3_:Class = §-"%§[_loc2_.ConnectionType[0].toString()];
         var _loc4_:Class = §&!j§[_loc2_.ResponseType[0].toString()];
         var _loc5_:Number = Number(_loc2_.Port[0].toString());
         if(!_loc7_)
         {
            if(_loc2_.ServerType[0] != null)
            {
               if(!_loc7_)
               {
                  §-z§ = _loc2_.ServerType[0].toString();
               }
            }
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         if(_loc8_ || param1)
         {
            §%!q§ = new _loc3_(_loc6_,_loc5_);
            do
            {
               §9!0§ = new _loc4_();
               do
               {
                  §%!q§.§9!o§(§9!0§.§2=§,§9!0§.§#8§);
               }
               while(!_loc8_);
               
            }
            while(!_loc8_);
            
         }
      }
      
      public static function §0v§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc7_ || param1)
         {
            if(param1 != null)
            {
               §§goto(addr30);
            }
            return null;
         }
         addr30:
         var _loc4_:int = 0;
         var _loc5_:* = §;=§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_ && §+h§)
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(_loc7_ || §+h§)
                  {
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(_loc7_ || §+h§)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §^!W§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§9!v§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(!_loc2_)
                     {
                        return null;
                     }
                     if(_loc1_)
                     {
                        break;
                     }
                     addr80:
                     loop3:
                     while(true)
                     {
                        §§push(!§9!v§.Directories);
                        if(_loc1_ || §+h§)
                        {
                           continue loop0;
                        }
                        addr79:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  return §9!v§.Directories[0];
                  addr55:
               }
               §§goto(addr79);
            }
         }
         §§goto(addr80);
      }
      
      public static function §2!W§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §9!0§.§2!W§(param1,param2);
         }
      }
      
      public static function §8L§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §9!0§.§;C§(param1).addCallback(param2);
         }
      }
      
      public static function §!!4§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §9!0§.§;C§(param1).§[u§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§?M§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(!(_loc10_ && param1))
         {
            §§push(§-!l§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §#7§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(§'!C§);
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
                              §#7§.log("URL sending...");
                              loop6:
                              while(_loc11_)
                              {
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§-z§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop10:
                                          while(!_loc10_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      for(; _loc11_ || param1; if(!(_loc11_ || param1))
                                                      {
                                                         continue;
                                                      },§§push(§%!q§.§8!=§()),if(!_loc10_)
                                                      {
                                                         §§goto(addr64);
                                                      },§§goto(addr83))
                                                      {
                                                         §§push(§-z§);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() == "PHP");
                                                            if(!_loc11_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(§-z§);
                                                                  if(_loc11_)
                                                                  {
                                                                     if(§§pop() == "Google")
                                                                     {
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           §§push(§%!q§.§8!=§());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr255:
                                                                              _loc4_ = §§pop() + param1;
                                                                              break;
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     break loop2;
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                            }
                                                            addr256:
                                                            if(_loc11_)
                                                            {
                                                               §§push(0);
                                                               if(_loc11_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§goto(addr256);
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        addr234:
                                                                        break loop2;
                                                                     }
                                                                     §§push(0);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  addr272:
                                                                  var _loc9_:* = param2;
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     addr393:
                                                                     if(§§hasnext(_loc9_,_loc8_))
                                                                     {
                                                                        addr391:
                                                                        _loc7_ = §§nextname(_loc8_,_loc9_);
                                                                        addr392:
                                                                        if(_loc6_ == 0)
                                                                        {
                                                                           addr383:
                                                                           _loc4_ += "?";
                                                                           addr310:
                                                                           addr384:
                                                                           addr380:
                                                                           addr381:
                                                                           §§push(_loc4_);
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 §§push(_loc7_ + "=");
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(§§pop() + param2[_loc7_]);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr339:
                                                                                    §§push(§§pop());
                                                                                    if(_loc11_ || _loc3_)
                                                                                    {
                                                                                       if(_loc11_ || §+h§)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          addr354:
                                                                                          if(_loc11_ || §+h§)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc11_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      addr298:
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(_loc11_ || param2)
                                                                                                      {
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            addr308:
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         addr371:
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr392);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr298);
                                                                                          }
                                                                                          §§goto(addr380);
                                                                                       }
                                                                                       §§goto(addr381);
                                                                                    }
                                                                                    §§push(§§pop() + "&");
                                                                                 }
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                        }
                                                                        §§goto(addr339);
                                                                        §§push(_loc4_);
                                                                     }
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        §#7§.log(_loc4_);
                                                                        if(_loc11_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               §§goto(addr393);
                                                               addr258:
                                                            }
                                                            addr262:
                                                            §§goto(addr234);
                                                         }
                                                         else
                                                         {
                                                            addr64:
                                                            §§push(§§pop() + "?C=");
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(§§pop() + param1);
                                                            }
                                                            if(_loc10_ && param2)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc10_ && param2)
                                                            {
                                                               continue loop9;
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            break loop11;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop8;
                                                         }
                                                         _loc8_ = 0;
                                                         _loc9_ = param2;
                                                         addr184:
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(_loc11_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§push(§§nextname(_loc8_,_loc9_));
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc10_ && §+h§))
                                                                     {
                                                                        addr163:
                                                                        §§push("&" + _loc5_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop() + "=");
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              §§push(§§pop() + param2[_loc5_]);
                                                                           }
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     §#7§.log(_loc4_);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr258);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr49);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc3_ = §9!0§.§;C§(param1);
                  if(!_loc10_)
                  {
                     if(_loc3_.§5"5§())
                     {
                        if(_loc11_)
                        {
                           §%!q§.sendRequest(param1,param2);
                           if(_loc11_)
                           {
                              addr427:
                           }
                        }
                     }
                     else
                     {
                        §#7§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                     break loop0;
                  }
                  §§goto(addr427);
               }
            }
            return;
         }
         §§goto(addr121);
      }
      
      public static function enable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!l§ = true;
            do
            {
               §%!q§.§ !Y§();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function disable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+h§))
         {
            §-!l§ = false;
         }
         do
         {
            §%!q§.§&"1§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function §5!W§() : Boolean
      {
         return §-!l§;
      }
      
      public static function §&2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §9!0§.§;C§(param1).§!"&§(true);
         }
      }
      
      public static function §!"#§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §9!0§.§;C§(param1).§!"&§(false);
         }
      }
      
      public static function §7! §() : String
      {
         return §%!q§.§8!=§();
      }
      
      public static function §#",§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§;=§ == null);
         if(!(_loc1_ && _loc2_))
         {
            return !§§pop();
         }
      }
   }
}
