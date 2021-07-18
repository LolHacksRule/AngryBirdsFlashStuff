package §^!m§
{
   import §6]§.§,"0§;
   
   public class §6§
   {
      
      private static var §4!l§:§5+§;
      
      private static var §>"-§:§]s§;
      
      private static var §!2§:Boolean = true;
      
      public static var §&!2§:String = "";
      
      public static var §"M§:XML;
      
      public static var §-"4§:XML;
      
      public static const §<!;§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §6§))
         {
            §!2§ = true;
            while(true)
            {
               §&!2§ = "";
               while(!_loc2_)
               {
                  §<!;§ = true;
                  if(!_loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
            if(§"M§ == null)
            {
               if(_loc7_ || _loc2_)
               {
                  addr28:
                  §,"0§.log("Server configuration not avaialble");
                  if(!_loc8_)
                  {
                     return;
                  }
               }
            }
            var _loc2_:XML = null;
            if(_loc7_ || _loc3_)
            {
               if(param1 != null)
               {
                  if(_loc7_)
                  {
                     _loc2_ = §"a§(param1,§"M§);
                     addr55:
                     if(_loc2_ == null)
                     {
                        if(!_loc8_)
                        {
                           addr60:
                           _loc2_ = §"a§(§"M§.Default[0].toString(),§"M§);
                           addr70:
                           §,"0§.log("Using connection profile:" + _loc2_.Id[0]);
                           if(!_loc7_)
                           {
                           }
                           var _loc3_:Class = §7!-§[_loc2_.ConnectionType[0].toString()];
                           var _loc4_:Class = §`!S§[_loc2_.ResponseType[0].toString()];
                           var _loc5_:Number = Number(_loc2_.Port[0].toString());
                           addr83:
                           if(!_loc8_)
                           {
                              if(_loc2_.ServerType[0] != null)
                              {
                                 if(!(_loc8_ && §6§))
                                 {
                                    addr135:
                                    §&!2§ = _loc2_.ServerType[0].toString();
                                 }
                              }
                              var _loc6_:String = _loc2_.Address[0].toString();
                              if(_loc7_)
                              {
                                 §4!l§ = new _loc3_(_loc6_,_loc5_);
                              }
                              while(true)
                              {
                                 §>"-§ = new _loc4_();
                                 while(_loc7_)
                                 {
                                    §4!l§.§[6§(§>"-§.§ _§,§>"-§.§;!t§);
                                    if(!_loc8_)
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                           §§goto(addr135);
                        }
                        §-"4§ = _loc2_;
                        §§goto(addr83);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr60);
               }
               §§goto(addr55);
            }
            §§goto(addr60);
         }
         §§goto(addr28);
      }
      
      public static function §"a§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         if(_loc6_)
         {
            if(param1 != null)
            {
               §§goto(addr24);
            }
            return null;
         }
         addr24:
         var _loc4_:int = 0;
         var _loc5_:* = §"M§.Connection;
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
                  if(!(_loc6_ || §6§))
                  {
                     break;
                  }
               }
               else if(_loc3_.Id[0].toString().indexOf(param1) == 0)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function §25§() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§-"4§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr86:
                     do
                     {
                        §§push(!§-"4§.Directories);
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc2_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr60);
                  }
                  if(!(_loc1_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr86);
               }
               return §-"4§.Directories[0];
            }
         }
         addr60:
         return null;
      }
      
      public static function §#q§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §>"-§.§#q§(param1,param2);
         }
      }
      
      public static function §>j§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §>"-§.§;B§(param1).addCallback(param2);
         }
      }
      
      public static function §,!m§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §>"-§.§;B§(param1).§#"%§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:§!b§ = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = NaN;
         var _loc7_:String = null;
         if(!(_loc11_ && param2))
         {
            §§push(§!2§);
            if(!(_loc11_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc10_ || param2)
                  {
                     §§push(§<!;§);
                     loop2:
                     while(§§pop())
                     {
                        loop0:
                        while(true)
                        {
                           §§push("");
                           loop1:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr152:
                              loop3:
                              while(true)
                              {
                                 §,"0§.log("URL sending...");
                                 loop4:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§&!2§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc11_ && param1))
                                          {
                                             if(_loc11_ && param1)
                                             {
                                                continue loop2;
                                             }
                                             if(!§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc10_)
                                                      {
                                                         break loop6;
                                                      }
                                                      §§push(§&!2§);
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr49:
                                                         §§push(§§pop() == "PHP");
                                                         if(!(_loc10_ || param1))
                                                         {
                                                            continue loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(§&!2§);
                                                               if(_loc10_)
                                                               {
                                                                  if(§§pop() == "Google")
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§4!l§.§8"&§());
                                                                        if(!(_loc11_ && param2))
                                                                        {
                                                                           §§push(§§pop() + param1);
                                                                        }
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                                  break loop2;
                                                               }
                                                               _loc4_ = §§pop();
                                                               addr280:
                                                               if(_loc10_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc6_ = Number(§§pop());
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        if(_loc11_ && _loc3_)
                                                                        {
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               break;
                                                            }
                                                            if(!(_loc11_ && §6§))
                                                            {
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop8;
                                                            }
                                                            addr100:
                                                            if(false)
                                                            {
                                                               continue loop5;
                                                            }
                                                            var _loc8_:int = 0;
                                                            var _loc9_:* = param2;
                                                            addr203:
                                                            §§push(§§hasnext(_loc9_,_loc8_));
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§push(§§nextname(_loc8_,_loc9_));
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§push("&" + _loc5_);
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              addr202:
                                                                              §§push(§§pop() + "=");
                                                                              if(!(_loc11_ && §6§))
                                                                              {
                                                                                 addr196:
                                                                                 §§push(§§pop() + param2[_loc5_]);
                                                                              }
                                                                              _loc4_ = §§pop() + §§pop();
                                                                              §§goto(addr203);
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                     §§goto(addr203);
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               if(_loc10_)
                                                               {
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        §,"0§.log(_loc4_);
                                                                        break;
                                                                     }
                                                                     addr256:
                                                                     if(false)
                                                                     {
                                                                        addr258:
                                                                        break loop2;
                                                                     }
                                                                     addr288:
                                                                     _loc8_ = 0;
                                                                     if(!(_loc11_ && §6§))
                                                                     {
                                                                        _loc9_ = param2;
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr417);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr417);
                                                            }
                                                            addr417:
                                                            if(§§hasnext(_loc9_,_loc8_))
                                                            {
                                                               addr415:
                                                               _loc7_ = §§nextname(_loc8_,_loc9_);
                                                               addr402:
                                                               addr416:
                                                               if(_loc6_ == 0)
                                                               {
                                                                  addr407:
                                                                  _loc4_ += "?";
                                                                  addr336:
                                                                  addr404:
                                                                  addr408:
                                                                  addr405:
                                                                  §§push(_loc4_);
                                                                  if(_loc10_)
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§push(_loc7_ + "=");
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + param2[_loc7_]);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           addr365:
                                                                           §§push(§§pop());
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              addr373:
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc11_ && param1))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          addr316:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       _loc6_ = §§pop();
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             §§goto(addr404);
                                                                                          }
                                                                                          addr397:
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                          §§goto(addr408);
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    §§goto(addr402);
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§goto(addr416);
                                                                           }
                                                                           §§goto(addr405);
                                                                        }
                                                                        addr389:
                                                                        if(_loc10_ || §6§)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr397);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                     addr380:
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§goto(addr389);
                                                                        §§push(§§pop() + "&");
                                                                     }
                                                                     §§goto(addr415);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr380);
                                                               §§push(_loc4_);
                                                            }
                                                            if(_loc10_ || param1)
                                                            {
                                                               §,"0§.log(_loc4_);
                                                               if(_loc10_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            addr476:
                                                            return;
                                                            §§goto(addr288);
                                                            §§goto(addr49);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      else
                                                      {
                                                         addr85:
                                                         §§push(§§pop() + "?C=");
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() + param1);
                                                         }
                                                         if(!(_loc10_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         _loc4_ = §§pop();
                                                      }
                                                      §§goto(addr100);
                                                   }
                                                   continue loop1;
                                                }
                                                addr121:
                                             }
                                             §§goto(addr58);
                                          }
                                          §§goto(addr121);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     _loc3_ = §>"-§.§;B§(param1);
                     if(!_loc11_)
                     {
                        if(_loc3_.§!9§())
                        {
                           if(_loc10_)
                           {
                              §4!l§.sendRequest(param1,param2);
                              if(_loc10_ || _loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §,"0§.log("[Server] WARNING: Trying to send request using a disabled command");
                        }
                     }
                     §§goto(addr476);
                     addr149:
                  }
                  §§goto(addr150);
               }
               else
               {
                  §,"0§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
               }
               §§goto(addr476);
            }
            §§goto(addr149);
         }
         §§goto(addr152);
      }
      
      public static function §<!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!2§ = true;
         }
         do
         {
            §4!l§.§[F§();
         }
         while(!_loc2_);
         
      }
      
      public static function §8!v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!2§ = false;
            do
            {
               §4!l§.§5!K§();
            }
            while(_loc1_);
            
         }
      }
      
      public static function §9y§() : Boolean
      {
         return §!2§;
      }
      
      public static function §&K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §>"-§.§;B§(param1).§5!T§(true);
         }
      }
      
      public static function §`!T§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §>"-§.§;B§(param1).§5!T§(false);
         }
      }
      
      public static function §<"=§() : String
      {
         return §4!l§.§8"&§();
      }
      
      public static function §^J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§"M§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
