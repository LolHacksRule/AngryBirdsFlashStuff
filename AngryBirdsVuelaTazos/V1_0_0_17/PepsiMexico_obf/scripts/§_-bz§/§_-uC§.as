package §_-bz§
{
   import §_-e3§.§_-54§;
   
   public class §_-uC§
   {
      
      private static var §_-4-§:§_-fh§;
      
      private static var §implements§:§_-aP§;
      
      private static var §_-xw§:Boolean = true;
      
      public static var §_-fg§:String = "";
      
      public static var §_-Cf§:XML;
      
      public static var §_-9Q§:XML;
      
      public static const §_-cJ§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-xw§ = true;
            if(_loc1_)
            {
               §_-fg§ = "";
               if(_loc2_)
               {
               }
               §§goto(addr35);
            }
            §_-cJ§ = true;
         }
         addr35:
      }
      
      public function §_-uC§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
            if(§_-Cf§ == null)
            {
               if(!_loc8_)
               {
                  §_-54§.log("Server configuration not avaialble");
                  if(_loc7_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc2_:XML = null;
         if(!_loc8_)
         {
            if(param1 != null)
            {
               if(!_loc8_)
               {
                  _loc2_ = §_-8a§(param1,§_-Cf§);
               }
               var _loc3_:Class = §_-91§[_loc2_.ConnectionType[0].toString()];
               var _loc4_:Class = §_-e6§[_loc2_.ResponseType[0].toString()];
               var _loc5_:Number = Number(_loc2_.Port[0].toString());
               §§goto(addr75);
            }
            if(_loc2_ == null)
            {
               if(_loc7_)
               {
                  _loc2_ = §_-8a§(§_-Cf§.Default[0].toString(),§_-Cf§);
                  addr57:
                  §_-54§.log("Using connection profile:" + _loc2_.Id[0]);
                  if(_loc8_ && _loc2_)
                  {
                  }
                  §§goto(addr75);
               }
               §_-9Q§ = _loc2_;
               §§goto(addr75);
            }
            §§goto(addr57);
         }
         addr75:
         if(_loc7_ || param1)
         {
            if(_loc2_.ServerType[0] != null)
            {
               if(!(_loc8_ && _loc3_))
               {
                  §_-fg§ = _loc2_.ServerType[0].toString();
               }
            }
         }
         var _loc6_:String = _loc2_.Address[0].toString();
         if(_loc7_)
         {
            §_-4-§ = new _loc3_(_loc6_,_loc5_);
            if(_loc7_)
            {
               §implements§ = new _loc4_();
               if(_loc7_ || param1)
               {
                  §_-4-§.§_-9-§(§implements§.§_-n1§,§implements§.§_-Yr§);
               }
            }
         }
      }
      
      public static function §_-8a§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!(_loc6_ && param2))
         {
            if(param1 != null)
            {
               §§goto(addr27);
            }
            return null;
         }
         addr27:
         var _loc4_:int = 0;
         var _loc5_:* = §_-Cf§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  if(!_loc3_.Id[0])
                  {
                     if(!(_loc7_ || _loc3_))
                     {
                        break;
                     }
                  }
                  else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                  {
                     if(_loc7_)
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
      
      public static function §_-V9§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-uC§)
         {
            §§push(§_-9Q§ == null);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr42:
                     §§pop();
                     §§goto(addr63);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc1_ && §_-uC§))
                  {
                     addr63:
                     if(_loc2_)
                     {
                        §§push(!§_-9Q§.Directories);
                     }
                     return null;
                  }
               }
               return §_-9Q§.Directories[0];
            }
         }
         §§goto(addr42);
      }
      
      public static function §_-RY§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §implements§.§_-RY§(param1,param2);
         }
      }
      
      public static function §_-98§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §implements§.§_-qh§(param1).addCallback(param2);
         }
      }
      
      public static function §_-6t§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §implements§.§_-qh§(param1).§_-IR§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§_-BW§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         §§push(§_-xw§);
         if(!_loc10_)
         {
            if(§§pop())
            {
               §§push(§_-cJ§);
               if(_loc11_)
               {
                  if(§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§push("");
                        if(!(_loc10_ && §_-uC§))
                        {
                           _loc4_ = §§pop();
                           if(_loc11_)
                           {
                              §_-54§.log("URL sending...");
                              §§push(§_-fg§);
                              if(!_loc10_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          addr62:
                                          §§pop();
                                          if(_loc11_ || param1)
                                          {
                                             §§push(§_-fg§);
                                             if(_loc11_)
                                             {
                                                addr75:
                                                if(§§pop() == "PHP")
                                                {
                                                   addr90:
                                                   if(_loc11_)
                                                   {
                                                      addr78:
                                                      §§push(§_-4-§.§_-05§());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() + "?C=");
                                                         if(_loc11_)
                                                         {
                                                            addr86:
                                                            §§push(§§pop() + param1);
                                                         }
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                   var _loc8_:* = 0;
                                                   var _loc9_:* = param2;
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§push(§§nextname(_loc8_,_loc9_));
                                                            if(_loc11_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc4_);
                                                               if(_loc11_ || _loc3_)
                                                               {
                                                                  §§push("&" + _loc5_);
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     §§push(§§pop() + "=");
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        §§push(§§pop() + param2[_loc5_]);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                            }
                                                            _loc4_ = §§pop();
                                                            continue;
                                                         }
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §_-54§.log(_loc4_);
                                                               if(!_loc10_)
                                                               {
                                                                  addr336:
                                                                  _loc3_ = §implements§.§_-qh§(param1);
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     if(_loc3_.§_-jv§())
                                                                     {
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           §_-4-§.sendRequest(param1,param2);
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                           }
                                                                           addr386:
                                                                           return;
                                                                           addr380:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §_-54§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                                     }
                                                                  }
                                                                  §§goto(addr380);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            else
                                                            {
                                                               addr226:
                                                               _loc9_ = param2;
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  break loop0;
                                                                  addr319:
                                                                  _loc6_ = §§pop();
                                                               }
                                                               addr320:
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         if(_loc11_ || §_-uC§)
                                                         {
                                                            §_-54§.log(_loc4_);
                                                            if(_loc11_)
                                                            {
                                                               §§goto(addr336);
                                                            }
                                                            §§goto(addr386);
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr322);
                                                      }
                                                      else
                                                      {
                                                         §§push(§§nextname(_loc8_,_loc9_));
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc11_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  if(§§pop() == 0)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        addr263:
                                                                        §§push(§§pop() + "?");
                                                                        if(!(_loc10_ && §_-uC§))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr282:
                                                                           §§push(_loc4_);
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              addr305:
                                                                              §§push(_loc7_ + "=");
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() + param2[_loc7_]);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                           §§push(_loc6_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr310:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc11_ || §_-uC§)
                                                                              {
                                                                                 addr318:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr318);
                                                                           addr273:
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop() + "&");
                                                                        if(!_loc10_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr282);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§_-fg§);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      if(§§pop() == "Google")
                                                      {
                                                         if(_loc11_ || §_-uC§)
                                                         {
                                                            §§push(§_-4-§.§_-05§());
                                                            if(!_loc10_)
                                                            {
                                                               addr199:
                                                               §§push(§§pop() + param1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc10_ && §_-uC§))
                                                               {
                                                                  _loc6_ = Number(§§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               _loc8_ = §§pop();
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr336);
                                             }
                                          }
                                          §§goto(addr78);
                                       }
                                    }
                                 }
                                 §§goto(addr75);
                              }
                              _loc4_ = §§pop();
                              §§goto(addr90);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr336);
               }
               §§goto(addr62);
            }
            else
            {
               §_-54§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
            }
            §§goto(addr386);
         }
         §§goto(addr75);
      }
      
      public static function §_-BV§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-xw§ = true;
            if(!(_loc2_ && _loc1_))
            {
               addr32:
               §_-4-§.§_-0X§();
            }
            return;
         }
         §§goto(addr32);
      }
      
      public static function §_-Dn§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-uC§))
         {
            §_-xw§ = false;
            if(_loc1_ || _loc2_)
            {
               addr44:
               §_-4-§.§_-u0§();
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function §_-00§() : Boolean
      {
         return §_-xw§;
      }
      
      public static function §_-1f§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §implements§.§_-qh§(param1).§_-ut§(true);
         }
      }
      
      public static function §_-Gn§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §implements§.§_-qh§(param1).§_-ut§(false);
         }
      }
      
      public static function §_-nM§() : String
      {
         return §_-4-§.§_-05§();
      }
      
      public static function §_-cn§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§_-Cf§ == null);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
