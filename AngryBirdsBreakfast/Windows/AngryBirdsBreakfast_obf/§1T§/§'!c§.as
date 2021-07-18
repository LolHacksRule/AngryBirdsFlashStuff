package §1T§
{
   import com.rovio.assets.§<V§;
   import each.§!!'§;
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
   
   public class §'!c§
   {
      
      private static const §?"#§:int = 64;
      
      private static var §!N§:Boolean = true;
      
      private static var §%!J§:int;
      
      private static var §6L§:Dictionary;
      
      private static var §8!y§:Dictionary;
      
      private static var §9!0§:Dictionary;
      
      public static const § F§:String = "Default_Channel";
      
      public static const §3n§:Boolean = false;
      
      private static var §"!V§:Boolean = true;
      
      private static var §3!i§:EventDispatcher;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?"#§ = 64;
            loop0:
            while(true)
            {
               §!N§ = true;
               loop1:
               while(true)
               {
                  § F§ = "Default_Channel";
                  while(true)
                  {
                     §3n§ = false;
                     continue loop0;
                     addr37:
                     while(_loc1_ || §'!c§)
                     {
                        continue loop1;
                        §3!i§ = new EventDispatcher();
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              return;
                              addr32:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §"!V§ = true;
            §§goto(addr37);
         }
         §§goto(addr32);
      }
      
      public function §'!c§()
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
            §"!V§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6L§ = new Dictionary();
            loop0:
            while(true)
            {
               §8!y§ = new Dictionary();
               loop1:
               while(true)
               {
                  §9!0§ = new Dictionary();
                  while(true)
                  {
                     §%!J§ = 0;
                     continue loop1;
                     addr36:
                     if(_loc1_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function §8G§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(!param1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop5:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr144);
                        }
                        loop6:
                        while(true)
                        {
                           addr65:
                           if(_loc6_ && param3)
                           {
                              continue;
                           }
                           §§push(§?"#§);
                           if(!(_loc6_ && param1))
                           {
                              addr80:
                              if(!(_loc6_ && §'!c§))
                              {
                                 addr90:
                                 param2 = §§pop() - §%!J§;
                                 addr91:
                                 addr89:
                                 addr88:
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(false)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§%!J§);
                                             addr109:
                                             while(true)
                                             {
                                                §§push(§?"#§);
                                                loop9:
                                                while(§§pop() < §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§%!J§);
                                                      if(_loc5_ || param3)
                                                      {
                                                         §§push(param2);
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(_loc6_ && param1)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(§§pop() >= §?"#§)
                                                               {
                                                                  if(!(_loc6_ && §'!c§))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr65);
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr91);
                                                               }
                                                               break loop7;
                                                            }
                                                            §§goto(addr89);
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr80);
                                                }
                                                addr111:
                                                §§push(§3n§);
                                                if(_loc6_ && param2)
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc5_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                      }
                                                      break loop5;
                                                   }
                                                   addr150:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr151:
                                                      while(true)
                                                      {
                                                         §§push(§[!d§(param1) == null);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   continue loop0;
                                                }
                                             }
                                             continue loop6;
                                          }
                                          addr107:
                                       }
                                       var _loc4_:§3!6§;
                                       (_loc4_ = new §3!6§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§-!z§);
                                       if(_loc5_)
                                       {
                                          _loc4_.addEventListener(ErrorEvent.ERROR,§1c§);
                                          §6L§[param1.toLowerCase()] = _loc4_;
                                          addr209:
                                       }
                                       §%!J§ += param2;
                                       if(_loc5_)
                                       {
                                          if(!(_loc5_ || param1))
                                          {
                                             §§goto(addr209);
                                          }
                                          return;
                                       }
                                       addr203:
                                       §§goto(addr203);
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr107);
                  }
                  return;
                  addr140:
               }
               §§goto(addr150);
            }
         }
         addr144:
      }
      
      public static function §[!d§(param1:String) : §3!6§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr53);
               }
            }
            return §6L§[param1.toLowerCase()];
         }
         addr53:
         return null;
      }
      
      public static function §9"-§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §6L§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §,!O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == §!N§)
            {
               if(!_loc3_)
               {
                  §§goto(addr67);
               }
               else
               {
                  while(true)
                  {
                     addr44:
                     while(_loc2_ || §'!c§)
                     {
                        §-!!§(§!N§);
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                  }
                  addr68:
               }
            }
            while(true)
            {
               §!N§ = param1;
               §§goto(addr44);
               §§goto(addr68);
            }
         }
         addr67:
      }
      
      public static function §`"#§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3!6§ = null;
         for each(_loc2_ in §6L§)
         {
            if(!_loc5_)
            {
               if(!param1)
               {
                  _loc2_.§>@§();
                  continue;
               }
               if(_loc5_)
               {
                  continue;
               }
               _loc2_.§`!C§();
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
            }
         }
      }
      
      protected static function §-!!§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1)
            {
               §§goto(addr21);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr39);
         }
         addr21:
         §§push(1);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
            if(_loc3_)
            {
            }
            addr42:
            §§push(Number(§§pop()));
         }
         else
         {
            addr39:
            §§push(Number(§§pop()));
            if(!_loc3_)
            {
               §§goto(addr42);
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            SoundMixer.soundTransform = new SoundTransform(_loc2_);
         }
      }
      
      public static function §&j§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3!6§ = null;
         for each(_loc1_ in §6L§)
         {
            if(!_loc4_)
            {
               _loc1_.§&j§();
            }
         }
         if(!_loc4_)
         {
            dispatchEvent(new §-Z§(§-Z§.§^o§));
         }
      }
      
      public static function get §<!g§() : Boolean
      {
         return §!N§;
      }
      
      private static function §=L§(param1:String, param2:String) : §3!6§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            if(!§"!V§)
            {
               if(!(_loc4_ && §'!c§))
               {
                  §§goto(addr33);
               }
            }
            var _loc3_:§3!6§ = §[!d§(param1);
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(_loc3_.§^n§());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(!_loc4_)
                        {
                           addr70:
                           §§push(§3n§);
                           if(_loc5_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(§!!'§);
                                       §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + " this channel is full ");
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                       }
                                       §§pop().log(§§pop());
                                       addr110:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          break;
                                       }
                                       if(_loc5_ || param2)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          addr133:
                                          addr134:
                                          if(§3n§)
                                          {
                                             addr135:
                                             §§push(§!!'§);
                                             §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§pop() + " because this channel does not exist ");
                                                if(_loc5_)
                                                {
                                                   addr160:
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().log(§§pop());
                                                addr120:
                                                return null;
                                                addr118:
                                                addr163:
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr110);
                              }
                              break;
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr70);
                  }
                  §§push(null);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr133);
         }
         addr33:
         return null;
      }
      
      public static function §3#§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §8!Q§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-Z§ = null;
         var _loc8_:§3!6§;
         if(!(_loc8_ = §=L§(param4,param2)))
         {
            if(_loc15_)
            {
               §§push(null);
               if(_loc15_ || param2)
               {
                  return §§pop();
               }
            }
            else
            {
               addr58:
               return null;
            }
            return §§pop();
         }
         if(§9!0§[param2])
         {
            if(!(_loc14_ && param3))
            {
               §§goto(addr58);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §8!y§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§"B§);
            if(_loc15_)
            {
               _loc9_.addEventListener(Event.ID3,§<y§);
               loop0:
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§#7§);
                  loop1:
                  while(true)
                  {
                     addr101:
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§#7§);
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr101);
            }
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            if(_loc15_)
            {
               _loc9_.load(_loc11_,_loc12_);
            }
            (_loc13_ = new §-Z§(§-Z§.§[n§)).§6a§ = param2;
            if(_loc15_)
            {
               dispatchEvent(_loc13_);
            }
         }
         var _loc10_:§8!Q§ = _loc8_.§3!f§(_loc9_,param2,param5,param6,param7);
         if(!_loc14_)
         {
            §9!0§[param2] = _loc10_;
         }
         return _loc10_;
         §§goto(addr58);
      }
      
      private static function §"B§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-Z§ = new §-Z§(§-Z§.§%B§);
         if(!_loc4_)
         {
            _loc2_.§6a§ = §&V§(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(!_loc3_);
            
         }
      }
      
      private static function §&V§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §8!y§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §8!y§[_loc2_];
               if(!_loc6_)
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(!(_loc7_ && §'!c§))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §<y§(param1:Event) : void
      {
      }
      
      private static function §#7§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§0!,§ = new §0!,§(§0!,§.§]N§);
         §§push(§&V§(Sound(param1.currentTarget)));
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            _loc2_.§6a§ = _loc3_;
            while(true)
            {
               _loc2_.error = param1.text;
               while(_loc4_)
               {
                  _loc2_.errorID = param1.errorID;
                  while(_loc4_ || _loc2_)
                  {
                     delete §8!y§[_loc3_];
                     loop3:
                     while(true)
                     {
                        if(!§9!0§[_loc3_])
                        {
                           while(true)
                           {
                              dispatchEvent(_loc2_);
                              if(!(_loc5_ && §'!c§))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        else
                        {
                           addr49:
                           addr70:
                        }
                        if(_loc4_)
                        {
                           §8!Q§(§9!0§[_loc3_]).§>!C§();
                        }
                        continue;
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private static function §-!z§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            delete §9!0§[param1.data];
            do
            {
               dispatchEvent(new §-Z§(§-Z§.SOUND_COMPLETE,param1.data));
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      private static function §1c§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §3!f§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §8!Q§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:§3!6§;
         if(!(_loc6_ = §=L§(param2,param1)))
         {
            if(!(_loc9_ && param3))
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §1U§(param1)))
         {
            if(_loc8_)
            {
               return null;
            }
         }
         return _loc6_.§3!f§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1U§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Class = null;
         var _loc3_:Sound = §8!y§[param1];
         if(_loc5_)
         {
            if(_loc3_ == null)
            {
               addr29:
               if(!(_loc4_ = §<V§.§"!,§(param1,false,param2) as Class))
               {
                  if(_loc5_ || param1)
                  {
                     if(param2)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §!!'§.log("Sound not in AssetCache: " + param1);
                           if(_loc6_)
                           {
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr75);
                     }
                  }
                  return null;
               }
               addr75:
               _loc3_ = new _loc4_();
               if(_loc5_ || _loc3_)
               {
                  §8!y§[param1] = _loc3_;
               }
               §§goto(addr100);
            }
            addr100:
            return _loc3_;
         }
         §§goto(addr29);
      }
      
      public static function §;! §(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!6§ = §[!d§(param1);
         if(_loc3_)
         {
            if(_loc2_ != null)
            {
               do
               {
                  _loc2_.§&j§();
                  do
                  {
                     dispatchEvent(new §-Z§(§-Z§.§^&§,"",param1));
                  }
                  while(!_loc3_);
                  
               }
               while(!_loc3_);
               
               addr61:
            }
            return;
         }
         §§goto(addr61);
      }
      
      public static function §"V§(param1:String, param2:String = "Default_Channel") : void
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
               addr157:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        addr132:
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
                                 if(_loc5_ || §'!c§)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                    addr125:
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                       }
                                       param1 = §§pop();
                                       while(true)
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       break loop5;
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr142);
                           }
                        }
                     }
                  }
                  if(§3n§)
                  {
                     §§goto(addr160);
                  }
                  addr142:
                  return;
               }
            }
         }
         §§goto(addr160);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §3!i§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3!i§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §3!i§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3!i§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3!i§.willTrigger(param1);
      }
   }
}
