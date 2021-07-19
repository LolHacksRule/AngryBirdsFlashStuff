package §+!h§
{
   import §0N§.§2!@§;
   
   public class §#V§
   {
      
      private static var §#G§:§4"2§;
      
      private static var §9!?§:§'7§;
      
      private static var §[!2§:Boolean = true;
      
      public static var §?B§:String = "";
      
      public static var §0J§:XML;
      
      public static var §5!+§:XML;
      
      public static const §65§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §[!2§ = true;
            while(true)
            {
               §?B§ = "";
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §65§ = true;
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
      
      public function §#V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            if(§0J§ == null)
            {
               if(!_loc8_)
               {
                  addr23:
                  §2!@§.log("Server configuration not avaialble");
                  if(!(_loc7_ || param1))
                  {
                     addr34:
                     var _loc2_:XML = null;
                     if(!_loc8_)
                     {
                        if(param1 != null)
                        {
                           if(_loc7_ || §#V§)
                           {
                              _loc2_ = §=!A§(param1,§0J§);
                              addr55:
                              if(_loc2_ == null)
                              {
                                 if(!(_loc8_ && §#V§))
                                 {
                                    _loc2_ = §=!A§(§0J§.Default[0].toString(),§0J§);
                                 }
                                 var _loc3_:Class = §]!2§[_loc2_.ConnectionType[0].toString()];
                                 var _loc4_:Class = §;! §[_loc2_.ResponseType[0].toString()];
                                 var _loc5_:Number = Number(_loc2_.Port[0].toString());
                                 addr88:
                                 if(!(_loc8_ && param1))
                                 {
                                    if(_loc2_.ServerType[0] != null)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          §?B§ = _loc2_.ServerType[0].toString();
                                       }
                                    }
                                 }
                                 var _loc6_:String = _loc2_.Address[0].toString();
                                 if(_loc7_ || _loc3_)
                                 {
                                    §#G§ = new _loc3_(_loc6_,_loc5_);
                                 }
                                 while(true)
                                 {
                                    §9!?§ = new _loc4_();
                                    while(!_loc8_)
                                    {
                                       §#G§.§1]§(§9!?§.§`!i§,§9!?§.§1!J§);
                                       if(!_loc8_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                              §2!@§.log("Using connection profile:" + _loc2_.Id[0]);
                              if(!_loc7_)
                              {
                              }
                              §§goto(addr88);
                           }
                           §5!+§ = _loc2_;
                           §§goto(addr88);
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr88);
                  }
               }
               return;
            }
            §§goto(addr34);
         }
         §§goto(addr23);
      }
      
      public static function §=!A§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!_loc7_)
         {
            if(param1 != null)
            {
               §§goto(addr24);
            }
            return null;
         }
         addr24:
         var _loc4_:int = 0;
         var _loc5_:* = §0J§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(_loc7_)
                  {
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(!(_loc7_ && §#V§))
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §4!+§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§5!+§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr70:
                     do
                     {
                        §§push(!§5!+§.Directories);
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc1_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc1_)
                  {
                     return null;
                  }
                  if(_loc1_)
                  {
                     addr63:
                     break;
                  }
                  §§goto(addr70);
               }
               return §5!+§.Directories[0];
            }
         }
         §§goto(addr63);
      }
      
      public static function §!r§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §9!?§.§!r§(param1,param2);
         }
      }
      
      public static function §5!!§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §9!?§.§1"B§(param1).addCallback(param2);
         }
      }
      
      public static function §>!n§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §9!?§.§1"B§(param1).§@!`§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§5!6§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(!(_loc10_ && §#V§))
         {
            §§push(§[!2§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §2!@§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(§65§);
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
                           loop5:
                           while(true)
                           {
                              §2!@§.log("URL sending...");
                              loop6:
                              while(!(_loc10_ && param2))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§?B§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(_loc11_)
                                                   {
                                                      §§push(§?B§);
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop() == "PHP");
                                                         if(!(_loc11_ || §#V§))
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  §§push(§#G§.§!!,§());
                                                                  if(!(_loc10_ && §#V§))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + "?C=");
                                                                        if(_loc11_)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                        §§push(§§pop());
                                                                     }
                                                                     addr71:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  var _loc8_:int = 0;
                                                                  var _loc9_:* = param2;
                                                                  addr164:
                                                                  §§push(§§hasnext(_loc9_,_loc8_));
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(§§nextname(_loc8_,_loc9_));
                                                                        if(!(_loc10_ && §#V§))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(!(_loc10_ && _loc3_))
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr148:
                                                                                 §§push("&" + _loc5_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr163:
                                                                                    §§push(§§pop() + "=");
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr157:
                                                                                       §§push(§§pop() + param2[_loc5_]);
                                                                                    }
                                                                                    _loc4_ = §§pop() + §§pop();
                                                                                    §§goto(addr164);
                                                                                 }
                                                                                 §§goto(addr157);
                                                                              }
                                                                              §§goto(addr163);
                                                                           }
                                                                           §§goto(addr164);
                                                                        }
                                                                        §§goto(addr148);
                                                                     }
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §2!@§.log(_loc4_);
                                                                              addr214:
                                                                              break loop2;
                                                                              addr257:
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        addr267:
                                                                        _loc9_ = param2;
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           addr378:
                                                                           if(§§hasnext(_loc9_,_loc8_))
                                                                           {
                                                                              addr376:
                                                                              _loc7_ = §§nextname(_loc8_,_loc9_);
                                                                              addr349:
                                                                              addr377:
                                                                              if(_loc6_ == 0)
                                                                              {
                                                                                 if(_loc11_ || §#V§)
                                                                                 {
                                                                                    addr361:
                                                                                    _loc4_ += "?";
                                                                                    addr359:
                                                                                 }
                                                                                 addr362:
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    addr300:
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc10_ && §#V§))
                                                                                    {
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          §§push(_loc7_ + "=");
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() + param2[_loc7_]);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr329:
                                                                                             §§push(§§pop());
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   addr334:
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr285:
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               addr288:
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && §#V§))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr300);
                                                                                                                     }
                                                                                                                     §§goto(addr378);
                                                                                                                  }
                                                                                                                  §§goto(addr362);
                                                                                                               }
                                                                                                               §§goto(addr334);
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr288);
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   addr346:
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                             §§goto(addr359);
                                                                                          }
                                                                                          addr343:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             §§goto(addr346);
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       addr341:
                                                                                       §§goto(addr343);
                                                                                       §§push(§§pop() + "&");
                                                                                    }
                                                                                    §§goto(addr329);
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              §§goto(addr341);
                                                                              §§push(_loc4_);
                                                                           }
                                                                           if(!(_loc10_ && §#V§))
                                                                           {
                                                                              addr389:
                                                                              §2!@§.log(_loc4_);
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                  }
                                                                  §§goto(addr378);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§?B§);
                                                               if(!(_loc10_ && §#V§))
                                                               {
                                                                  if(§§pop() == "Google")
                                                                  {
                                                                     addr236:
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        §§push(§#G§.§!!,§());
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr247:
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(_loc11_ || §#V§)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr214);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr259:
                                                                                    _loc8_ = 0;
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    §§goto(addr378);
                                                                                 }
                                                                              }
                                                                              §§goto(addr389);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        break loop2;
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                      }
                                                      §§goto(addr71);
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr56);
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  _loc3_ = §9!?§.§1"B§(param1);
                  if(_loc11_ || _loc3_)
                  {
                     if(_loc3_.§7"B§())
                     {
                        if(!(_loc10_ && param2))
                        {
                           addr421:
                           §#G§.sendRequest(param1,param2);
                           if(_loc11_ || param1)
                           {
                           }
                        }
                     }
                     else
                     {
                        §2!@§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                     break loop0;
                  }
                  §§goto(addr421);
               }
            }
            return;
         }
         §§goto(addr116);
      }
      
      public static function enable() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!2§ = true;
            do
            {
               §#G§.§]",§();
            }
            while(_loc2_);
            
         }
      }
      
      public static function disable() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[!2§ = false;
         }
         do
         {
            §#G§.§6"5§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public static function §7!=§() : Boolean
      {
         return §[!2§;
      }
      
      public static function §5"+§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §9!?§.§1"B§(param1).§!!a§(true);
         }
      }
      
      public static function §#4§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §#V§))
         {
            §9!?§.§1"B§(param1).§!!a§(false);
         }
      }
      
      public static function §3+§() : String
      {
         return §#G§.§!!,§();
      }
      
      public static function §[,§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§0J§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
