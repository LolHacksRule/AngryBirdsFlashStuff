package §2<§
{
   import §+!c§.§;!=§;
   
   public class §8M§
   {
      
      private static var §4]§:§@d§;
      
      private static var §97§:§;!x§;
      
      private static var §2n§:Boolean = true;
      
      public static var §+s§:String = "";
      
      public static var §'"G§:XML;
      
      public static var §^!n§:XML;
      
      public static const § !z§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §8M§))
         {
            §2n§ = true;
            while(true)
            {
               §+s§ = "";
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            § !z§ = true;
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §8M§()
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(§'"G§ == null)
            {
               if(_loc7_ || §8M§)
               {
                  addr28:
                  §;!=§.log("Server configuration not avaialble");
                  if(_loc7_ || param1)
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
                  if(_loc7_ || _loc2_)
                  {
                     _loc2_ = §3""§(param1,§'"G§);
                  }
                  §§goto(addr107);
               }
               if(_loc2_ == null)
               {
                  if(!_loc8_)
                  {
                     _loc2_ = §3""§(§'"G§.Default[0].toString(),§'"G§);
                     addr75:
                     §§push(§;!=§);
                     §§push("Using connection profile:");
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() + _loc2_.Id[0]);
                     }
                     §§pop().log(§§pop());
                     if(_loc7_ || param1)
                     {
                        addr107:
                        §^!n§ = _loc2_;
                        §§goto(addr110);
                     }
                  }
                  addr110:
                  var _loc3_:Class = §0g§[_loc2_.ConnectionType[0].toString()];
                  var _loc4_:Class = §use §[_loc2_.ResponseType[0].toString()];
                  var _loc5_:Number = Number(_loc2_.Port[0].toString());
                  if(_loc7_ || _loc2_)
                  {
                     if(_loc2_.ServerType[0] != null)
                     {
                        if(!(_loc8_ && param1))
                        {
                           §+s§ = _loc2_.ServerType[0].toString();
                        }
                     }
                  }
                  var _loc6_:String = _loc2_.Address[0].toString();
                  if(_loc7_ || param1)
                  {
                     §4]§ = new _loc3_(_loc6_,_loc5_);
                     do
                     {
                        §97§ = new _loc4_();
                        do
                        {
                           §4]§.§3!L§(§97§.§!"&§,§97§.§'Y§);
                        }
                        while(_loc8_);
                        
                     }
                     while(_loc8_ && _loc3_);
                     
                  }
                  return;
               }
               §§goto(addr75);
            }
            §§goto(addr107);
         }
         §§goto(addr28);
      }
      
      public static function §3""§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(!(_loc7_ && param1))
         {
            if(param1 != null)
            {
               §§goto(addr29);
            }
            return null;
         }
         addr29:
         var _loc4_:int = 0;
         var _loc5_:* = §'"G§.Connection;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_)
               {
                  break;
               }
               if(!_loc3_.Id[0])
               {
                  if(!(_loc6_ || §8M§))
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
      
      public static function §+!y§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§^!n§ == null);
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
                        §§push(!§^!n§.Directories);
                        if(!(_loc1_ && §8M§))
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
                  if(_loc1_ && §8M§)
                  {
                     break;
                  }
                  addr77:
                  if(!(_loc1_ && _loc1_))
                  {
                     return null;
                  }
                  §§goto(addr91);
               }
               return §^!n§.Directories[0];
            }
            §§goto(addr90);
         }
         §§goto(addr77);
      }
      
      public static function §#H§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §97§.§#H§(param1,param2);
         }
      }
      
      public static function §[#§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §97§.§'!A§(param1).addCallback(param2);
         }
      }
      
      public static function §&!#§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §97§.§'!A§(param1).§"!6§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§@`§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         if(_loc11_ || §8M§)
         {
            §§push(§2n§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(§ !z§);
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
                                 §;!=§.log("URL sending...");
                                 loop6:
                                 for(; _loc11_; if(_loc10_ && param1)
                                 {
                                    continue;
                                 },§§push(§4]§.§="J§()),if(_loc11_)
                                 {
                                    §§goto(addr76);
                                 },§§goto(addr92))
                                 {
                                    if(!(_loc11_ || _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§+s§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc10_)
                                          {
                                             if(!(_loc11_ || param1))
                                             {
                                                break;
                                             }
                                             if(_loc10_)
                                             {
                                                continue loop0;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr119:
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§+s§);
                                                      if(_loc11_)
                                                      {
                                                         §§push("PHP");
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        if(!(_loc10_ && §8M§))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr93:
                                                                     while(true)
                                                                     {
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              var _loc8_:* = 0;
                                                                              var _loc9_:* = param2;
                                                                              addr193:
                                                                           }
                                                                           continue loop7;
                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                           if(!(_loc10_ && param2))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§push(§§nextname(_loc8_,_loc9_));
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          addr170:
                                                                                          §§push("&");
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc5_);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr177:
                                                                                                §§push(§§pop() + "=");
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   addr186:
                                                                                                   §§push(§§pop() + param2[_loc5_]);
                                                                                                }
                                                                                                _loc4_ = §§pop() + §§pop();
                                                                                                §§goto(addr193);
                                                                                             }
                                                                                             §§goto(addr186);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr177);
                                                                                    }
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 §§goto(addr170);
                                                                              }
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!(_loc10_ && §8M§))
                                                                                    {
                                                                                       §;!=§.log(_loc4_);
                                                                                       addr246:
                                                                                       break loop2;
                                                                                       addr286:
                                                                                    }
                                                                                    break loop9;
                                                                                 }
                                                                                 addr424:
                                                                                 addr424:
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §;!=§.log(_loc4_);
                                                                                    if(!(_loc10_ && param2))
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    break loop9;
                                                                                 }
                                                                                 break loop2;
                                                                              }
                                                                              addr423:
                                                                              §§goto(addr424);
                                                                              §§goto(addr424);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr422:
                                                                     if(§§pop())
                                                                     {
                                                                        addr419:
                                                                        _loc7_ = §§nextname(_loc8_,_loc9_);
                                                                        addr406:
                                                                        addr420:
                                                                        if(_loc6_ == 0)
                                                                        {
                                                                           addr411:
                                                                           _loc4_ += "?";
                                                                           addr339:
                                                                           addr412:
                                                                           addr408:
                                                                           addr409:
                                                                           addr410:
                                                                           §§push(_loc4_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc7_ + "=");
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr361:
                                                                                       §§push(§§pop() + param2[_loc7_]);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                addr374:
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      addr384:
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         if(!(_loc10_ && §8M§))
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(!(_loc10_ && param1))
                                                                                                            {
                                                                                                               addr319:
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  addr322:
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc11_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr339);
                                                                                                                        }
                                                                                                                        addr421:
                                                                                                                        §§goto(addr422);
                                                                                                                        §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                     }
                                                                                                                     §§goto(addr412);
                                                                                                                  }
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                               §§goto(addr406);
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                         §§goto(addr319);
                                                                                                      }
                                                                                                      addr394:
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(_loc11_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr339);
                                                                                                         }
                                                                                                         §§goto(addr420);
                                                                                                      }
                                                                                                      §§goto(addr408);
                                                                                                   }
                                                                                                   §§goto(addr419);
                                                                                                }
                                                                                                §§goto(addr409);
                                                                                             }
                                                                                             §§goto(addr411);
                                                                                          }
                                                                                          addr393:
                                                                                          _loc4_ = §§pop();
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    addr392:
                                                                                    §§goto(addr393);
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              addr391:
                                                                              §§goto(addr392);
                                                                              §§push("&");
                                                                           }
                                                                           §§goto(addr374);
                                                                        }
                                                                        §§goto(addr391);
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr423);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§+s§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(§§pop() == "Google")
                                                                        {
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              if(_loc11_ || param2)
                                                                              {
                                                                                 §§push(§4]§.§="J§());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr274:
                                                                                    _loc4_ = §§pop() + param1;
                                                                                    if(!(_loc10_ && §8M§))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc11_ || param2)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr246);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(0);
                                                                                             }
                                                                                          }
                                                                                          break loop2;
                                                                                       }
                                                                                       _loc8_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          _loc9_ = param2;
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr424);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr286);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        break loop2;
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                               }
                                                               addr487:
                                                               return;
                                                               addr49:
                                                            }
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc11_)
                                                            {
                                                               §§push(§§pop() + param1);
                                                            }
                                                            if(!_loc11_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                            }
                                                         }
                                                         addr84:
                                                         §§goto(addr93);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc10_ && param1)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push("?C=");
                                                         }
                                                         addr76:
                                                      }
                                                      §§goto(addr84);
                                                   }
                                                }
                                                addr118:
                                             }
                                             §§goto(addr49);
                                          }
                                          §§goto(addr118);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     _loc3_ = §97§.§'!A§(param1);
                     if(_loc11_)
                     {
                        if(_loc3_.§@"I§())
                        {
                           if(_loc11_ || param2)
                           {
                              §4]§.sendRequest(param1,param2);
                              if(!_loc11_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §;!=§.log("[Server] WARNING: Trying to send request using a disabled command");
                        }
                     }
                  }
               }
               else
               {
                  §§push(§;!=§);
                  §§push("[Server] WARNING: Currently disabled, not sending request for: ");
                  if(!_loc10_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               §§goto(addr487);
            }
         }
         §§goto(addr119);
      }
      
      public static function §@=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §2n§ = true;
         }
         do
         {
            §4]§.§&J§();
         }
         while(!_loc1_);
         
      }
      
      public static function §#5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2n§ = false;
            do
            {
               §4]§.§1!k§();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §]I§() : Boolean
      {
         return §2n§;
      }
      
      public static function §;t§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §97§.§'!A§(param1).§;s§(true);
         }
      }
      
      public static function §>!S§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §97§.§'!A§(param1).§;s§(false);
         }
      }
      
      public static function §'!e§() : String
      {
         return §4]§.§="J§();
      }
      
      public static function §#!j§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§'"G§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
