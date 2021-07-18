package §&!0§
{
   import § !r§.§`![§;
   
   public class §%!`§
   {
      
      private static var §+1§:§2a§;
      
      private static var §,!h§:§%>§;
      
      private static var §[!1§:Boolean = true;
      
      public static var §87§:String = "";
      
      public static var §&!K§:XML;
      
      public static var §,!g§:XML;
      
      public static const §8s§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §[!1§ = true;
            if(!(_loc2_ && _loc1_))
            {
               §87§ = "";
               if(_loc1_ || _loc1_)
               {
                  addr53:
                  §8s§ = true;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §%!`§()
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
            if(§&!K§ == null)
            {
               if(_loc7_ || §%!`§)
               {
                  §`![§.log("Server configuration not avaialble");
                  if(!_loc7_)
                  {
                     addr34:
                     var _loc2_:XML = null;
                     if(_loc7_ || param1)
                     {
                        if(param1 != null)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              addr54:
                              _loc2_ = §8!M§(param1,§&!K§);
                              addr60:
                              if(_loc2_ == null)
                              {
                                 if(!_loc8_)
                                 {
                                    _loc2_ = §8!M§(§&!K§.Default[0].toString(),§&!K§);
                                    addr75:
                                    §§push(§`![§);
                                    §§push("Using connection profile:");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc2_.Id[0]);
                                    }
                                    §§pop().log(§§pop());
                                    if(!_loc8_)
                                    {
                                       addr97:
                                       §,!g§ = _loc2_;
                                    }
                                 }
                                 var _loc3_:Class = §&!k§[_loc2_.ConnectionType[0].toString()];
                                 var _loc4_:Class = §1!t§[_loc2_.ResponseType[0].toString()];
                                 var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                 if(_loc7_ || §%!`§)
                                 {
                                    if(_loc2_.ServerType[0] != null)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          addr147:
                                          §87§ = _loc2_.ServerType[0].toString();
                                       }
                                    }
                                    var _loc6_:String = _loc2_.Address[0].toString();
                                    if(_loc7_ || _loc2_)
                                    {
                                       §+1§ = new _loc3_(_loc6_,_loc5_);
                                       if(_loc7_)
                                       {
                                          §,!h§ = new _loc4_();
                                          if(_loc7_ || param1)
                                          {
                                             addr197:
                                             §+1§.§&!,§(§,!h§.§<!p§,§,!h§.§=P§);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr75);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr54);
                  }
               }
               return;
            }
         }
         §§goto(addr34);
      }
      
      public static function §8!M§(param1:String, param2:XML) : XML
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
         var _loc5_:* = §&!K§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  if(_loc3_.Id[0])
                  {
                     if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                     {
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  if(!(_loc7_ || param1))
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §[!6§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§,!g§ == null);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     §§goto(addr67);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr67);
               }
            }
            return §,!g§.Directories[0];
         }
         addr67:
         if(_loc2_ || §%!`§)
         {
            §§push(!§,!g§.Directories);
         }
         return null;
      }
      
      public static function §7!E§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §,!h§.§7!E§(param1,param2);
         }
      }
      
      public static function §>!?§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §,!h§.§50§(param1).addCallback(param2);
         }
      }
      
      public static function §5h§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §,!h§.§50§(param1).§ s§(param2);
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
         var _loc7_:* = null;
         §§push(§[!1§);
         if(!(_loc10_ && param1))
         {
            if(§§pop())
            {
               §§push(§8s§);
               if(_loc11_ || param2)
               {
                  addr48:
                  if(§§pop())
                  {
                     §§push("");
                     if(_loc11_)
                     {
                        _loc4_ = §§pop();
                        §`![§.log("URL sending...");
                        if(_loc11_ || §%!`§)
                        {
                           §§push(§87§);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                              if(_loc11_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc11_ || _loc3_)
                                    {
                                    }
                                    addr91:
                                    if(§§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          §§push(§+1§.§'!k§());
                                          if(!(_loc10_ && param1))
                                          {
                                             addr104:
                                             §§push(§§pop() + "?C=");
                                             if(!_loc10_)
                                             {
                                                addr110:
                                                _loc4_ = §§pop() + param1;
                                                var _loc8_:* = 0;
                                                var _loc9_:* = param2;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc9_,_loc8_));
                                                   if(!_loc10_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §`![§.log(_loc4_);
                                                               §§goto(addr342);
                                                            }
                                                            else
                                                            {
                                                               addr335:
                                                            }
                                                            _loc9_ = param2;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               break loop1;
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         addr338:
                                                         §`![§.log(_loc4_);
                                                         addr342:
                                                         _loc3_ = §,!h§.§50§(param1);
                                                         if(_loc11_)
                                                         {
                                                            if(_loc3_.§=^§())
                                                            {
                                                               if(!(_loc10_ && §%!`§))
                                                               {
                                                                  §+1§.sendRequest(param1,param2);
                                                                  if(_loc11_ || §%!`§)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §`![§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                            }
                                                         }
                                                         return;
                                                         addr337:
                                                      }
                                                      else
                                                      {
                                                         §§push(§§nextname(_loc8_,_loc9_));
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc10_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc4_);
                                                            if(!_loc10_)
                                                            {
                                                               addr140:
                                                               §§push("&");
                                                               if(_loc11_)
                                                               {
                                                                  §§push(§§pop() + _loc5_);
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     addr167:
                                                                     §§push(§§pop() + "=");
                                                                     if(!(_loc10_ && §%!`§))
                                                                     {
                                                                        addr161:
                                                                        §§push(§§pop() + param2[_loc5_]);
                                                                     }
                                                                     _loc4_ = §§pop() + §§pop();
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr337);
                                                   }
                                                   else
                                                   {
                                                      §§push(§§nextname(_loc8_,_loc9_));
                                                      if(!_loc10_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         §§push(_loc6_);
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            if(§§pop() == 0)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push("?");
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              addr300:
                                                                              §§push(_loc4_);
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 addr319:
                                                                                 §§push(_loc7_ + "=");
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr313:
                                                                                    §§push(§§pop() + param2[_loc7_]);
                                                                                 }
                                                                                 _loc4_ = §§pop() + §§pop();
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr319);
                                                                              addr282:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr292:
                                                                           _loc4_ = §§pop();
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§goto(addr300);
                                                                           }
                                                                        }
                                                                        §§push(_loc6_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              addr334:
                                                                              _loc6_ = §§pop();
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr289:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr292);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr286:
                                                                  §§push("&");
                                                                  if(_loc11_)
                                                                  {
                                                                     §§goto(addr289);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                }
                                                addr109:
                                             }
                                             §§goto(addr109);
                                          }
                                       }
                                       §§goto(addr110);
                                    }
                                    else
                                    {
                                       §§push(§87§);
                                       if(!_loc10_)
                                       {
                                          if(§§pop() == "Google")
                                          {
                                             if(!(_loc10_ && §%!`§))
                                             {
                                                §§push(§+1§.§'!k§());
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                             }
                                          }
                                          §§goto(addr342);
                                       }
                                       _loc4_ = §§pop();
                                       §§push(0);
                                       if(!(_loc10_ && param2))
                                       {
                                          _loc6_ = §§pop();
                                          §§push(0);
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc11_ || param2)
                                       {
                                          §§goto(addr335);
                                       }
                                    }
                                    §§goto(addr338);
                                 }
                                 §§goto(addr91);
                              }
                              §§pop();
                              §§push(§87§);
                              if(_loc11_)
                              {
                                 §§push("PHP");
                                 if(_loc11_ || param2)
                                 {
                                    §§goto(addr91);
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr104);
                              }
                           }
                        }
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr342);
               }
               §§goto(addr91);
            }
            else
            {
               §§push(§`![§);
               §§push("[Server] WARNING: Currently disabled, not sending request for: ");
               if(_loc11_ || _loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            §§goto(addr342);
         }
         §§goto(addr48);
      }
      
      public static function §1!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!1§ = true;
            if(_loc1_ || _loc2_)
            {
               §+1§.§%t§();
            }
         }
      }
      
      public static function §,!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[!1§ = false;
            if(!(_loc1_ && §%!`§))
            {
               addr29:
               §+1§.§ for§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §4V§() : Boolean
      {
         return §[!1§;
      }
      
      public static function § !;§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §,!h§.§50§(param1).§6c§(true);
         }
      }
      
      public static function §65§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §,!h§.§50§(param1).§6c§(false);
         }
      }
      
      public static function §5?§() : String
      {
         return §+1§.§'!k§();
      }
      
      public static function § N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§&!K§ == null);
         if(_loc2_ || _loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
