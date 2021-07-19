package §3@§
{
   import §>^§.§!6§;
   
   public class §>#§
   {
      
      private static var §`!3§:§+!W§;
      
      private static var §9!@§:§[X§;
      
      private static var §^!>§:Boolean = true;
      
      public static var §<!'§:String = "";
      
      public static var §5W§:XML;
      
      public static var §@U§:XML;
      
      public static const §;!>§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §^!>§ = true;
            while(true)
            {
               §<!'§ = "";
               while(_loc2_)
               {
                  §;!>§ = true;
                  if(_loc2_ || _loc1_)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §>#§()
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
         if(_loc8_)
         {
            if(§5W§ == null)
            {
               if(!(_loc7_ && _loc2_))
               {
                  addr29:
                  §!6§.log("Server configuration not avaialble");
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
                  if(!(_loc7_ && §>#§))
                  {
                     _loc2_ = §4!B§(param1,§5W§);
                     addr56:
                     if(_loc2_ == null)
                     {
                        if(!_loc7_)
                        {
                           addr61:
                           _loc2_ = §4!B§(§5W§.Default[0].toString(),§5W§);
                           addr71:
                           §!6§.log("Using connection profile:" + _loc2_.Id[0]);
                           if(!_loc8_)
                           {
                           }
                           var _loc3_:Class = §1K§[_loc2_.ConnectionType[0].toString()];
                           var _loc4_:Class = §+!M§[_loc2_.ResponseType[0].toString()];
                           var _loc5_:Number = Number(_loc2_.Port[0].toString());
                           addr84:
                           if(!_loc7_)
                           {
                              if(_loc2_.ServerType[0] != null)
                              {
                                 if(_loc8_)
                                 {
                                    addr131:
                                    §<!'§ = _loc2_.ServerType[0].toString();
                                 }
                              }
                              var _loc6_:String = _loc2_.Address[0].toString();
                              if(_loc8_)
                              {
                                 §`!3§ = new _loc3_(_loc6_,_loc5_);
                                 while(true)
                                 {
                                    §9!@§ = new _loc4_();
                                    while(!_loc7_)
                                    {
                                       §`!3§.§;§(§9!@§.§"m§,§9!@§.§1O§);
                                       if(!(_loc8_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       return;
                                       addr166:
                                    }
                                 }
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr131);
                        }
                        §@U§ = _loc2_;
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr56);
            }
            §§goto(addr61);
         }
         §§goto(addr29);
      }
      
      public static function §4!B§(param1:String, param2:XML) : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         if(!_loc6_)
         {
            if(param1 != null)
            {
               addr25:
               for each(_loc3_ in §5W§.Connection)
               {
                  if(!(_loc6_ && param2))
                  {
                     if(_loc3_.Id[0])
                     {
                        if(_loc3_.Id[0].toString().indexOf(param1) == 0)
                        {
                           if(!_loc6_)
                           {
                              return _loc3_;
                           }
                        }
                        continue;
                     }
                     if(!(_loc7_ || §>#§))
                     {
                        continue;
                     }
                  }
               }
            }
            return null;
         }
         §§goto(addr25);
      }
      
      public static function §`g§() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §>#§)
         {
            §§push(§@U§ == null);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr80:
                     while(true)
                     {
                        §§push(!§@U§.Directories);
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     return null;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr80);
               }
               return §@U§.Directories[0];
            }
         }
         §§goto(addr80);
      }
      
      public static function §2!g§(param1:String, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §9!@§.§2!g§(param1,param2);
         }
      }
      
      public static function §+!2§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §>#§)
         {
            §9!@§.§#!>§(param1).addCallback(param2);
         }
      }
      
      public static function §9B§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §9!@§.§#!>§(param1).§,2§(param2);
         }
      }
      
      public static function sendRequest(param1:String, param2:Object) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§^!Q§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = null;
         if(!(_loc10_ && param1))
         {
            §§push(§^!>§);
            if(!(_loc10_ && §>#§))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§;!>§);
                     addr128:
                     loop1:
                     while(§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§push("");
                           while(true)
                           {
                              _loc4_ = §§pop();
                           }
                           addr132:
                        }
                        loop3:
                        while(true)
                        {
                           §!6§.log("URL sending...");
                           loop4:
                           while(true)
                           {
                              addr97:
                              while(true)
                              {
                                 §§push(§<!'§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc10_)
                                    {
                                       if(!(_loc11_ || _loc3_))
                                       {
                                          break;
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
                                                §§push(§<!'§);
                                                if(_loc11_ || param1)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() == "PHP");
                                                   if(_loc10_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc10_ && _loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§`!3§.§@5§());
                                                         if(_loc11_)
                                                         {
                                                            §§push(§§pop() + "?C=");
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr132);
                                                               }
                                                            }
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§<!'§);
                                                         if(!(_loc10_ && §>#§))
                                                         {
                                                            if(§§pop() == "Google")
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§`!3§.§@5§());
                                                                  if(_loc11_)
                                                                  {
                                                                     addr250:
                                                                     _loc4_ = §§pop() + param1;
                                                                     addr251:
                                                                     §§push(0);
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc10_ && param1)
                                                                           {
                                                                              §§goto(addr251);
                                                                           }
                                                                           addr217:
                                                                           if(false)
                                                                           {
                                                                              addr219:
                                                                              break loop1;
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr404);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            break loop1;
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      var _loc9_:* = param2;
                                                      if(!_loc10_)
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc9_,_loc8_));
                                                            addr394:
                                                            while(§§pop())
                                                            {
                                                               §§push(§§nextname(_loc8_,_loc9_));
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr392:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     addr378:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() == 0)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + "?");
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr384:
                                                                                    while(true)
                                                                                    {
                                                                                       addr305:
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             §§push(_loc7_ + "=");
                                                                                             if(_loc11_ || §>#§)
                                                                                             {
                                                                                                §§push(§§pop() + param2[_loc7_]);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                addr334:
                                                                                                §§push(§§pop());
                                                                                                if(_loc11_ || param2)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr365:
                                                                                                addr365:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + "&");
                                                                                                   §§goto(addr334);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ && param2)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr380:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop25;
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   addr396:
                                                   if(_loc10_ && §>#§)
                                                   {
                                                   }
                                                   §§goto(addr404);
                                                }
                                                _loc4_ = §§pop();
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                          addr111:
                                       }
                                       §§goto(addr54);
                                    }
                                    §§goto(addr111);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     _loc3_ = §9!@§.§#!>§(param1);
                     if(_loc11_ || §>#§)
                     {
                        if(_loc3_.§@!?§())
                        {
                           if(!(_loc10_ && param1))
                           {
                              addr436:
                              §`!3§.sendRequest(param1,param2);
                              if(_loc10_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §!6§.log("[Server] WARNING: Trying to send request using a disabled command");
                        }
                        §§goto(addr404);
                     }
                     §§goto(addr436);
                  }
               }
               else
               {
                  §!6§.log("[Server] WARNING: Currently disabled, not sending request for: " + param1);
               }
               addr404:
               §!6§.log(_loc4_);
               if(_loc11_ || §>#§)
               {
                  break loop1;
               }
               return;
            }
            §§goto(addr128);
         }
         §§goto(addr95);
      }
      
      public static function §&Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!>§ = true;
            do
            {
               §`!3§.§#!_§();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function § !#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!>§ = false;
         }
         do
         {
            §`!3§.§2!I§();
         }
         while(!_loc1_);
         
      }
      
      public static function §^m§() : Boolean
      {
         return §^!>§;
      }
      
      public static function §6!!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9!@§.§#!>§(param1).§&R§(true);
         }
      }
      
      public static function §2Y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §9!@§.§#!>§(param1).§&R§(false);
         }
      }
      
      public static function §6a§() : String
      {
         return §`!3§.§@5§();
      }
      
      public static function §`!6§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§5W§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
   }
}
