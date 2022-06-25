package §[!b§
{
   import §1!B§.§<m§;
   import com.rovio.assets.§,!j§;
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
   
   public class §-!Q§
   {
      
      private static const §!h§:int = 128;
      
      private static var §0e§:Boolean = true;
      
      private static var §@!f§:int;
      
      private static var §>m§:Dictionary;
      
      private static var §?@§:Dictionary;
      
      private static var §5!W§:Dictionary;
      
      public static const §3Q§:String = "Default_Channel";
      
      public static const §-6§:Boolean = false;
      
      private static var §>!c§:Boolean = true;
      
      private static var §`!6§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!h§ = 128;
            loop0:
            while(true)
            {
               §0e§ = true;
               loop1:
               while(true)
               {
                  §3Q§ = "Default_Channel";
                  do
                  {
                     §-6§ = false;
                     loop3:
                     do
                     {
                        §>!c§ = true;
                        while(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              §`!6§ = new EventDispatcher();
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop3;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(_loc1_ && _loc2_);
                     
                  }
                  while(!_loc2_);
                  
               }
            }
         }
      }
      
      public function §-!Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>!c§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>m§ = new Dictionary();
            while(true)
            {
               §?@§ = new Dictionary();
               loop1:
               while(!(_loc2_ && §-!Q§))
               {
                  §5!W§ = new Dictionary();
                  while(true)
                  {
                     §@!f§ = 0;
                     do
                     {
                        §"3§(§3Q§,4,1);
                     }
                     while(_loc2_ && _loc2_);
                     
                     if(!(_loc2_ && §-!Q§))
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public static function §"3§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            if(§]a§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§@!f§);
                  loop1:
                  while(true)
                  {
                     §§push(§!h§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(§@!f§);
                           if(!(_loc6_ && param2))
                           {
                              if(!_loc5_)
                              {
                                 continue loop1;
                              }
                              §§push(param2);
                              if(_loc5_ || §-!Q§)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    if(§§pop() >= §!h§)
                                    {
                                       if(_loc5_ || §-!Q§)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(§!h§);
                                             if(!_loc6_)
                                             {
                                                addr67:
                                                §§push(§@!f§);
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop2;
                                                }
                                                addr75:
                                                §§push(int(§§pop() - §§pop()));
                                             }
                                             param2 = §§pop();
                                             addr77:
                                             if(_loc6_ && param3)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             if(_loc6_ && param2)
                                             {
                                                break loop2;
                                             }
                                             if(!(_loc5_ || param2))
                                             {
                                                continue loop0;
                                             }
                                             if(_loc6_)
                                             {
                                                §§goto(addr165);
                                             }
                                             if(false)
                                             {
                                                §§goto(addr102);
                                             }
                                             addr167:
                                             var _loc4_:§0-§;
                                             (_loc4_ = new §0-§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§3%§);
                                             if(!_loc6_)
                                             {
                                                _loc4_.addEventListener(ErrorEvent.ERROR,§'@§);
                                             }
                                             if(!§0e§)
                                             {
                                                addr236:
                                                _loc4_.§"A§();
                                             }
                                             §>m§[param1.toLowerCase()] = _loc4_;
                                             §@!f§ += param2;
                                             addr244:
                                             if(_loc5_ || param3)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || §-!Q§)
                                                   {
                                                      if(_loc6_ && §-!Q§)
                                                      {
                                                         §§goto(addr244);
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr236);
                                             }
                                             addr232:
                                             §§goto(addr232);
                                          }
                                          addr123:
                                          §§push(§<m§);
                                          §§push("WARNING: SoundEngine:addNewChannelControl() ");
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + param1);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(" failed because we already have more than ");
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc5_ || param3)
                                                   {
                                                      addr147:
                                                      §§push(§§pop() + §!h§);
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr157:
                                                         §§push(§§pop() + " reserved");
                                                      }
                                                   }
                                                   §§pop().log(§§pop());
                                                   break;
                                                }
                                                §§goto(addr157);
                                             }
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr77);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr75);
                              }
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr121);
                  }
               }
            }
            addr165:
            return;
         }
         addr121:
         if(§-6§)
         {
            §§goto(addr123);
         }
         addr102:
      }
      
      public static function §]a§(param1:String) : §0-§
      {
         return §>m§[param1.toLowerCase()];
      }
      
      public static function §4"$§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc3_:int = 0;
         for(_loc2_ in §>m§)
         {
            if(_loc6_ || _loc3_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §,!=§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0-§ = null;
         if(_loc6_)
         {
            if(param1 == §0e§)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr32);
               }
            }
            else
            {
               §0e§ = param1;
            }
            var _loc3_:int = 0;
            for each(_loc2_ in §>m§)
            {
               if(!(_loc5_ && param1))
               {
                  if(§0e§)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        _loc2_.§^^§();
                        if(_loc5_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     _loc2_.§"A§();
                  }
               }
            }
            return;
         }
         addr32:
      }
      
      public static function §4!$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0-§ = null;
         for each(_loc1_ in §>m§)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_.§4!$§();
            }
         }
         if(!(_loc5_ && §-!Q§))
         {
            dispatchEvent(new §-!4§(§-!4§.§=G§));
         }
      }
      
      public static function §&c§() : Boolean
      {
         return §0e§;
      }
      
      private static function §6Z§(param1:String, param2:String) : §0-§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            if(!§>!c§)
            {
               if(_loc4_)
               {
                  return null;
               }
            }
         }
         var _loc3_:§0-§ = §]a§(param1);
         if(_loc4_)
         {
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  addr132:
                  if(§-6§)
                  {
                     addr133:
                     §§push(§<m§);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                     if(!_loc5_)
                     {
                        §§push(param2);
                        if(_loc4_ || §-!Q§)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc5_ && _loc3_))
                           {
                              addr163:
                              §§push(§§pop() + " because this channel does not exist ");
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr172:
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              return null;
                              addr175:
                           }
                        }
                        §§goto(addr172);
                     }
                  }
                  §§goto(addr163);
               }
               §§goto(addr133);
            }
            else
            {
               while(true)
               {
                  §§push(_loc3_.§@m§());
                  if(_loc4_ || param1)
                  {
                     if(§§pop())
                     {
                        return _loc3_;
                     }
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           §§push(§-6§);
                           break;
                        }
                        if(!(_loc5_ && §-!Q§))
                        {
                           continue;
                        }
                        §§goto(addr175);
                     }
                     if(!_loc5_)
                     {
                        §§push(§<m§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_)
                              {
                                 §§push(§§pop() + " this channel is full ");
                                 if(_loc5_)
                                 {
                                 }
                                 addr114:
                                 §§pop().log(§§pop());
                                 §§push(null);
                                 if(!(_loc5_ && param1))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr163);
                              }
                              §§push(param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        §§goto(addr133);
                     }
                  }
                  break;
               }
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr114);
               }
               else
               {
                  §§goto(addr132);
               }
            }
            §§goto(addr132);
         }
         §§goto(addr163);
      }
      
      public static function §]!7§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §,!W§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-!4§ = null;
         var _loc8_:§0-§;
         if(!(_loc8_ = §6Z§(param4,param2)))
         {
            if(_loc15_)
            {
               §§push(null);
               if(_loc15_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr42:
               if(§5!W§[param2])
               {
                  if(_loc15_)
                  {
                     §§goto(addr49);
                  }
               }
               var _loc9_:Sound;
               if((_loc9_ = §?@§[param2]) == null)
               {
                  (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§<1§);
                  if(_loc15_ || param1)
                  {
                     _loc9_.addEventListener(Event.ID3,§>!L§);
                     while(true)
                     {
                        _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§'!]§);
                        loop1:
                        for(; _loc15_ || param2; while(true)
                        {
                           §?@§[param2] = _loc9_;
                           if(!(_loc15_ || param2))
                           {
                              continue;
                           }
                           if(_loc14_ && param3)
                           {
                              continue loop1;
                           }
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr106);
                        },_loc11_ = new URLRequest(param1),_loc12_ = new SoundLoaderContext(param3,true),if(_loc15_ || param2)
                        {
                           _loc9_.load(_loc11_,_loc12_);
                        },(_loc13_ = new §-!4§(§-!4§.§]!5§)).§3!N§ = param2,if(!(_loc14_ && param2))
                        {
                           dispatchEvent(_loc13_);
                        },var _loc10_:§,!W§ = _loc8_.§#3§(_loc9_,param2,param5,param6,param7),if(!_loc14_)
                        {
                           §5!W§[param2] = _loc10_;
                        },return _loc10_)
                        {
                           while(true)
                           {
                              _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§'!]§);
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr184);
            }
            addr49:
            return null;
         }
         §§goto(addr42);
      }
      
      private static function §<1§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-!4§ = new §-!4§(§-!4§.§3!3§);
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.§3!N§ = §7" §(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(_loc4_);
            
         }
      }
      
      private static function §7" §(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §?@§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §?@§[_loc2_];
               if(_loc7_)
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
      
      private static function §>!L§(param1:Event) : void
      {
      }
      
      private static function §'!]§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§]!H§ = new §]!H§(§]!H§.§&!o§);
         §§push(§7" §(Sound(param1.currentTarget)));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && §-!Q§))
         {
            _loc2_.§3!N§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
                  addr112:
                  while(!_loc5_)
                  {
                  }
               }
               addr99:
               loop4:
               while(true)
               {
                  if(_loc5_ && _loc3_)
                  {
                     continue loop0;
                  }
                  if(§5!W§[_loc3_])
                  {
                     if(!(_loc5_ && §-!Q§))
                     {
                        §,!W§(§5!W§[_loc3_]).§@!M§();
                     }
                     loop5:
                     while(true)
                     {
                        addr44:
                        while(true)
                        {
                           dispatchEvent(_loc2_);
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop5;
                        }
                        if(_loc5_)
                        {
                           continue loop4;
                        }
                        if(!_loc5_)
                        {
                           return;
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr44);
               }
            }
         }
         while(true)
         {
            delete §?@§[_loc3_];
            §§goto(addr99);
         }
      }
      
      private static function §3%§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §-!Q§))
         {
            delete §5!W§[param1.data];
            do
            {
               dispatchEvent(new §-!4§(§-!4§.SOUND_COMPLETE,param1.data));
            }
            while(_loc2_ && §-!Q§);
            
         }
      }
      
      private static function §'@§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §#3§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!W§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:Class = null;
         var _loc6_:§0-§;
         if(!(_loc6_ = §6Z§(param2,param1)))
         {
            if(!(_loc10_ && param2))
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §?@§[param1]) == null)
         {
            if(!(_loc8_ = §,!j§.§!!N§(param1,false) as Class))
            {
               if(!(_loc10_ && param1))
               {
                  §§push(§<m§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(!_loc10_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(!_loc10_)
                  {
                     return null;
                  }
               }
            }
            _loc7_ = new _loc8_();
            if(!(_loc10_ && param1))
            {
               §?@§[param1] = _loc7_;
            }
         }
         return _loc6_.§#3§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §^B§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0-§ = §]a§(param1);
         if(_loc3_ || §-!Q§)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  _loc2_.§4!$§();
                  addr77:
                  while(true)
                  {
                     dispatchEvent(new §-!4§(§-!4§.§,5§,"",param1));
                     if(!(_loc4_ && §-!Q§))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr49);
               }
            }
            addr49:
            return;
         }
         §§goto(addr77);
      }
      
      public static function §7"$§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc5_)
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               addr148:
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_)
                     {
                        if(§-6§)
                        {
                           if(!(_loc4_ && param2))
                           {
                              addr160:
                              §§push(§<m§);
                              §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                              if(_loc5_ || param2)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              break;
                           }
                           break;
                        }
                        §§goto(addr131);
                     }
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        addr128:
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
                                 if(_loc5_ || §-!Q§)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 addr119:
                                 _loc3_ = §§pop();
                                 while(_loc5_)
                                 {
                                    §§push(param1);
                                    if(!(_loc4_ && §-!Q§))
                                    {
                                       §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                    }
                                    param1 = §§pop();
                                    while(_loc5_ || §-!Q§)
                                    {
                                       §-!Q§.§#3§(param1,param2);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             return;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 if(_loc4_)
                                 {
                                    break loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               addr131:
               return;
            }
         }
         §§goto(addr160);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §`!6§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §`!6§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §`!6§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §`!6§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §`!6§.willTrigger(param1);
      }
   }
}
