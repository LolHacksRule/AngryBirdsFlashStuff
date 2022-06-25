package §5m§
{
   import §>K§.§9X§;
   
   public class §2!&§
   {
      
      private static var §&!§:§0"§;
      
      private static var §8n§:§1[§;
      
      private static var §0!-§:Boolean = true;
      
      public static var §2"§:String = "";
      
      public static var §^F§:XML;
      
      public static var § var§:XML;
      
      public static const §16§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!-§ = true;
            if(_loc2_)
            {
               §2"§ = "";
               if(!(_loc1_ && _loc1_))
               {
                  §16§ = true;
               }
            }
         }
      }
      
      public function §2!&§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
            if(§^F§ == null)
            {
               if(_loc7_ || _loc2_)
               {
                  addr33:
                  §9X§.log("Server configuration not avaialble");
                  if(!_loc7_)
                  {
                     addr39:
                     var _loc2_:XML = null;
                     if(_loc7_)
                     {
                        if(param1 != null)
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              addr54:
                              _loc2_ = §^!A§(param1,§^F§);
                              addr60:
                              if(_loc2_ == null)
                              {
                                 if(!_loc8_)
                                 {
                                    addr65:
                                    _loc2_ = §^!A§(§^F§.Default[0].toString(),§^F§);
                                    addr75:
                                    §§push(§9X§);
                                    §§push("Using connection profile:");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc2_.Id[0]);
                                    }
                                    §§pop().log(§§pop());
                                    if(!_loc8_)
                                    {
                                       addr97:
                                       § var§ = _loc2_;
                                    }
                                    var _loc3_:Class = §9T§[_loc2_.ConnectionType[0].toString()];
                                    var _loc4_:Class = §]!7§[_loc2_.ResponseType[0].toString()];
                                    var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                    if(!_loc8_)
                                    {
                                       if(_loc2_.ServerType[0] != null)
                                       {
                                          if(!(_loc8_ && §2!&§))
                                          {
                                             addr142:
                                             §2"§ = _loc2_.ServerType[0].toString();
                                          }
                                       }
                                       var _loc6_:String = _loc2_.Address[0].toString();
                                       if(!(_loc8_ && param1))
                                       {
                                          §&!§ = new _loc3_(_loc6_,_loc5_);
                                          if(_loc7_ || _loc2_)
                                          {
                                             §8n§ = new _loc4_();
                                             if(_loc8_ && §2!&§)
                                             {
                                             }
                                             §§goto(addr203);
                                          }
                                          §&!§.§!R§(§8n§.§1X§,§8n§.§ do§);
                                       }
                                       addr203:
                                       return;
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr75);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr54);
                  }
               }
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr33);
      }
      
      public static function §^!A§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_ || _loc3_)
         {
            if(param1 != null)
            {
               §§goto(addr29);
            }
            return null;
         }
         addr29:
         var _loc4_:int = 0;
         var _loc5_:* = §^F§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(!_loc6_)
                  {
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §5O§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§ var§ == null);
            if(!(_loc1_ && §2!&§))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     §§goto(addr52);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc1_)
               {
                  §§goto(addr52);
               }
            }
            return § var§.Directories[0];
         }
         addr52:
         if(_loc2_)
         {
            §§push(!§ var§.Directories);
         }
         return null;
      }
      
      public static function §]K§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §8n§.§]K§(param1,param2);
         }
      }
      
      public static function §;4§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §8n§.§`k§(param1).addCallback(param2);
         }
      }
      
      public static function §8;§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §8n§.§`k§(param1).§"!!§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§=!G§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         if(!_loc11_)
         {
            §§push(§0!-§);
            if(_loc10_ || _loc3_)
            {
               if(§§pop())
               {
                  §§push(§16§);
                  if(!(_loc11_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc11_)
                        {
                           addr52:
                           §§push("");
                           if(!(_loc11_ && §2!&§))
                           {
                              _loc4_ = §§pop();
                              §9X§.log("URL sending...");
                              if(!_loc11_)
                              {
                                 §§push(§2"§);
                                 if(!_loc11_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc11_)
                                    {
                                       addr72:
                                       if(!§§pop())
                                       {
                                          if(!(_loc11_ && param1))
                                          {
                                             addr81:
                                             §§pop();
                                             §§push(§2"§);
                                             if(_loc10_)
                                             {
                                                §§push("PHP");
                                                if(_loc10_)
                                                {
                                                   addr89:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         addr92:
                                                         §§push(§&!§.§0j§());
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            addr102:
                                                            §§push(§§pop() + "?C=");
                                                            if(_loc10_)
                                                            {
                                                               addr108:
                                                               _loc4_ = §§pop() + param1;
                                                               var _loc8_:int = 0;
                                                               var _loc9_:* = param2;
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           if(!(_loc11_ && §2!&§))
                                                                           {
                                                                              §9X§.log(_loc4_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr355:
                                                                                 _loc3_ = §8n§.§`k§(param1);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc3_.§"M§())
                                                                                    {
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          addr382:
                                                                                          §&!§.sendRequest(param1,param2);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §9X§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                                                    }
                                                                                    §§goto(addr405);
                                                                                 }
                                                                                 §§goto(addr382);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr222:
                                                                                 §§push(0);
                                                                                 if(!(_loc11_ && param2))
                                                                                 {
                                                                                    _loc6_ = Number(§§pop());
                                                                                    if(!(_loc11_ && §2!&§))
                                                                                    {
                                                                                       addr240:
                                                                                       _loc8_ = 0;
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          _loc9_ = param2;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc9_,_loc8_));
                                                                                             break loop0;
                                                                                             addr345:
                                                                                             _loc6_ = §§pop();
                                                                                          }
                                                                                          addr349:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                          addr348:
                                                                                          addr346:
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    §9X§.log(_loc4_);
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr348);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§§nextname(_loc8_,_loc9_));
                                                                        if(_loc10_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc11_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc4_);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push("&");
                                                                              if(!(_loc11_ && §2!&§))
                                                                              {
                                                                                 §§push(§§pop() + _loc5_);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() + "=");
                                                                                    if(_loc11_)
                                                                                    {
                                                                                    }
                                                                                    addr155:
                                                                                    _loc4_ = §§pop() + §§pop();
                                                                                    addr153:
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop() + param2[_loc5_]);
                                                                              }
                                                                              §§goto(addr153);
                                                                           }
                                                                        }
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr349);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§§nextname(_loc8_,_loc9_));
                                                                     if(!(_loc11_ && §2!&§))
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        §§push(_loc6_);
                                                                        if(_loc10_)
                                                                        {
                                                                           if(§§pop() == 0)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push("?");
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          addr313:
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr316:
                                                                                             §§push(_loc7_ + "=");
                                                                                             if(_loc10_ || §2!&§)
                                                                                             {
                                                                                                addr332:
                                                                                                _loc4_ = §§pop() + (§§pop() + param2[_loc7_]);
                                                                                                addr330:
                                                                                             }
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                       §§push(_loc6_);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr344:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr312:
                                                                                       _loc4_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr296:
                                                                                 §§push("&");
                                                                                 if(_loc10_ || §2!&§)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§goto(addr296);
                                                                              }
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                               }
                                                               addr107:
                                                            }
                                                            §§goto(addr107);
                                                         }
                                                      }
                                                      §§goto(addr108);
                                                   }
                                                   else
                                                   {
                                                      §§push(§2"§);
                                                      if(_loc10_ || param1)
                                                      {
                                                         if(§§pop() == "Google")
                                                         {
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               §§push(§&!§.§0j§());
                                                               if(_loc10_ || param1)
                                                               {
                                                                  addr221:
                                                                  _loc4_ = §§pop() + param1;
                                                                  §§goto(addr222);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                }
                                                §§goto(addr102);
                                             }
                                             §§goto(addr108);
                                          }
                                       }
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr355);
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(§9X§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(_loc10_ || §2!&§)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               addr405:
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr52);
      }
      
      public static function §-!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0!-§ = true;
            if(_loc2_)
            {
               addr29:
               §&!§.§8!0§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §>x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §0!-§ = false;
            if(!_loc2_)
            {
               addr28:
               §&!§.§<D§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public static function §@U§() : Boolean
      {
         return §0!-§;
      }
      
      public static function §#!@§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §8n§.§`k§(param1).§[u§(true);
         }
      }
      
      public static function §+L§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §8n§.§`k§(param1).§[u§(false);
         }
      }
      
      public static function §="§() : String
      {
         return §&!§.§0j§();
      }
      
      public static function §^U§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§^F§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
