package §6!F§
{
   import §3a§.§7!+§;
   
   public class §9A§
   {
      
      private static var §>5§:§2!?§;
      
      private static var §catch§:§@!'§;
      
      private static var §%k§:Boolean = true;
      
      public static var §-[§:String = "";
      
      public static var §,[§:XML;
      
      public static var §]'§:XML;
      
      public static const §1!B§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §9A§)
         {
            §%k§ = true;
            if(_loc1_)
            {
               §-[§ = "";
               if(!_loc2_)
               {
                  §1!B§ = true;
               }
            }
         }
      }
      
      public function §9A§()
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            if(§,[§ == null)
            {
               if(!_loc7_)
               {
                  addr24:
                  §7!+§.log("Server configuration not avaialble");
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
            var _loc2_:XML = null;
            if(_loc8_)
            {
               if(param1 != null)
               {
                  if(_loc8_ || _loc3_)
                  {
                     _loc2_ = §]!L§(param1,§,[§);
                     addr51:
                     if(_loc2_ == null)
                     {
                        if(!_loc7_)
                        {
                           _loc2_ = §]!L§(§,[§.Default[0].toString(),§,[§);
                        }
                        addr88:
                        §]'§ = _loc2_;
                        addr91:
                        var _loc3_:Class = §0!N§[_loc2_.ConnectionType[0].toString()];
                        var _loc4_:Class = §=!7§[_loc2_.ResponseType[0].toString()];
                        var _loc5_:Number = Number(_loc2_.Port[0].toString());
                        if(!_loc7_)
                        {
                           if(_loc2_.ServerType[0] != null)
                           {
                              if(!(_loc7_ && §9A§))
                              {
                                 addr133:
                                 §-[§ = _loc2_.ServerType[0].toString();
                              }
                           }
                           var _loc6_:String = _loc2_.Address[0].toString();
                           if(!_loc7_)
                           {
                              §>5§ = new _loc3_(_loc6_,_loc5_);
                              if(!_loc7_)
                              {
                                 addr167:
                                 §catch§ = new _loc4_();
                                 if(!(_loc7_ && param1))
                                 {
                                    §>5§.§,4§(§catch§.§8g§,§catch§.§]i§);
                                 }
                              }
                              return;
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr133);
                     }
                     §§push(§7!+§);
                     §§push("Using connection profile:");
                     if(_loc8_)
                     {
                        §§push(§§pop() + _loc2_.Id[0]);
                     }
                     §§pop().log(§§pop());
                     if(!_loc8_)
                     {
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr88);
               }
               §§goto(addr51);
            }
            §§goto(addr88);
         }
         §§goto(addr24);
      }
      
      public static function §]!L§(param1:String, param2:XML) : XML
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
         var _loc5_:* = §,[§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc7_)
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(!(_loc7_ || §9A§))
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
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §,!5§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§]'§ == null);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && §9A§))
                  {
                     §§goto(addr63);
                  }
               }
               §§goto(addr69);
            }
            addr63:
            §§pop();
            if(_loc2_)
            {
               addr69:
               if(!§]'§.Directories)
               {
                  if(_loc1_)
                  {
                     §§goto(addr74);
                  }
               }
               §§goto(addr74);
            }
            return null;
         }
         addr74:
         return §]'§.Directories[0];
      }
      
      public static function §>!M§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §9A§)
         {
            §catch§.§>!M§(param1,param2);
         }
      }
      
      public static function §=M§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §catch§.§0!&§(param1).addCallback(param2);
         }
      }
      
      public static function §;P§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §catch§.§0!&§(param1).§@u§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§3!>§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         §§push(§%k§);
         if(_loc10_ || param1)
         {
            if(§§pop())
            {
               if(!_loc11_)
               {
                  §§push(§1!B§);
                  if(!_loc11_)
                  {
                     addr44:
                     if(§§pop())
                     {
                        §§push("");
                        if(_loc10_ || param1)
                        {
                           _loc4_ = §§pop();
                           §7!+§.log("URL sending...");
                           if(!(_loc11_ && §9A§))
                           {
                              §§push(§-[§);
                              if(_loc10_)
                              {
                                 §§push(!§§pop());
                                 if(_loc10_)
                                 {
                                    §§goto(addr70);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr362);
                  }
                  addr70:
                  if(!§§pop())
                  {
                     if(_loc10_ || §9A§)
                     {
                        addr79:
                        §§pop();
                        if(!_loc11_)
                        {
                           §§push(§-[§);
                           if(_loc10_ || param1)
                           {
                              addr90:
                              §§push("PHP");
                              if(!(_loc11_ && §9A§))
                              {
                                 §§goto(addr99);
                              }
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr117);
                     }
                  }
                  addr99:
                  if(§§pop() == §§pop())
                  {
                     §§push(§>5§.§0S§());
                     if(_loc10_)
                     {
                        addr105:
                        §§push(§§pop() + "?C=");
                        if(_loc10_ || param2)
                        {
                           addr113:
                           §§push(§§pop() + param1);
                        }
                        §§push(§§pop());
                     }
                     _loc4_ = §§pop();
                     addr117:
                     var _loc8_:* = 0;
                     var _loc9_:* = param2;
                     while(true)
                     {
                        §§push(§§hasnext(_loc9_,_loc8_));
                        if(_loc10_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc11_)
                              {
                                 if(!(_loc11_ && §9A§))
                                 {
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §7!+§.log(_loc4_);
                                       if(_loc10_ || _loc3_)
                                       {
                                       }
                                       §§goto(addr412);
                                    }
                                    addr362:
                                    _loc3_ = §catch§.§0!&§(param1);
                                    if(_loc10_)
                                    {
                                       if(_loc3_.§&!7§())
                                       {
                                          if(_loc10_ || §9A§)
                                          {
                                             §>5§.sendRequest(param1,param2);
                                             if(_loc10_ || §9A§)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §7!+§.log("[Server] WARNING: Trying to send request using a disabled command");
                                       }
                                    }
                                 }
                                 §§goto(addr412);
                              }
                              else
                              {
                                 addr355:
                              }
                              §§goto(addr356);
                           }
                           else
                           {
                              §§push(§§nextname(_loc8_,_loc9_));
                              if(!(_loc11_ && param1))
                              {
                                 _loc5_ = §§pop();
                                 if(_loc10_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc11_)
                                    {
                                       addr141:
                                       §§push("&");
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() + _loc5_);
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() + "=");
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + param2[_loc5_]);
                                             }
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 continue;
                              }
                              §§goto(addr141);
                           }
                        }
                        else
                        {
                           loop13:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§push(§§nextname(_loc8_,_loc9_));
                                 if(_loc10_ || param1)
                                 {
                                    _loc7_ = §§pop();
                                    §§push(_loc6_);
                                    if(_loc10_ || _loc3_)
                                    {
                                       if(§§pop() == 0)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc11_ && param2))
                                             {
                                                while(true)
                                                {
                                                   §§push("?");
                                                   if(_loc10_ || §9A§)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc10_ || param2)
                                                      {
                                                         _loc4_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc10_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_ + "=");
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr335:
                                                                     §§push(§§pop() + param2[_loc7_]);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr336:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     addr335:
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               addr326:
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     addr343:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr323:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               §§goto(addr323);
                                                            }
                                                         }
                                                         addr320:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr355);
                                                      addr353:
                                                   }
                                                }
                                                addr283:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push("&");
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                }
                                                addr309:
                                             }
                                             §§goto(addr335);
                                          }
                                          addr275:
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          if(_loc10_ || param2)
                                          {
                                             §§goto(addr309);
                                          }
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr283);
                              }
                           }
                        }
                        §§goto(addr355);
                     }
                  }
                  else
                  {
                     §§push(§-[§);
                     if(!_loc11_)
                     {
                        if(§§pop() == "Google")
                        {
                           §§push(§>5§.§0S§());
                           if(!(_loc11_ && param2))
                           {
                              §§push(§§pop() + param1);
                           }
                        }
                        §§goto(addr362);
                     }
                     _loc4_ = §§pop();
                     if(!(_loc11_ && §9A§))
                     {
                        §§push(0);
                        if(!_loc11_)
                        {
                           _loc6_ = Number(§§pop());
                           §§push(0);
                        }
                        _loc8_ = §§pop();
                        if(!(_loc11_ && _loc3_))
                        {
                           _loc9_ = param2;
                           if(!(_loc11_ && param1))
                           {
                              §§goto(addr353);
                           }
                           §§goto(addr275);
                        }
                        addr356:
                        if(!_loc11_)
                        {
                           §7!+§.log(_loc4_);
                           §§goto(addr362);
                        }
                     }
                     §§goto(addr412);
                  }
                  §§goto(addr412);
               }
               §§goto(addr117);
            }
            else
            {
               §§push(§7!+§);
               §§push("[Server] WARNING: Currently disabled, not sending request for: ");
               if(_loc10_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
            }
            addr412:
            return;
         }
         §§goto(addr44);
      }
      
      public static function §2W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §9A§))
         {
            §%k§ = true;
            if(_loc1_)
            {
               addr28:
               §>5§.§@5§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public static function §%!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%k§ = false;
            if(_loc2_)
            {
               §>5§.§7!C§();
            }
         }
      }
      
      public static function §2?§() : Boolean
      {
         return §%k§;
      }
      
      public static function §5Y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §catch§.§0!&§(param1).§!!B§(true);
         }
      }
      
      public static function §=$§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §catch§.§0!&§(param1).§!!B§(false);
         }
      }
      
      public static function §^>§() : String
      {
         return §>5§.§0S§();
      }
      
      public static function §>s§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§,[§ == null);
         if(!_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
