package §="2§
{
   import §5t§.Log;
   import com.rovio.assets.§5_§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §?!r§
   {
      
      private static const §8!4§:int = 128;
      
      private static var §0e§:Boolean = true;
      
      private static var §1#^§:int;
      
      private static var §0!h§:Dictionary;
      
      private static var §+"F§:Dictionary;
      
      private static var §?#2§:Dictionary;
      
      public static const §2!1§:String = "Default_Channel";
      
      public static const §<"-§:Boolean = false;
      
      private static var §4!;§:Boolean = true;
      
      private static var §3!K§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8!4§ = 128;
         }
         loop0:
         while(true)
         {
            §0e§ = true;
            do
            {
               §2!1§ = "Default_Channel";
               do
               {
                  §<"-§ = false;
                  loop3:
                  do
                  {
                     §4!;§ = true;
                     while(_loc2_)
                     {
                        §3!K§ = new EventDispatcher();
                        if(!_loc1_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
            return;
         }
      }
      
      public function §?!r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §4!;§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0!h§ = new Dictionary();
            while(true)
            {
               §+"F§ = new Dictionary();
               addr95:
               while(true)
               {
                  §?#2§ = new Dictionary();
               }
               addr54:
               if(_loc1_ && §?!r§)
               {
                  continue;
               }
               return;
               addr61:
            }
         }
         while(true)
         {
            §1#^§ = 0;
            while(_loc2_ || §?!r§)
            {
               §,"d§(§2!1§,4,1);
               if(!(_loc2_ || §?!r§))
               {
                  continue;
               }
               if(!_loc1_)
               {
                  §§goto(addr54);
               }
               §§goto(addr95);
            }
         }
         §§goto(addr61);
      }
      
      public static function §,"d§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(!param1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(§2R§(param1) == null);
                        if(!_loc5_)
                        {
                           §§push(!§§pop());
                           while(true)
                           {
                           }
                           addr116:
                        }
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(§1#^§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§8!4§);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(§<"-§);
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr118:
                                                   loop7:
                                                   for(; _loc6_; if(!(_loc6_ || §?!r§))
                                                   {
                                                      continue;
                                                   },if(!_loc6_)
                                                   {
                                                      continue loop4;
                                                   },§§push(§8!4§),if(_loc6_ || §?!r§)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr65);
                                                      §§push(§1#^§);
                                                   },§§goto(addr74))
                                                   {
                                                      while(true)
                                                      {
                                                         addr26:
                                                         addr74:
                                                         while(true)
                                                         {
                                                            §§push(§1#^§);
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(param2);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc6_ || param2))
                                                               {
                                                                  break loop5;
                                                               }
                                                               if(§§pop() < §8!4§)
                                                               {
                                                                  break loop4;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr75:
                                                               if(true)
                                                               {
                                                                  break loop4;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr65:
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               break loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr74:
                                                         param2 = §§pop();
                                                         §§goto(addr75);
                                                      }
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr26);
                                    }
                                    return;
                                 }
                                 §§goto(addr74);
                              }
                              var _loc4_:§="f§;
                              (_loc4_ = new §="f§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§7j§);
                              if(!(_loc5_ && §?!r§))
                              {
                                 _loc4_.addEventListener(ErrorEvent.ERROR,§5!9§);
                                 §0!h§[param1.toLowerCase()] = _loc4_;
                                 §1#^§ += param2;
                                 addr195:
                                 if(!(_loc5_ && §?!r§))
                                 {
                                    if(!(_loc6_ || param2))
                                    {
                                       §§goto(addr195);
                                    }
                                    return;
                                    addr172:
                                 }
                                 addr189:
                                 §§goto(addr189);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr118);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr116);
            }
         }
         §§goto(addr106);
      }
      
      public static function §2R§(param1:String) : §="f§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!param1)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr53);
               }
            }
            return §0!h§[param1.toLowerCase()];
         }
         addr53:
         return null;
      }
      
      public static function §9##§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §0!h§)
         {
            if(_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §2r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == §0e§)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr44);
               }
               addr68:
            }
            while(true)
            {
               §0e§ = param1;
               addr44:
               addr39:
               do
               {
                  if(!(_loc3_ && §?!r§))
                  {
                     continue;
                  }
                  continue loop0;
               }
               while(§>!^§(§0e§), _loc3_);
               
               return;
               §§goto(addr68);
            }
         }
         §§goto(addr39);
      }
      
      public static function §4#$§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§="f§ = null;
         for each(_loc2_ in §0!h§)
         {
            if(_loc5_)
            {
               if(param1)
               {
                  if(_loc5_ || param1)
                  {
                     _loc2_.§!!j§();
                     if(!_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.§3!o§();
               }
            }
         }
      }
      
      protected static function §>!^§(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(param1)
            {
               §§goto(addr35);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr43);
         }
         addr35:
         §§push(1);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
            if(!_loc3_)
            {
            }
            addr46:
            §§push(Number(§§pop()));
         }
         else
         {
            addr43:
            §§push(Number(§§pop()));
            if(!_loc4_)
            {
               §§goto(addr46);
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            SoundMixer.soundTransform = new SoundTransform(_loc2_);
         }
      }
      
      public static function §0"#§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§="f§ = null;
         for each(_loc1_ in §0!h§)
         {
            if(!_loc4_)
            {
               _loc1_.§0"#§();
            }
         }
         if(_loc5_ || _loc1_)
         {
            dispatchEvent(new §^L§(§^L§.§3#O§));
         }
      }
      
      public static function get §`"5§() : Boolean
      {
         return §0e§;
      }
      
      private static function §-o§(param1:String, param2:String) : §="f§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!§4!;§)
            {
               if(!_loc5_)
               {
                  §§goto(addr22);
               }
            }
            var _loc3_:§="f§ = §2R§(param1);
            if(_loc4_ || param1)
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(_loc3_.§>#H§());
                     if(_loc4_)
                     {
                        if(_loc4_ || param2)
                        {
                           if(§§pop())
                           {
                              return _loc3_;
                           }
                           if(_loc4_)
                           {
                              addr90:
                              if(§<"-§)
                              {
                                 if(_loc5_ && param2)
                                 {
                                    continue;
                                 }
                                 §§push(Log);
                                 §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + " this channel is full ");
                                    if(_loc4_)
                                    {
                                       addr108:
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().log(§§pop());
                                    addr111:
                                    if(!(_loc5_ && param2))
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr42:
                                          §§push(null);
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr128);
                                       }
                                       else
                                       {
                                          addr132:
                                       }
                                       §§push(§<"-§);
                                       break;
                                    }
                                    addr128:
                                    return §§pop();
                                    §§push(null);
                                    addr162:
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr42);
                           }
                           §§goto(addr111);
                        }
                        break;
                     }
                     §§goto(addr90);
                  }
                  if(§§pop())
                  {
                     addr134:
                     §§push(Log);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                     if(_loc4_)
                     {
                        §§push(§§pop() + " because this channel does not exist ");
                        if(_loc4_ || _loc3_)
                        {
                           addr159:
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                        §§goto(addr162);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr111);
               }
               §§goto(addr132);
            }
            §§goto(addr134);
         }
         addr22:
         return null;
      }
      
      public static function §3!,§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4!5§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^L§ = null;
         var _loc8_:§="f§;
         if(!(_loc8_ = §-o§(param4,param2)))
         {
            if(_loc15_)
            {
               §§push(null);
               if(!_loc14_)
               {
                  return §§pop();
               }
               §§goto(addr59);
            }
         }
         else if(§?#2§[param2])
         {
            if(!(_loc14_ && param2))
            {
               addr59:
               return §§pop();
               §§push(null);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §+"F§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§-H§);
            if(_loc15_ || §?!r§)
            {
               _loc9_.addEventListener(Event.ID3,§#"`§);
               loop0:
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§9![§);
                  loop1:
                  while(true)
                  {
                     addr104:
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9![§);
                        addr110:
                        while(!_loc14_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §+"F§[param2] = _loc9_;
               if(_loc15_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr104);
               }
               §§goto(addr110);
            }
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            if(_loc15_ || §?!r§)
            {
               _loc9_.load(_loc11_,_loc12_);
            }
            (_loc13_ = new §^L§(§^L§.§ !!§)).§<"S§ = param2;
            if(!_loc14_)
            {
               dispatchEvent(_loc13_);
            }
         }
         var _loc10_:§4!5§ = _loc8_.§"#_§(_loc9_,param2,param5,param6,param7);
         if(_loc15_ || param2)
         {
            §?#2§[param2] = _loc10_;
         }
         return _loc10_;
      }
      
      private static function §-H§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^L§ = new §^L§(§^L§.§3q§);
         if(!_loc4_)
         {
            _loc2_.§<"S§ = §7"2§(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      private static function §7"2§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §+"F§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §+"F§[_loc2_];
               if(!_loc6_)
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §#"`§(param1:Event) : void
      {
      }
      
      private static function §9![§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§&I§ = new §&I§(§&I§.§&c§);
         §§push(§7"2§(Sound(param1.currentTarget)));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc2_.§<"S§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               loop1:
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
                  loop2:
                  while(!_loc5_)
                  {
                     delete §+"F§[_loc3_];
                     loop3:
                     while(true)
                     {
                        if(!§?#2§[_loc3_])
                        {
                           while(true)
                           {
                              dispatchEvent(_loc2_);
                              if(_loc4_)
                              {
                                 addr45:
                                 if(!(_loc5_ && param1))
                                 {
                                    break;
                                 }
                                 addr68:
                                 while(!_loc5_)
                                 {
                                    §4!5§(§?#2§[_loc3_]).§!"^§();
                                    §§goto(addr45);
                                 }
                                 continue loop3;
                              }
                              while(!_loc5_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           return;
                           addr39:
                           addr62:
                        }
                        §§goto(addr68);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr62);
      }
      
      private static function §7j§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            delete §?#2§[param1.data];
         }
         do
         {
            dispatchEvent(new §^L§(§^L§.SOUND_COMPLETE,param1.data));
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private static function §5!9§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §"#_§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4!5§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§="f§;
         if(!(_loc6_ = §-o§(param2,param1)))
         {
            if(_loc8_ || param2)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §1"Z§(param1)))
         {
            if(_loc8_ || param2)
            {
               return null;
            }
         }
         return _loc6_.§"#_§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1"Z§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Class = null;
         var _loc3_:Sound = §+"F§[param1];
         if(!_loc6_)
         {
            if(_loc3_ == null)
            {
               addr29:
               if(!(_loc4_ = §5_§.§`"G§(param1,false,param2) as Class))
               {
                  if(!(_loc6_ && param2))
                  {
                     if(param2)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           Log.log("Sound not in AssetCache: " + param1);
                           if(_loc6_ && _loc3_)
                           {
                              _loc3_ = new _loc4_();
                              §§goto(addr80);
                           }
                        }
                     }
                     return null;
                  }
               }
               addr80:
               if(!_loc6_)
               {
                  §+"F§[param1] = _loc3_;
               }
               §§goto(addr100);
            }
            addr100:
            return _loc3_;
         }
         §§goto(addr29);
      }
      
      public static function §9"4§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§="f§ = §2R§(param1);
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || §?!r§)
               {
                  _loc2_.§0"#§();
               }
               do
               {
                  dispatchEvent(new §^L§(§^L§.§=b§,"",param1));
               }
               while(!(_loc3_ || _loc3_));
               
               addr54:
            }
            return;
         }
         §§goto(addr54);
      }
      
      public static function §]!H§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(!_loc4_)
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
                                 if(!(_loc5_ || param1))
                                 {
                                    addr131:
                                    if(§<"-§)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
                                          addr155:
                                          break;
                                       }
                                       §§goto(addr155);
                                    }
                                    break;
                                 }
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(1);
                                    if(_loc4_ && param2)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop4;
                                 }
                                 _loc3_ = §§pop();
                                 loop6:
                                 for(; !(_loc4_ && _loc3_); if(!(_loc4_ && param2))
                                 {
                                    return;
                                 })
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                       }
                                       param1 = §§pop();
                                       while(_loc5_ || _loc3_)
                                       {
                                          §?!r§.§"#_§(param1,param2);
                                          if(_loc5_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr155);
                              }
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr127);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            §3!K§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3!K§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §3!K§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3!K§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3!K§.willTrigger(param1);
      }
   }
}
