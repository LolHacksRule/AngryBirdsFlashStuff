package § "C§
{
   import §6o§.§+!k§;
   
   public class §2"=§
   {
      
      private static var §?;§:§5!e§;
      
      private static var §&!Q§:§;P§;
      
      private static var §[,§:Boolean = true;
      
      public static var §^;§:String = "";
      
      public static var §+"-§:XML;
      
      public static var §-+§:XML;
      
      public static const §#"4§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[,§ = true;
            do
            {
               §^;§ = "";
               do
               {
                  §#"4§ = true;
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || §2"=§));
            
         }
      }
      
      public function §2"=§()
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || _loc3_)
         {
            if(§+"-§ == null)
            {
               if(_loc8_)
               {
                  §+!k§.log("Server configuration not avaialble");
                  if(_loc8_ || param1)
                  {
                     §§goto(addr39);
                  }
               }
               §§goto(addr39);
            }
            var _loc2_:XML = null;
            if(_loc8_ || _loc3_)
            {
               if(param1 != null)
               {
                  if(!_loc7_)
                  {
                     _loc2_ = §8">§(param1,§+"-§);
                     §§goto(addr61);
                  }
                  §§goto(addr103);
               }
               addr61:
               if(_loc2_ == null)
               {
                  if(!(_loc7_ && §2"=§))
                  {
                     addr71:
                     _loc2_ = §8">§(§+"-§.Default[0].toString(),§+"-§);
                  }
                  §§goto(addr103);
               }
               §§push(§+!k§);
               §§push("Using connection profile:");
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc2_.Id[0]);
               }
               §§pop().log(§§pop());
               if(!_loc7_)
               {
                  addr103:
                  §-+§ = _loc2_;
                  §§goto(addr106);
               }
               addr106:
               var _loc3_:Class = §?!1§[_loc2_.ConnectionType[0].toString()];
               var _loc4_:Class = §=y§[_loc2_.ResponseType[0].toString()];
               var _loc5_:Number = Number(_loc2_.Port[0].toString());
               if(!(_loc7_ && _loc2_))
               {
                  if(_loc2_.ServerType[0] != null)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §^;§ = _loc2_.ServerType[0].toString();
                     }
                  }
               }
               var _loc6_:String = _loc2_.Address[0].toString();
               if(!(_loc7_ && §2"=§))
               {
                  §?;§ = new _loc3_(_loc6_,_loc5_);
                  while(true)
                  {
                     §&!Q§ = new _loc4_();
                     §§goto(addr211);
                  }
               }
               addr211:
               while(true)
               {
                  §?;§.§4!L§(§&!Q§.§?k§,§&!Q§.§>=§);
                  if(_loc8_ || _loc3_)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr71);
         }
         addr39:
      }
      
      public static function §8">§(param1:String, param2:XML) : XML
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
         var _loc5_:* = §+"-§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_ || param2)
               {
                  if(!_loc3_.Id[0])
                  {
                     if(!_loc7_)
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
      
      public static function §0!,§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§-+§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr81:
                     while(true)
                     {
                        §§push(!§-+§.Directories);
                        if(_loc1_ && _loc1_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(_loc2_)
                  {
                     return null;
                  }
                  if(!(_loc1_ && §2"=§))
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               return §-+§.Directories[0];
            }
         }
         §§goto(addr81);
      }
      
      public static function §'!x§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §&!Q§.§'!x§(param1,param2);
         }
      }
      
      public static function §[!!§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §&!Q§.§0!`§(param1).addCallback(param2);
         }
      }
      
      public static function §&!6§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §&!Q§.§0!`§(param1).§[">§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§<r§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(_loc11_)
         {
            §§push(§[,§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§#"4§);
                     addr137:
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
                                    §+!k§.log("URL sending...");
                                    loop5:
                                    while(!(_loc10_ && param1))
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§^;§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc10_)
                                             {
                                                if(_loc10_ && param2)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§^;§);
                                                         if(_loc11_)
                                                         {
                                                            §§push("PHP");
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(§^;§);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        if(§§pop() == "Google")
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§?;§.§""%§());
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(§§pop() + param1);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr221);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(0);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        var _loc8_:* = §§pop();
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           §§goto(addr276);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  if(_loc11_ || param2)
                                                                  {
                                                                     if(_loc10_ && param2)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(!(_loc11_ || §2"=§))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§?;§.§""%§());
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push("?C=");
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc10_ && §2"=§))
                                                                              {
                                                                                 if(!(_loc11_ || _loc3_))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop() + param1);
                                                                              }
                                                                              §§push(§§pop());
                                                                              break loop9;
                                                                           }
                                                                           addr79:
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           _loc8_ = 0;
                                                                           var _loc9_:* = param2;
                                                                           addr183:
                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                        }
                                                                        continue loop6;
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§push(§§nextname(_loc8_,_loc9_));
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr182:
                                                                                       §§push("&");
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc5_);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() + "=");
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + param2[_loc5_]);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       _loc4_ = §§pop() + §§pop();
                                                                                    }
                                                                                    §§goto(addr182);
                                                                                 }
                                                                                 §§goto(addr183);
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           if(_loc11_)
                                                                           {
                                                                              if(!(_loc10_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    §+!k§.log(_loc4_);
                                                                                    if(!(_loc10_ && param2))
                                                                                    {
                                                                                       addr221:
                                                                                       break loop8;
                                                                                    }
                                                                                    break loop8;
                                                                                 }
                                                                                 break loop8;
                                                                              }
                                                                              addr276:
                                                                              _loc9_ = param2;
                                                                              addr396:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr411:
                                                                                 §§push(§§hasnext(_loc9_,_loc8_));
                                                                                 break;
                                                                              }
                                                                              _loc4_ += "?";
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr312:
                                                                                 §§push(_loc4_);
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc11_ || §2"=§)
                                                                                    {
                                                                                       §§push(_loc7_ + "=");
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             addr344:
                                                                                             §§push(§§pop() + (§§pop() + param2[_loc7_]));
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                addr353:
                                                                                                §§push(§§pop());
                                                                                                if(_loc11_ || param2)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      addr363:
                                                                                                      if(_loc11_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               addr294:
                                                                                                               if(!(_loc10_ && param2))
                                                                                                               {
                                                                                                                  addr302:
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(_loc11_ || param2)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     §§goto(addr411);
                                                                                                                  }
                                                                                                                  §§goto(addr363);
                                                                                                               }
                                                                                                               addr394:
                                                                                                               if(§§pop() == 0)
                                                                                                               {
                                                                                                                  §§goto(addr396);
                                                                                                               }
                                                                                                               §§push(_loc4_);
                                                                                                               §§push("&");
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  addr379:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     addr382:
                                                                                                                     if(_loc11_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           §§goto(addr312);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr396);
                                                                                                            }
                                                                                                            §§goto(addr302);
                                                                                                         }
                                                                                                         §§goto(addr294);
                                                                                                      }
                                                                                                      §§goto(addr382);
                                                                                                   }
                                                                                                   addr409:
                                                                                                   _loc7_ = §§pop();
                                                                                                   §§goto(addr394);
                                                                                                   §§push(_loc6_);
                                                                                                   addr410:
                                                                                                }
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       §§goto(addr344);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 §§goto(addr353);
                                                                              }
                                                                              §§goto(addr410);
                                                                           }
                                                                           addr414:
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §+!k§.log(_loc4_);
                                                                              if(_loc11_)
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              §§goto(addr482);
                                                                           }
                                                                           break loop8;
                                                                           addr413:
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr409);
                                                                     §§push(§§nextname(_loc8_,_loc9_));
                                                                  }
                                                                  §§goto(addr413);
                                                                  §§goto(addr414);
                                                               }
                                                               _loc3_ = §&!Q§.§0!`§(param1);
                                                               if(_loc11_ || §2"=§)
                                                               {
                                                                  if(_loc3_.§7!i§())
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr454:
                                                                        §?;§.sendRequest(param1,param2);
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §+!k§.log("[Server] WARNING: Trying to send request using a disabled command");
                                                                  }
                                                                  addr469:
                                                                  §§goto(addr482);
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                            §§goto(addr79);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc4_ = §§pop();
                                                         §§goto(addr100);
                                                      }
                                                   }
                                                   addr118:
                                                }
                                                §§goto(addr49);
                                             }
                                             §§goto(addr118);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        §§goto(addr427);
                     }
                  }
               }
               else
               {
                  §§push(§+!k§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(!(_loc10_ && §2"=§))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               addr482:
               return;
            }
            §§goto(addr137);
         }
         §§goto(addr74);
      }
      
      public static function §'!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §[,§ = true;
            do
            {
               §?;§.§<Y§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public static function §+!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[,§ = false;
         }
         do
         {
            §?;§.§=!6§();
         }
         while(!(_loc2_ || §2"=§));
         
      }
      
      public static function §=J§() : Boolean
      {
         return §[,§;
      }
      
      public static function §]!`§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §&!Q§.§0!`§(param1).§@S§(true);
         }
      }
      
      public static function §;!%§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §&!Q§.§0!`§(param1).§@S§(false);
         }
      }
      
      public static function §3D§() : String
      {
         return §?;§.§""%§();
      }
      
      public static function §%"E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§+"-§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
