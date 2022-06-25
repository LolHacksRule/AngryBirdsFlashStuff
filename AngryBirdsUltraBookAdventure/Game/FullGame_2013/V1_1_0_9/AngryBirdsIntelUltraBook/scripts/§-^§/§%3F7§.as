package §-^§
{
   import §1!B§.§<m§;
   
   public class §?7§
   {
      
      private static var §6!y§:§#J§;
      
      private static var §0`§:§5?§;
      
      private static var §]!p§:Boolean = true;
      
      public static var §!!y§:String = "";
      
      public static var §[!d§:XML;
      
      public static var §#!f§:XML;
      
      public static const §8<§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]!p§ = true;
            do
            {
               §!!y§ = "";
               do
               {
                  §8<§ = true;
               }
               while(_loc2_ && _loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §?7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function init(param1:String = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && _loc3_))
         {
            if(§[!d§ == null)
            {
               if(!_loc7_)
               {
                  §<m§.log("Server configuration not avaialble");
                  if(_loc8_ || param1)
                  {
                     §§goto(addr39);
                  }
               }
            }
            var _loc2_:XML = null;
            if(_loc8_)
            {
               if(param1 != null)
               {
                  if(_loc8_)
                  {
                     _loc2_ = §1!d§(param1,§[!d§);
                     addr56:
                     if(_loc2_ == null)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           _loc2_ = §1!d§(§[!d§.Default[0].toString(),§[!d§);
                        }
                        §§goto(addr103);
                     }
                     §§push(§<m§);
                     §§push("Using connection profile:");
                     if(_loc8_ || §?7§)
                     {
                        §§push(§§pop() + _loc2_.Id[0]);
                     }
                     §§pop().log(§§pop());
                     if(!_loc7_)
                     {
                        addr103:
                        §#!f§ = _loc2_;
                        §§goto(addr106);
                     }
                  }
                  addr106:
                  var _loc3_:Class = §7!9§[_loc2_.ConnectionType[0].toString()];
                  var _loc4_:Class = §0!D§[_loc2_.ResponseType[0].toString()];
                  var _loc5_:Number = Number(_loc2_.Port[0].toString());
                  if(!(_loc7_ && param1))
                  {
                     if(_loc2_.ServerType[0] != null)
                     {
                        if(!_loc7_)
                        {
                           §!!y§ = _loc2_.ServerType[0].toString();
                        }
                     }
                  }
                  var _loc6_:String = _loc2_.Address[0].toString();
                  if(_loc8_ || param1)
                  {
                     §6!y§ = new _loc3_(_loc6_,_loc5_);
                  }
                  do
                  {
                     §0`§ = new _loc4_();
                     do
                     {
                        §6!y§.§%,§(§0`§.§[!9§,§0`§.§4!l§);
                     }
                     while(_loc7_ && param1);
                     
                  }
                  while(!(_loc8_ || _loc3_));
                  
                  return;
               }
               §§goto(addr56);
            }
            §§goto(addr103);
         }
         addr39:
      }
      
      public static function §1!d§(param1:String, param2:XML) : XML
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
         var _loc5_:* = §[!d§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(_loc7_ && param1)
                  {
                     break;
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(_loc6_ || _loc3_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §7h§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§#!f§ == null);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr81:
                     while(true)
                     {
                        §§push(!§#!f§.Directories);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr80:
               }
               while(§§pop())
               {
                  if(!(_loc1_ && §?7§))
                  {
                     §§goto(addr63);
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               return §#!f§.Directories[0];
            }
            §§goto(addr80);
         }
         addr63:
         return null;
      }
      
      public static function §,!c§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §0`§.§,!c§(param1,param2);
         }
      }
      
      public static function §@!m§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §0`§.§=O§(param1).addCallback(param2);
         }
      }
      
      public static function §8!^§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §0`§.§=O§(param1).§=+§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§=q§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         if(!(_loc11_ && §?7§))
         {
            §§push(§]!p§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(§<m§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(!(_loc11_ && param2))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  break;
               }
               loop1:
               while(true)
               {
                  §§push(§8<§);
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
                              §<m§.log("URL sending...");
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§!!y§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop9:
                                       while(!(_loc11_ && §?7§))
                                       {
                                          if(§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc11_ && param1)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§6!y§.§ !§());
                                                         if(!_loc11_)
                                                         {
                                                            addr75:
                                                            addr74:
                                                            §§push(§§pop() + "?C=");
                                                            if(_loc10_ || param1)
                                                            {
                                                               if(!(_loc10_ || param2))
                                                               {
                                                                  break loop8;
                                                               }
                                                               §§push(§§pop() + param1);
                                                            }
                                                            §§push(§§pop());
                                                         }
                                                         if(_loc11_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         _loc4_ = §§pop();
                                                         addr96:
                                                         if(!_loc10_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop7;
                                                         }
                                                         var _loc8_:int = 0;
                                                         var _loc9_:* = param2;
                                                         addr182:
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(!_loc11_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§push(§§nextname(_loc8_,_loc9_));
                                                               if(!_loc11_)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        §§push("&");
                                                                        if(_loc10_)
                                                                        {
                                                                           addr181:
                                                                           §§push(§§pop() + _loc5_);
                                                                           if(_loc10_)
                                                                           {
                                                                              addr171:
                                                                              §§push(§§pop() + "=");
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(§§pop() + param2[_loc5_]);
                                                                              }
                                                                           }
                                                                           _loc4_ = §§pop() + §§pop();
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §<m§.log(_loc4_);
                                                                     addr217:
                                                                     break loop2;
                                                                     addr270:
                                                                  }
                                                                  break loop2;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr422:
                                                            }
                                                            addr423:
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            break loop2;
                                                         }
                                                         addr421:
                                                         if(§§pop())
                                                         {
                                                            addr418:
                                                            _loc7_ = §§nextname(_loc8_,_loc9_);
                                                            addr403:
                                                            addr419:
                                                            if(_loc6_ == 0)
                                                            {
                                                               addr405:
                                                               §§push(_loc4_);
                                                               if(_loc10_)
                                                               {
                                                                  addr410:
                                                                  _loc4_ = §§pop() + "?";
                                                                  addr328:
                                                                  addr411:
                                                                  addr409:
                                                                  §§push(_loc4_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        §§push(_loc7_ + "=");
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + param2[_loc7_]);
                                                                        }
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    addr373:
                                                                                    §§push(§§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       addr376:
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                if(!(_loc11_ && §?7§))
                                                                                                {
                                                                                                   §§push(§§pop() + 1);
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      addr315:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(!(_loc11_ && §?7§))
                                                                                                   {
                                                                                                      addr393:
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr328);
                                                                                                         }
                                                                                                         addr420:
                                                                                                         §§goto(addr421);
                                                                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                      }
                                                                                                      if(!(_loc11_ && §?7§))
                                                                                                      {
                                                                                                         §§goto(addr328);
                                                                                                      }
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                §§goto(addr403);
                                                                                             }
                                                                                             §§goto(addr315);
                                                                                          }
                                                                                          §§goto(addr419);
                                                                                       }
                                                                                       §§goto(addr411);
                                                                                    }
                                                                                    addr392:
                                                                                    _loc4_ = §§pop() + "&";
                                                                                    §§goto(addr393);
                                                                                 }
                                                                                 §§goto(addr410);
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr409);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                            §§goto(addr373);
                                                            §§push(_loc4_);
                                                         }
                                                         §§goto(addr422);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§!!y§);
                                                            if(_loc11_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§push("PHP");
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr75);
                                                         }
                                                         addr120:
                                                      }
                                                      §§goto(addr74);
                                                   }
                                                   §§goto(addr96);
                                                }
                                                else
                                                {
                                                   §§push(§!!y§);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(§§pop() == "Google")
                                                      {
                                                         addr229:
                                                         §§push(§6!y§.§ !§());
                                                         if(_loc10_ || param2)
                                                         {
                                                            addr248:
                                                            §§push(§§pop() + param1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(_loc10_ || param1)
                                                         {
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               §§push(0);
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  _loc6_ = Number(§§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(!(_loc10_ || param1))
                                                                     {
                                                                        §§goto(addr229);
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr217);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr272:
                                                                        _loc8_ = 0;
                                                                        if(_loc10_ || §?7§)
                                                                        {
                                                                           _loc9_ = param2;
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              §§goto(addr420);
                                                                           }
                                                                           §§goto(addr405);
                                                                        }
                                                                        §§goto(addr423);
                                                                     }
                                                                  }
                                                                  break loop0;
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         break;
                                                      }
                                                      break loop2;
                                                   }
                                                   §§goto(addr248);
                                                }
                                             }
                                             §<m§.log(_loc4_);
                                             if(!_loc11_)
                                             {
                                                break loop2;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc3_ = §0`§.§=O§(param1);
                  if(!(_loc11_ && param2))
                  {
                     if(_loc3_.§[N§())
                     {
                        if(!_loc11_)
                        {
                           addr463:
                           §6!y§.sendRequest(param1,param2);
                           if(_loc11_ && _loc3_)
                           {
                           }
                           addr478:
                           break loop0;
                        }
                     }
                     else
                     {
                        §<m§.log("[Server] WARNING: Trying to send request using a disabled command");
                     }
                     §§goto(addr478);
                  }
                  §§goto(addr463);
               }
            }
            return;
         }
         §§goto(addr132);
      }
      
      public static function § A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]!p§ = true;
         }
         do
         {
            §6!y§.§>^§();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public static function §,`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §]!p§ = false;
            do
            {
               §6!y§.§>"§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public static function §&c§() : Boolean
      {
         return §]!p§;
      }
      
      public static function §6I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §0`§.§=O§(param1).§^"§(true);
         }
      }
      
      public static function §5!6§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §0`§.§=O§(param1).§^"§(false);
         }
      }
      
      public static function §0!3§() : String
      {
         return §6!y§.§ !§();
      }
      
      public static function §8!i§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§[!d§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
