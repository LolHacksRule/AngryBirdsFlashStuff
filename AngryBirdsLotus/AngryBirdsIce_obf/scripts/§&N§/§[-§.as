package §&N§
{
   import §;8§.§3f§;
   
   public class §[-§
   {
      
      private static var §!D§:§=>§;
      
      private static var §8d§:§=§;
      
      private static var §7=§:Boolean = true;
      
      public static var §1K§:String = "";
      
      public static var §+a§:XML;
      
      public static var §>R§:XML;
      
      public static const §5N§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7=§ = true;
            while(true)
            {
               §1K§ = "";
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §5N§ = true;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §[-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
            if(§+a§ == null)
            {
               if(!(_loc7_ && §[-§))
               {
                  addr29:
                  §3f§.log("Server configuration not avaialble");
                  if(!(_loc7_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            var _loc2_:XML = null;
            if(!_loc7_)
            {
               if(param1 != null)
               {
                  if(_loc8_ || param1)
                  {
                     addr55:
                     _loc2_ = §4#§(param1,§+a§);
                     addr61:
                     if(_loc2_ == null)
                     {
                        if(_loc8_ || §[-§)
                        {
                           addr71:
                           _loc2_ = §4#§(§+a§.Default[0].toString(),§+a§);
                           addr81:
                           §§push(§3f§);
                           §§push("Using connection profile:");
                           if(_loc8_)
                           {
                              §§push(§§pop() + _loc2_.Id[0]);
                           }
                           §§pop().log(§§pop());
                           if(_loc8_ || param1)
                           {
                              §>R§ = _loc2_;
                           }
                        }
                        var _loc3_:Class = §#w§[_loc2_.ConnectionType[0].toString()];
                        var _loc4_:Class = §'!2§[_loc2_.ResponseType[0].toString()];
                        var _loc5_:Number = Number(_loc2_.Port[0].toString());
                        if(_loc8_)
                        {
                           if(_loc2_.ServerType[0] != null)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §1K§ = _loc2_.ServerType[0].toString();
                              }
                           }
                        }
                        var _loc6_:String = _loc2_.Address[0].toString();
                        if(!_loc7_)
                        {
                           §!D§ = new _loc3_(_loc6_,_loc5_);
                        }
                        while(true)
                        {
                           §8d§ = new _loc4_();
                           while(_loc8_)
                           {
                              §!D§.§^!2§(§8d§.§7Q§,§8d§.§6f§);
                              if(_loc8_ || §[-§)
                              {
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr71);
               }
               §§goto(addr61);
            }
            §§goto(addr55);
         }
         §§goto(addr29);
      }
      
      public static function §4#§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            if(param1 != null)
            {
               §§goto(addr25);
            }
            return null;
         }
         addr25:
         var _loc4_:int = 0;
         var _loc5_:* = §+a§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(_loc6_ && §[-§)
                  {
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §]B§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§>R§ == null);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc1_ && _loc1_)
                     {
                        break;
                     }
                     if(!(_loc1_ && §[-§))
                     {
                        return null;
                     }
                     addr86:
                     loop3:
                     while(true)
                     {
                        §§push(!§>R§.Directories);
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        addr85:
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
                  return §>R§.Directories[0];
                  addr61:
               }
               §§goto(addr85);
            }
         }
         §§goto(addr86);
      }
      
      public static function §2w§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §8d§.§2w§(param1,param2);
         }
      }
      
      public static function §8&§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §8d§.§4G§(param1).addCallback(param2);
         }
      }
      
      public static function §else §(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §8d§.§4G§(param1).§2&§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§"!7§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(_loc10_ || _loc3_)
         {
            §§push(§7=§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§push(§5N§);
                  loop1:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§push("");
                        addr120:
                        while(true)
                        {
                           _loc4_ = §§pop();
                        }
                     }
                     loop8:
                     while(true)
                     {
                        if(!(_loc10_ || param2))
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           break;
                        }
                        while(true)
                        {
                           §§pop();
                           if(_loc10_)
                           {
                              §§push(§1K§);
                              if(!_loc11_)
                              {
                                 if(!(_loc11_ && §[-§))
                                 {
                                    §§push("PHP");
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc10_)
                                       {
                                          if(_loc10_ || param2)
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          else
                                          {
                                             §§goto(addr120);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr78:
                                    }
                                    continue;
                                    §§push(§§pop());
                                    break;
                                 }
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                                 addr96:
                              }
                              break;
                           }
                           addr114:
                           while(true)
                           {
                              addr94:
                              addr122:
                              while(true)
                              {
                                 §§goto(addr96);
                              }
                              addr179:
                              var _loc8_:* = 0;
                              var _loc9_:* = param2;
                              addr179:
                              §§push(§§hasnext(_loc9_,_loc8_));
                              if(!_loc11_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(§§nextname(_loc8_,_loc9_));
                                    if(!(_loc11_ && param1))
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc10_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc10_ || _loc3_)
                                          {
                                             addr151:
                                             §§push("&");
                                             if(_loc10_ || §[-§)
                                             {
                                                §§push(§§pop() + _loc5_);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() + "=");
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + param2[_loc5_]);
                                                   }
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr151);
                                 }
                                 if(!(_loc11_ && param2))
                                 {
                                    if(_loc10_)
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          §3f§.log(_loc4_);
                                          addr227:
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       addr374:
                                    }
                                    §3f§.log(_loc4_);
                                    if(!(_loc11_ && §[-§))
                                    {
                                       break loop1;
                                    }
                                    break loop0;
                                 }
                                 addr373:
                                 §§goto(addr374);
                              }
                              addr372:
                              if(§§pop())
                              {
                                 addr369:
                                 _loc7_ = §§nextname(_loc8_,_loc9_);
                                 addr356:
                                 if(_loc6_ == 0)
                                 {
                                    addr361:
                                    _loc4_ += "?";
                                    addr278:
                                    addr362:
                                    addr360:
                                    addr359:
                                    §§push(_loc4_);
                                    if(_loc10_ || _loc3_)
                                    {
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§push(_loc7_ + "=");
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + param2[_loc7_]);
                                          }
                                          if(!(_loc11_ && _loc3_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc10_ || param1)
                                             {
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   addr326:
                                                   §§push(§§pop());
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!_loc11_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!_loc11_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  addr275:
                                                                  _loc6_ = §§pop();
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr372);
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr369);
                                                }
                                                §§goto(addr361);
                                             }
                                             addr352:
                                             _loc4_ = §§pop();
                                             §§goto(addr361);
                                          }
                                          addr344:
                                          if(_loc10_ || §[-§)
                                          {
                                             §§goto(addr352);
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr360);
                                       }
                                       addr341:
                                       if(_loc10_)
                                       {
                                          §§goto(addr344);
                                          §§push("&");
                                       }
                                       §§goto(addr359);
                                    }
                                    §§goto(addr326);
                                 }
                                 §§goto(addr341);
                                 §§push(_loc4_);
                              }
                              §§goto(addr373);
                           }
                        }
                        _loc4_ = §§pop();
                        if(false)
                        {
                           §§goto(addr94);
                        }
                        else
                        {
                           §§goto(addr122);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc11_)
                        {
                           §§push(§!D§.§4y§());
                           if(_loc10_)
                           {
                              §§goto(addr78);
                              §§push("?C=");
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr119);
                     }
                     §§push(§1K§);
                     if(_loc10_)
                     {
                        if(§§pop() == "Google")
                        {
                           addr234:
                           §§push(§!D§.§4y§());
                           if(!(_loc11_ && §[-§))
                           {
                              addr243:
                              §§push(§§pop() + param1);
                           }
                           _loc4_ = §§pop();
                           §§push(0);
                           if(!_loc11_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc10_ || §[-§))
                              {
                                 §§goto(addr234);
                              }
                              if(false)
                              {
                                 §§goto(addr227);
                              }
                              else
                              {
                                 §§push(0);
                              }
                           }
                           _loc8_ = §§pop();
                           if(!(_loc11_ && param1))
                           {
                              _loc9_ = param2;
                              §§goto(addr275);
                           }
                           §§goto(addr374);
                        }
                        break;
                     }
                     §§goto(addr243);
                  }
                  _loc3_ = §8d§.§4G§(param1);
                  if(_loc10_)
                  {
                     if(_loc3_.§9N§())
                     {
                        if(!(_loc11_ && _loc3_))
                        {
                           §!D§.sendRequest(param1,param2);
                           if(!_loc10_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §3f§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                  }
                  break;
               }
               §§push(§3f§);
               §§push("[Server] WARNING: Currently disabled, not sending request for: ");
               if(_loc10_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               break;
               if(_loc11_ && param1)
               {
                  continue;
               }
               §§goto(addr69);
            }
            return;
         }
         while(true)
         {
            §3f§.log("URL sending...");
            §§goto(addr114);
            §§goto(addr120);
         }
      }
      
      public static function §2r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[-§))
         {
            §7=§ = true;
            do
            {
               §!D§.§%!?§();
            }
            while(_loc2_ && §[-§);
            
         }
      }
      
      public static function §0!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §7=§ = false;
         }
         do
         {
            §!D§.§^%§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public static function §+!$§() : Boolean
      {
         return §7=§;
      }
      
      public static function §,!4§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §8d§.§4G§(param1).§"c§(true);
         }
      }
      
      public static function §-K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §8d§.§4G§(param1).§"c§(false);
         }
      }
      
      public static function §'!B§() : String
      {
         return §!D§.§4y§();
      }
      
      public static function §4!=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§+a§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
