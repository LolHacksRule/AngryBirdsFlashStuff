package §7X§
{
   import §"x§.§-8§;
   
   public class §^"§
   {
      
      private static var §=!1§:§!!%§;
      
      private static var §%4§:§-!w§;
      
      private static var §`!§:Boolean = true;
      
      public static var §+^§:String = "";
      
      public static var §3`§:XML;
      
      public static var §&N§:XML;
      
      public static const §=!j§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §^"§)
         {
            §`!§ = true;
            do
            {
               §+^§ = "";
               do
               {
                  §=!j§ = true;
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §^"§()
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(§3`§ == null)
            {
               if(_loc8_)
               {
                  §-8§.log("Server configuration not avaialble");
                  if(!_loc7_)
                  {
                     §§goto(addr29);
                  }
               }
               §§goto(addr29);
            }
            var _loc2_:XML = null;
            if(_loc8_ || param1)
            {
               if(param1 != null)
               {
                  if(_loc8_ || _loc2_)
                  {
                     _loc2_ = §#!A§(param1,§3`§);
                     addr56:
                     if(_loc2_ == null)
                     {
                        if(_loc8_ || _loc2_)
                        {
                           addr66:
                           _loc2_ = §#!A§(§3`§.Default[0].toString(),§3`§);
                        }
                        addr103:
                        §&N§ = _loc2_;
                        addr106:
                        var _loc3_:Class = §69§[_loc2_.ConnectionType[0].toString()];
                        var _loc4_:Class = §"!5§[_loc2_.ResponseType[0].toString()];
                        var _loc5_:Number = Number(_loc2_.Port[0].toString());
                        if(_loc8_)
                        {
                           if(_loc2_.ServerType[0] != null)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 §+^§ = _loc2_.ServerType[0].toString();
                              }
                           }
                        }
                        var _loc6_:String = _loc2_.Address[0].toString();
                        if(_loc8_)
                        {
                           §=!1§ = new _loc3_(_loc6_,_loc5_);
                           while(true)
                           {
                              §%4§ = new _loc4_();
                              loop1:
                              while(!(_loc7_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    §=!1§.§%!@§(§%4§.§%z§,§%4§.§&!§);
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr201);
                     }
                     §§push(§-8§);
                     §§push("Using connection profile:");
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc2_.Id[0]);
                     }
                     §§pop().log(§§pop());
                     if(!(_loc7_ && §^"§))
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr103);
               }
               §§goto(addr56);
            }
            §§goto(addr66);
         }
         addr29:
      }
      
      public static function §#!A§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || param1)
         {
            if(param1 != null)
            {
               §§goto(addr29);
            }
            return null;
         }
         addr29:
         var _loc4_:int = 0;
         var _loc5_:* = §3`§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc7_ && §^"§))
               {
                  if(_loc3_.Id[0])
                  {
                     if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  if(_loc7_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §07§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§&N§ == null);
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
                        §§push(!§&N§.Directories);
                        if(_loc2_)
                        {
                           while(§§pop())
                           {
                              if(_loc1_ && _loc2_)
                              {
                                 break;
                              }
                              if(!_loc1_)
                              {
                                 return null;
                              }
                              continue loop2;
                           }
                           return §&N§.Directories[0];
                           addr54:
                        }
                     }
                  }
                  addr75:
               }
               §§goto(addr54);
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      public static function §^!J§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §%4§.§^!J§(param1,param2);
         }
      }
      
      public static function §>!W§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §%4§.§9w§(param1).addCallback(param2);
         }
      }
      
      public static function §5!z§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §%4§.§9w§(param1).§&!0§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§1!u§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(!_loc10_)
         {
            §§push(§`!§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§-8§);
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
                  §§push(§=!j§);
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
                              §-8§.log("URL sending...");
                              loop5:
                              for(; _loc11_ || §^"§; if(_loc10_ && §^"§)
                              {
                                 continue;
                              },if(!(_loc11_ || _loc3_))
                              {
                                 continue loop2;
                              },§§push(§=!1§.§&!j§()),if(!_loc10_)
                              {
                                 §§goto(addr92);
                              },§§goto(addr106))
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§+^§);
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
                                                   if(!(_loc10_ && §^"§))
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         continue loop5;
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§+^§);
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
                                                   if(!(_loc10_ && §^"§))
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
                                                               §-8§.log(_loc4_);
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
                                                                           if(_loc11_ || §^"§)
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
                                                                                             if(_loc11_ || §^"§)
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
                                                               §-8§.log(_loc4_);
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
                                                   §§push(§+^§);
                                                   if(_loc11_ || param2)
                                                   {
                                                      if(§§pop() == "Google")
                                                      {
                                                         if(_loc11_ || §^"§)
                                                         {
                                                            §§push(§=!1§.§&!j§());
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
                  _loc3_ = §%4§.§9w§(param1);
                  if(_loc11_ || param2)
                  {
                     if(_loc3_.§ g§())
                     {
                        if(_loc11_ || _loc3_)
                        {
                           §=!1§.sendRequest(param1,param2);
                           if(_loc10_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §-8§.log("[Server] WARNING: Trying to send request using a disabled command");
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
      
      public static function §8C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!§ = true;
            do
            {
               §=!1§.§,!G§();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function §^!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §^"§)
         {
            §`!§ = false;
            do
            {
               §=!1§.§;l§();
            }
            while(_loc1_ && §^"§);
            
         }
      }
      
      public static function §5h§() : Boolean
      {
         return §`!§;
      }
      
      public static function §']§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §%4§.§9w§(param1).§=!3§(true);
         }
      }
      
      public static function §5!2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §%4§.§9w§(param1).§=!3§(false);
         }
      }
      
      public static function §<!W§() : String
      {
         return §=!1§.§&!j§();
      }
      
      public static function §]!x§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§3`§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
