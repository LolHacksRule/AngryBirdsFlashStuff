package §6!B§
{
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §>!E§
   {
      
      private static const §82§:int = 128;
      
      private static var §+2§:Boolean = true;
      
      private static var §4!&§:int;
      
      private static var §0r§:Dictionary;
      
      private static var §1!'§:Dictionary;
      
      private static var §0!r§:Dictionary;
      
      public static const §<M§:String = "Default_Channel";
      
      public static const §]d§:Boolean = false;
      
      private static var §,"%§:Boolean = true;
      
      private static var §@![§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §82§ = 128;
            loop0:
            while(true)
            {
               §+2§ = true;
               loop1:
               while(true)
               {
                  §<M§ = "Default_Channel";
                  loop2:
                  while(true)
                  {
                     §]d§ = false;
                     while(true)
                     {
                        §,"%§ = true;
                        loop4:
                        while(!(_loc1_ && §>!E§))
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                              while(true)
                              {
                                 §@![§ = new EventDispatcher();
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §>!E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §>!E§))
         {
            §,"%§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0r§ = new Dictionary();
            while(true)
            {
               §1!'§ = new Dictionary();
               §§goto(addr95);
            }
         }
         addr95:
         while(true)
         {
            §0!r§ = new Dictionary();
            do
            {
               §4!&§ = 0;
               do
               {
                  §0I§(§<M§,4,1);
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(_loc1_ && §>!E§);
            
            if(_loc2_ || _loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §0I§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && §>!E§))
         {
            if(§"h§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§4!&§);
                  loop1:
                  while(true)
                  {
                     §§push(§82§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(§4!&§);
                           if(!_loc6_)
                           {
                              if(!(_loc5_ || §>!E§))
                              {
                                 continue loop1;
                              }
                              §§push(param2);
                              if(_loc5_)
                              {
                                 if(!(_loc5_ || param3))
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && param2))
                                 {
                                    if(§§pop() >= §82§)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!(_loc5_ || param2))
                                             {
                                                break loop2;
                                             }
                                             continue;
                                          }
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(§82§);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             addr78:
                                             param2 = §§pop();
                                             addr79:
                                             if(!(_loc6_ && param3))
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr155);
                                                }
                                                if(false)
                                                {
                                                   break loop0;
                                                }
                                                addr157:
                                                var _loc4_:§7M§;
                                                (_loc4_ = new §7M§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§^!$§);
                                                if(!_loc6_)
                                                {
                                                   _loc4_.addEventListener(ErrorEvent.ERROR,§>!4§);
                                                   if(!§+2§)
                                                   {
                                                      addr216:
                                                      _loc4_.§'Y§();
                                                      addr218:
                                                   }
                                                   §0r§[param1.toLowerCase()] = _loc4_;
                                                   addr203:
                                                   addr224:
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || param2)
                                                      {
                                                         §4!&§ += param2;
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr218);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                }
                                                §§goto(addr216);
                                             }
                                          }
                                          else
                                          {
                                             addr116:
                                             while(true)
                                             {
                                                §§push(§+!k§);
                                                §§push("WARNING: SoundEngine:addNewChannelControl() ");
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + param1);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(" failed because we already have more than ");
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr135:
                                                            §§push(§§pop() + §82§);
                                                            if(_loc5_)
                                                            {
                                                               addr139:
                                                               §§push(§§pop() + " reserved");
                                                            }
                                                            §§pop().log(§§pop());
                                                            while(true)
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  break loop0;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr142:
                                                         }
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr139);
                                             }
                                             addr116:
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr79);
                                    }
                                    §§goto(addr157);
                                 }
                                 addr77:
                                 §§goto(addr78);
                                 §§push(int(§§pop()));
                              }
                              §§goto(addr77);
                              §§push(§§pop() - §§pop());
                           }
                           break;
                        }
                        §§goto(addr76);
                        §§push(§4!&§);
                     }
                     if(§]d§)
                     {
                        §§goto(addr116);
                     }
                     break loop0;
                  }
               }
               return;
            }
            addr155:
            return;
         }
         §§goto(addr116);
      }
      
      public static function §"h§(param1:String) : §7M§
      {
         return §0r§[param1.toLowerCase()];
      }
      
      public static function §&!?§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §0r§)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §7X§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7M§ = null;
         if(!_loc5_)
         {
            if(param1 == §+2§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
            else
            {
               addr40:
               §+2§ = param1;
            }
            for each(_loc2_ in §0r§)
            {
               if(_loc6_)
               {
                  if(§+2§)
                  {
                     if(!_loc5_)
                     {
                        _loc2_.§?t§();
                        if(!(_loc6_ || _loc2_))
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     _loc2_.§'Y§();
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public static function §&!^§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7M§ = null;
         for each(_loc1_ in §0r§)
         {
            if(!_loc4_)
            {
               _loc1_.§&!^§();
            }
         }
         if(_loc5_)
         {
            dispatchEvent(new §33§(§33§.§=!C§));
         }
      }
      
      public static function §=J§() : Boolean
      {
         return §+2§;
      }
      
      private static function §!!9§(param1:String, param2:String) : §7M§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!§,"%§)
            {
               if(!_loc4_)
               {
                  §§goto(addr23);
               }
            }
            var _loc3_:§7M§ = §"h§(param1);
            if(_loc5_ || _loc3_)
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(_loc3_.§&!m§());
                     if(!(_loc4_ && §>!E§))
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(!(_loc4_ && §>!E§))
                        {
                           if(!(_loc4_ && param1))
                           {
                              addr99:
                              §§push(§]d§);
                              if(!(_loc4_ && §>!E§))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       addr147:
                                       §§push(§]d§);
                                       break;
                                    }
                                    §§push(§+!k§);
                                    §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                                    if(!_loc4_)
                                    {
                                       §§push(param2);
                                       if(!(_loc4_ && §>!E§))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc5_ || param1)
                                          {
                                             §§push(§§pop() + " this channel is full ");
                                             if(!_loc4_)
                                             {
                                                addr133:
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().log(§§pop());
                                             §§goto(addr136);
                                          }
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr43);
                              }
                              break;
                           }
                           addr159:
                           §§push(§+!k§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() + " because this channel does not exist ");
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr184:
                                       §§push(§§pop() + param1);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr186);
                              }
                           }
                           §§goto(addr184);
                        }
                        addr136:
                        if(!_loc4_)
                        {
                           addr43:
                           §§push(null);
                           if(!(_loc4_ && param1))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           addr139:
                           §§push(null);
                           addr186:
                        }
                        return §§pop();
                     }
                     §§goto(addr99);
                  }
                  if(§§pop())
                  {
                     §§goto(addr159);
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr147);
         }
         addr23:
         return null;
      }
      
      public static function §;!0§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §,!p§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§33§ = null;
         var _loc8_:§7M§;
         if(!(_loc8_ = §!!9§(param4,param2)))
         {
            if(!_loc14_)
            {
               §§push(null);
               if(!(_loc14_ && §>!E§))
               {
                  return §§pop();
               }
               §§goto(addr59);
            }
         }
         else if(§0!r§[param2])
         {
            if(_loc15_)
            {
               addr59:
               return §§pop();
               §§push(null);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §1!'§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§4"-§);
            if(!(_loc14_ && param1))
            {
               _loc9_.addEventListener(Event.ID3,§2N§);
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§>!7§);
                  addr104:
                  if(!(_loc15_ || param2))
                  {
                     continue;
                  }
                  if(false)
                  {
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§>!7§);
                        do
                        {
                           §1!'§[param2] = _loc9_;
                        }
                        while(!_loc15_);
                        
                        if(!_loc15_)
                        {
                           break;
                        }
                        §§goto(addr104);
                     }
                     while(true)
                     {
                        §§goto(addr113);
                     }
                     addr113:
                     addr126:
                  }
                  _loc11_ = new URLRequest(param1);
                  _loc12_ = new SoundLoaderContext(param3,true);
                  if(!_loc14_)
                  {
                     _loc9_.load(_loc11_,_loc12_);
                  }
                  (_loc13_ = new §33§(§33§.§>D§)).§"4§ = param2;
                  if(_loc15_ || §>!E§)
                  {
                     dispatchEvent(_loc13_);
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr126);
         }
         addr179:
         var _loc10_:§,!p§ = _loc8_.§7N§(_loc9_,param2,param5,param6,param7);
         if(_loc15_)
         {
            §0!r§[param2] = _loc10_;
         }
         return _loc10_;
      }
      
      private static function §4"-§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§33§ = new §33§(§33§.§%!F§);
         if(_loc4_ || _loc3_)
         {
            _loc2_.§"4§ = §9v§(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(_loc3_);
            
         }
      }
      
      private static function §9v§(param1:Sound) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §1!'§)
         {
            _loc3_ = §1!'§[_loc2_];
            if(!(_loc6_ && param1))
            {
               if(_loc3_ == param1)
               {
                  if(_loc7_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private static function §2N§(param1:Event) : void
      {
      }
      
      private static function §>!7§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§`!p§ = new §`!p§(§`!p§.§5!Q§);
         §§push(§9v§(Sound(param1.currentTarget)));
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.§"4§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
                  addr111:
                  while(!(_loc4_ && param1))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            delete §1!'§[_loc3_];
            while(true)
            {
               if(§0!r§[_loc3_])
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §,!p§(§0!r§[_loc3_]).§9!S§();
                  }
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr111);
                  }
                  continue;
                  addr85:
               }
               while(true)
               {
                  dispatchEvent(_loc2_);
                  if(_loc5_ || §>!E§)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
      }
      
      private static function §^!$§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            delete §0!r§[param1.data];
            do
            {
               dispatchEvent(new §33§(§33§.SOUND_COMPLETE,param1.data));
            }
            while(!_loc3_);
            
         }
      }
      
      private static function §>!4§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §7N§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!p§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:Class = null;
         var _loc6_:§7M§;
         if(!(_loc6_ = §!!9§(param2,param1)))
         {
            if(!(_loc10_ && param3))
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §1!'§[param1]) == null)
         {
            if(!(_loc8_ = §8B§.§6"C§(param1,false) as Class))
            {
               if(!_loc10_)
               {
                  §§push(§+!k§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(_loc9_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(!(_loc9_ || param2))
                  {
                     §§goto(addr92);
                  }
               }
               return null;
            }
            addr92:
            _loc7_ = new _loc8_();
            if(_loc9_ || §>!E§)
            {
               §1!'§[param1] = _loc7_;
            }
            §§goto(addr107);
         }
         addr107:
         return _loc6_.§7N§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1!;§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7M§ = §"h§(param1);
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || _loc2_)
               {
                  _loc2_.§&!^§();
               }
               do
               {
                  dispatchEvent(new §33§(§33§.§<!B§,"",param1));
               }
               while(!(_loc3_ || _loc2_));
               
               addr64:
            }
            return;
         }
         §§goto(addr64);
      }
      
      public static function §@"8§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc4_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_ && param2)
                                    {
                                       break;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc5_)
                                    {
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc5_)
                                       {
                                          if(§]d§)
                                          {
                                             addr139:
                                             §§push(§+!k§);
                                             §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().log(§§pop());
                                             break;
                                          }
                                          return;
                                       }
                                       addr137:
                                       addr131:
                                       §§push(param1);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                       }
                                       param1 = §§pop();
                                       continue;
                                    }
                                    addr133:
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr131);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr137);
               }
            }
         }
         §§goto(addr133);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §@![§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §@![§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §@![§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §@![§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §@![§.willTrigger(param1);
      }
   }
}
