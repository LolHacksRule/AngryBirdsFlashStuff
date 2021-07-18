package §&!F§
{
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §5G§.§?,§;
   import §;!]§.§`!V§;
   import §=!g§.§!!@§;
   import §?R§.§7!M§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!d§
   {
      
      public static const §!+§:String = "login";
      
      public static const §>z§:String = "GetActiveLevels";
      
      public static const §0E§:String = "GetActiveSpotPrize";
      
      public static const §^1§:String = "LevelStart";
      
      public static const §#u§:String = "useItem";
      
      public static const §]c§:String = "UseFreePlay";
      
      public static const §9!F§:String = "UpdateSpotPrizeWin";
      
      public static const §1!Q§:String = "LevelComplete";
      
      public static const §]q§:String = "RefreshSession";
      
      public static const §9X§:String = "serializationJSON";
      
      public static const §8n§:String = "serializationURLParameters";
      
      private static const §6!3§:String = "2lsiv93osdunx5a3lkdjf2ao8j2i3hg4";
      
      public static const §"[§:String = "cknb2jk1mcb2w3ns9bv92ks8kh10ksbs";
      
      private static const §=!§:String = "|";
      
      public static const §"!Q§:int = 1;
      
      public static const §7!c§:int = 3;
      
      public static const §;,§:String = "CheetosCredit";
      
      private static const §"e§:int = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!+§ = "login";
            while(true)
            {
               §>z§ = "GetActiveLevels";
               loop1:
               while(true)
               {
                  §0E§ = "GetActiveSpotPrize";
                  while(true)
                  {
                     §^1§ = "LevelStart";
                     while(true)
                     {
                        §#u§ = "useItem";
                        while(_loc1_)
                        {
                           §]c§ = "UseFreePlay";
                           loop5:
                           while(true)
                           {
                              §9!F§ = "UpdateSpotPrizeWin";
                              addr179:
                              while(true)
                              {
                                 §1!Q§ = "LevelComplete";
                                 while(true)
                                 {
                                    §]q§ = "RefreshSession";
                                    while(!_loc2_)
                                    {
                                       continue loop5;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                           }
                           while(_loc1_ || _loc2_)
                           {
                              §=!§ = "|";
                              §§goto(addr86);
                              §§goto(addr57);
                           }
                        }
                        continue loop1;
                        addr134:
                        while(!(_loc2_ && _loc1_))
                        {
                           §6!3§ = "2lsiv93osdunx5a3lkdjf2ao8j2i3hg4";
                           §§goto(addr129);
                           §§goto(addr86);
                        }
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        §8n§ = "serializationURLParameters";
                        §§goto(addr134);
                     }
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      private var §4!8§:URLLoader;
      
      private var §<!O§:§7Z§;
      
      private var §,>§:Boolean = false;
      
      public function §"!d§(param1:Object, param2:String, param3:§7Z§, param4:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  this.§4!8§ = new URLLoader();
                  addr37:
                  while(_loc7_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§<!O§ = param3;
            if(_loc7_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr32);
            }
            §§goto(addr37);
         }
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         if(!_loc8_)
         {
            this.§4!8§.dataFormat = URLLoaderDataFormat.TEXT;
         }
         var _loc6_:* = param4;
         if(!_loc8_)
         {
            §§push(§9X§);
            if(!(_loc8_ && param3))
            {
               §§push(_loc6_);
               if(!_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || this)
                     {
                        §§push(0);
                        if(_loc7_ || this)
                        {
                        }
                     }
                     else
                     {
                        addr138:
                        §§push(1);
                        if(_loc7_ || param2)
                        {
                        }
                     }
                     addr151:
                     loop10:
                     switch(§§pop())
                     {
                        case 0:
                           _loc5_.contentType = "application/json";
                           if(!_loc8_)
                           {
                              addr66:
                              _loc5_.data = §`!V§.encode(param1);
                              if(_loc7_)
                              {
                                 addr224:
                                 this.§4!8§.addEventListener(Event.COMPLETE,this.onComplete);
                              }
                              while(true)
                              {
                                 this.§4!8§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
                              }
                              addr231:
                           }
                           while(true)
                           {
                              this.§4!8§.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                              while(true)
                              {
                                 _loc5_.url = param2;
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       break loop10;
                                    }
                                    break;
                                 }
                                 §§goto(addr231);
                              }
                              if(_loc7_ || param1)
                              {
                                 return;
                              }
                           }
                           break;
                        case 1:
                           _loc5_.data = this.§""§(param1);
                           if(_loc7_)
                           {
                              if(false)
                              {
                                 §§goto(addr66);
                              }
                              §§goto(addr224);
                           }
                           break;
                        default:
                           §§goto(addr224);
                     }
                     continue loop8;
                  }
                  addr136:
                  §§push(§8n§);
                  §§push(_loc6_);
                  §§goto(addr138);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr138);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr151);
            }
            §§goto(addr136);
         }
         §§goto(addr138);
      }
      
      private static function §,_§(param1:*, param2:int = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc3_:String = "";
         for(_loc4_ in param1)
         {
            if(!(_loc7_ && §"!d§))
            {
               §,_§(param1[_loc4_],param2 + 1);
            }
         }
      }
      
      public static function § !_§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc7_ || param1)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop() + (_loc3_.levelId + "|"));
               }
               _loc2_ = §§pop();
            }
         }
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc2_);
            if(!(_loc6_ && §"!d§))
            {
               §§push(§§pop() + §6!3§);
               if(_loc7_)
               {
                  addr95:
                  _loc2_ = §§pop();
                  return §7!M§.§^E§(_loc2_);
               }
            }
         }
         §§goto(addr95);
      }
      
      public static function §0#§(param1:Object) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc2_:Array = [];
         if(_loc14_ || _loc2_)
         {
            _loc2_.push(param1.levelId);
            while(true)
            {
               _loc2_.push(param1.score + "");
               addr62:
               if(_loc13_ && _loc2_)
               {
                  continue;
               }
               _loc2_.push(§6!3§);
               if(!_loc13_)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.push(param1.stars + "");
                        addr60:
                        addr77:
                        while(!_loc13_)
                        {
                           §§goto(addr62);
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  var _loc3_:String = param1.gamePlay;
                  var _loc4_:Array = _loc3_.split(":");
                  for each(_loc5_ in _loc4_)
                  {
                     if(!(_loc13_ && param1))
                     {
                        _loc2_.push(_loc5_);
                     }
                  }
                  if(!_loc13_)
                  {
                     _loc2_.push(param1.userId);
                  }
                  §§push(param1.blocks);
                  if(!_loc13_)
                  {
                     §§push(_loc6_ = §§pop());
                  }
                  _loc7_ = §§pop().split(",");
                  if(_loc14_ || §"!d§)
                  {
                     §§push(0);
                     if(!(_loc13_ && _loc3_))
                     {
                        var _loc11_:* = §§pop();
                        if(!(_loc13_ && _loc3_))
                        {
                           for each(_loc5_ in _loc7_)
                           {
                              if(_loc14_)
                              {
                                 _loc2_.push(_loc5_);
                              }
                           }
                        }
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push("");
                           while(true)
                           {
                              _loc8_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push("");
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 _loc9_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop9:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             if(_loc14_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop() >= _loc2_.length)
                                                   {
                                                      if(_loc14_ || §"!d§)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               if(_loc13_ && _loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(§"e§);
                                                               while(true)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     if(§§pop() < _loc2_.length)
                                                                     {
                                                                        if(_loc13_ && _loc3_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              if(_loc13_ && _loc2_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§7!M§.§^E§(_loc8_ + _loc9_));
                                                                                 if(!(_loc13_ && §"!d§))
                                                                                 {
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr284:
                                                                                          §§push(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             continue loop8;
                                                                                          }
                                                                                          addr284:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             addr318:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc10_);
                                                                                                addr298:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() <= §"e§)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§7!M§.§^E§(_loc8_ + _loc9_));
                                                                                                         addr305:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr306:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc9_ = §§pop();
                                                                                                               addr307:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr300:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc10_++;
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr317:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 §§goto(addr284);
                                                                              }
                                                                           }
                                                                           §§goto(addr300);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        do
                                                                        {
                                                                           §§push(_loc9_);
                                                                        }
                                                                        while(!_loc14_);
                                                                        
                                                                        if(_loc14_)
                                                                        {
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           addr312:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr317);
                                                                           }
                                                                        }
                                                                        §§goto(addr306);
                                                                        addr195:
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                            }
                                                            §§goto(addr318);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc8_);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                addr215:
                                             }
                                             §§goto(addr237);
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr262);
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr318);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr77);
      }
      
      public static function §!!9§(param1:String) : String
      {
         return §7!M§.§^E§([param1,§>f§.§%!`§.§6!W§,§6!3§].join(§=!§));
      }
      
      public static function §+!5§(param1:String, param2:Array) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:Object = null;
         §§push(§"[§);
         if(!(_loc9_ && param2))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || _loc3_)
         {
            §§push(§7!M§.§^E§(param1 + §=!§ + _loc3_));
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            _loc3_ = §§pop();
         }
         var _loc4_:* = "";
         for each(_loc5_ in param2)
         {
            if(_loc9_ && §"!d§)
            {
               continue;
            }
            §§push(_loc4_);
            if(_loc8_ || param1)
            {
               §§push(§§pop() + (_loc5_.type + _loc5_.count));
               if(_loc8_ || param2)
               {
                  addr100:
                  _loc4_ = §§pop();
                  if(!_loc9_)
                  {
                     §§push(§7!M§.§^E§(_loc3_ + §=!§ + _loc4_.toString()));
                     if(!(_loc9_ && param1))
                     {
                        addr128:
                        §§push(§§pop());
                     }
                     _loc3_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr128);
            }
            §§goto(addr100);
         }
         return _loc3_;
      }
      
      public static function §>%§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§>f§.§5!`§ + ".");
         if(!_loc1_)
         {
            return §§pop() + §"!d§.§!!9§(§>f§.§5!`§);
         }
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc6_ || param1)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         var _loc3_:* = false;
         if(_loc5_)
         {
            if(_loc2_.error)
            {
               loop0:
               while(true)
               {
                  if(_loc2_.error != "SESSION_EXPIRED")
                  {
                     if(_loc2_.error == "SESSION_INVALID")
                     {
                        loop1:
                        while(true)
                        {
                           §!!@§.§%Q§("reportSessionError",_loc2_.error);
                           loop2:
                           while(true)
                           {
                              §>f§.logout();
                              loop3:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(true);
                                 }
                                 else
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §>f§.logout();
                                       loop7:
                                       for(; !(_loc4_ && param1); while(_loc5_ || param1)
                                       {
                                          this.§<!O§.onComplete(param1);
                                          §§goto(addr98);
                                       })
                                       {
                                          §§push(true);
                                          loop8:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                addr70:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               this.§,>§ = true;
                                                               while(!_loc4_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              this.removeEventListeners();
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue;
                                                                              continue;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         continue loop7;
                                                         return;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr161:
                                       while(true)
                                       {
                                          §!!@§.§%Q§("reportSessionError",_loc2_.error);
                                          continue loop6;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    continue loop0;
                                    §§goto(addr70);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr161);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr161);
      }
      
      private function onHttpStatus(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<!O§.onHttpStatus(param1);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<!O§.onIOError(param1);
            do
            {
               this.removeEventListeners();
               do
               {
                  §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error"));
               }
               while(_loc2_ && param1);
               
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§4!8§)
            {
               loop0:
               do
               {
                  this.§4!8§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
                  while(true)
                  {
                     this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
                     while(_loc1_)
                     {
                        this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                        if(_loc1_ || _loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(_loc2_ && _loc2_);
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      private function §""§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(!(_loc7_ && this))
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               if(this.§4!8§)
               {
                  loop1:
                  while(true)
                  {
                     this.§4!8§.close();
                     while(true)
                     {
                        this.§4!8§ = null;
                        while(!(_loc1_ && _loc1_))
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              this.§<!O§ = null;
                              addr52:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr20);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               while(this.§<!O§)
               {
                  if(_loc2_)
                  {
                     §§goto(addr30);
                  }
                  §§goto(addr52);
               }
               addr20:
               return;
            }
         }
         §§goto(addr49);
      }
   }
}
