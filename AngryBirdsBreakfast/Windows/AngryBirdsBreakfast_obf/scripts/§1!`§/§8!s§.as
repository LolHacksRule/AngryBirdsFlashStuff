package §1!`§
{
   import each.§!!'§;
   
   public class §8!s§
   {
      
      private static var §%!j§:§ !a§;
      
      private static var §+G§:§4"+§;
      
      private static var §'!9§:Boolean = true;
      
      public static var §3!t§:String = "";
      
      public static var §#!?§:XML;
      
      public static var §+" §:XML;
      
      public static const §-!1§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'!9§ = true;
            while(true)
            {
               §3!t§ = "";
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §-!1§ = true;
                     if(_loc1_)
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
      
      public function §8!s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc3_))
         {
            if(§#!?§ == null)
            {
               if(_loc7_ || §8!s§)
               {
                  addr33:
                  §!!'§.log("Server configuration not avaialble");
                  if(!_loc8_)
                  {
                     return;
                  }
               }
            }
            var _loc2_:XML = null;
            if(_loc7_)
            {
               if(param1 != null)
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     addr54:
                     _loc2_ = §]$§(param1,§#!?§);
                     addr60:
                     if(_loc2_ == null)
                     {
                        if(!_loc8_)
                        {
                           _loc2_ = §]$§(§#!?§.Default[0].toString(),§#!?§);
                           addr75:
                           §!!'§.log("Using connection profile:" + _loc2_.Id[0]);
                           if(!_loc7_)
                           {
                           }
                           var _loc3_:Class = §4P§[_loc2_.ConnectionType[0].toString()];
                           var _loc4_:Class = §`z§[_loc2_.ResponseType[0].toString()];
                           var _loc5_:Number = Number(_loc2_.Port[0].toString());
                           addr88:
                           if(_loc7_ || _loc3_)
                           {
                              if(_loc2_.ServerType[0] != null)
                              {
                                 if(_loc7_)
                                 {
                                    addr140:
                                    §3!t§ = _loc2_.ServerType[0].toString();
                                 }
                              }
                              var _loc6_:String = _loc2_.Address[0].toString();
                              if(!(_loc8_ && _loc3_))
                              {
                                 §%!j§ = new _loc3_(_loc6_,_loc5_);
                                 while(true)
                                 {
                                    §+G§ = new _loc4_();
                                    §§goto(addr193);
                                 }
                              }
                              addr193:
                              while(true)
                              {
                                 §%!j§.§3!%§(§+G§.§+!0§,§+G§.§=7§);
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                              return;
                           }
                           §§goto(addr140);
                        }
                        §+" § = _loc2_;
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr75);
               }
               §§goto(addr60);
            }
            §§goto(addr54);
         }
         §§goto(addr33);
      }
      
      public static function §]$§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 != null)
            {
               addr29:
               for each(_loc3_ in §#!?§.Connection)
               {
                  if(!_loc7_)
                  {
                     if(!_loc3_.Id[0])
                     {
                        if(_loc7_)
                        {
                        }
                     }
                     else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(!(_loc7_ && param1))
                        {
                           return _loc3_;
                        }
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr29);
      }
      
      public static function §3!b§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§+" § == null);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr91:
                     while(true)
                     {
                        §§push(!§+" §.Directories);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr90:
               }
               while(§§pop())
               {
                  if(_loc1_ && §8!s§)
                  {
                     break;
                  }
                  addr67:
                  if(_loc2_ || _loc2_)
                  {
                     return null;
                  }
                  §§goto(addr91);
               }
               return §+" §.Directories[0];
            }
            §§goto(addr90);
         }
         §§goto(addr67);
      }
      
      public static function §;!$§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §+G§.§;!$§(param1,param2);
         }
      }
      
      public static function §9!X§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §+G§.§-!6§(param1).addCallback(param2);
         }
      }
      
      public static function §#g§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §+G§.§-!6§(param1).§;!A§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§2!<§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         if(_loc11_ || param1)
         {
            §§push(§'!9§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §!!'§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               if(_loc11_ || param2)
               {
                  §§push(§-!1§);
                  while(§§pop())
                  {
                  }
                  addr409:
                  _loc3_ = §+G§.§-!6§(param1);
                  if(!_loc10_)
                  {
                     if(_loc3_.§4!E§())
                     {
                        if(!(_loc10_ && param2))
                        {
                           §%!j§.sendRequest(param1,param2);
                           if(_loc10_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §!!'§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  break;
                  addr135:
               }
               while(true)
               {
                  §§push("");
                  addr137:
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
               }
               loop8:
               while(true)
               {
                  if(_loc10_ && param1)
                  {
                     continue loop0;
                  }
                  if(!§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§pop();
                        loop10:
                        while(true)
                        {
                           §§push(§3!t§);
                           if(!(_loc10_ && _loc3_))
                           {
                              if(_loc11_)
                              {
                                 §§push(§§pop() == "PHP");
                                 if(_loc10_)
                                 {
                                    continue loop9;
                                 }
                                 if(!(_loc11_ || §8!s§))
                                 {
                                    continue loop8;
                                 }
                                 if(!_loc10_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(!_loc11_)
                                             {
                                                continue loop10;
                                             }
                                             if(!_loc10_)
                                             {
                                                if(!(_loc11_ || §8!s§))
                                                {
                                                   break loop10;
                                                }
                                                §§push(§%!j§.§=U§());
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() + "?C=");
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      addr101:
                                                      _loc4_ = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         if(true)
                                                         {
                                                            var _loc8_:int = 0;
                                                            var _loc9_:* = param2;
                                                            addr179:
                                                            §§push(§§hasnext(_loc9_,_loc8_));
                                                            if(!_loc10_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§push(§§nextname(_loc8_,_loc9_));
                                                                  if(!_loc10_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc11_)
                                                                        {
                                                                           addr158:
                                                                           §§push("&" + _loc5_);
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              §§push(§§pop() + "=");
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop() + param2[_loc5_]);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                     §§goto(addr179);
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  if(_loc11_ || §8!s§)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §!!'§.log(_loc4_);
                                                                        addr277:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr215:
                                                                        if(true)
                                                                        {
                                                                           addr279:
                                                                           _loc8_ = 0;
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              addr287:
                                                                              _loc9_ = param2;
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr398:
                                                                                 if(§§hasnext(_loc9_,_loc8_))
                                                                                 {
                                                                                    addr396:
                                                                                    _loc7_ = §§nextname(_loc8_,_loc9_);
                                                                                    addr383:
                                                                                    addr397:
                                                                                    if(_loc6_ == 0)
                                                                                    {
                                                                                       addr388:
                                                                                       _loc4_ += "?";
                                                                                       addr325:
                                                                                       addr385:
                                                                                       addr389:
                                                                                       addr386:
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(!(_loc10_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc7_ + "=");
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() + param2[_loc7_]);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr349:
                                                                                                §§push(§§pop());
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   addr352:
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc11_ || param2)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr307:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!(_loc10_ && param1))
                                                                                                               {
                                                                                                                  if(!(_loc10_ && param2))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr325);
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  §§goto(addr385);
                                                                                                               }
                                                                                                               §§goto(addr352);
                                                                                                            }
                                                                                                            §§goto(addr383);
                                                                                                         }
                                                                                                         §§goto(addr307);
                                                                                                      }
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                   addr373:
                                                                                                   if(!(_loc10_ && param2))
                                                                                                   {
                                                                                                      §§goto(addr325);
                                                                                                   }
                                                                                                   §§goto(addr389);
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             addr370:
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr373);
                                                                                             }
                                                                                             §§goto(addr388);
                                                                                          }
                                                                                          addr361:
                                                                                          if(!(_loc10_ && §8!s§))
                                                                                          {
                                                                                             §§goto(addr370);
                                                                                             §§push(§§pop() + "&");
                                                                                          }
                                                                                          §§goto(addr396);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                    §§push(_loc4_);
                                                                                 }
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §!!'§.log(_loc4_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§goto(addr409);
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 §§goto(addr409);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr398);
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     addr227:
                                                                     §§goto(addr409);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr124:
                                                         while(true)
                                                         {
                                                         }
                                                         addr124:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§3!t§);
                                                         addr108:
                                                         while(true)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr101);
                                             }
                                             while(true)
                                             {
                                                §!!'§.log("URL sending...");
                                                §§goto(addr124);
                                             }
                                          }
                                          §§goto(addr101);
                                       }
                                       else
                                       {
                                          §§push(§3!t§);
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(§§pop() == "Google")
                                             {
                                                if(_loc11_ || param1)
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(§%!j§.§=U§());
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         addr262:
                                                         §§push(§§pop() + param1);
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         §§push(0);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            _loc6_ = Number(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr279);
                                                         addr273:
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr277);
                                                   }
                                                }
                                                §§goto(addr273);
                                             }
                                             §§goto(addr409);
                                          }
                                          §§goto(addr262);
                                       }
                                    }
                                    addr63:
                                 }
                                 else
                                 {
                                    §§goto(addr135);
                                 }
                                 §§goto(addr409);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr136);
                     }
                  }
                  §§goto(addr63);
               }
            }
            return;
         }
         §§goto(addr138);
      }
      
      public static function enable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'!9§ = true;
            do
            {
               §%!j§.§6O§();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function disable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!9§ = false;
            do
            {
               §%!j§.§4f§();
            }
            while(_loc1_);
            
         }
      }
      
      public static function §+4§() : Boolean
      {
         return §'!9§;
      }
      
      public static function §try §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §+G§.§-!6§(param1).§!W§(true);
         }
      }
      
      public static function §%!U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §+G§.§-!6§(param1).§!W§(false);
         }
      }
      
      public static function §^[§() : String
      {
         return §%!j§.§=U§();
      }
      
      public static function §]!s§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§#!?§ == null);
         if(!(_loc2_ && §8!s§))
         {
            return !§§pop();
         }
      }
   }
}
