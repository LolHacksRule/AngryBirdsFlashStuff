package §#";§
{
   import §6]§.§,"0§;
   import com.rovio.assets.§69§;
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
   
   public class §0"#§
   {
      
      private static const §'f§:int = 128;
      
      private static var §'!U§:Boolean = true;
      
      private static var §,`§:int;
      
      private static var §+!s§:Dictionary;
      
      private static var §5-§:Dictionary;
      
      private static var §%L§:Dictionary;
      
      public static const §3!v§:String = "Default_Channel";
      
      public static const §6"$§:Boolean = false;
      
      private static var §6",§:Boolean = true;
      
      private static var §@J§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'f§ = 128;
            while(true)
            {
               §'!U§ = true;
               loop1:
               while(_loc2_)
               {
                  §3!v§ = "Default_Channel";
                  loop2:
                  while(true)
                  {
                     §6"$§ = false;
                     while(!_loc1_)
                     {
                        §6",§ = true;
                        continue loop2;
                        if(_loc2_ || §0"#§)
                        {
                           return;
                           addr53:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §0"#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §6",§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!s§ = new Dictionary();
            loop0:
            while(true)
            {
               §5-§ = new Dictionary();
               while(true)
               {
                  §%L§ = new Dictionary();
                  while(_loc1_ || §0"#§)
                  {
                     §,`§ = 0;
                     loop3:
                     while(_loc1_)
                     {
                        continue loop0;
                        while(true)
                        {
                           §4!m§(§3!v§,4,1);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public static function §4!m§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && §0"#§))
         {
            if(§9!$§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§,`§);
                  loop1:
                  while(true)
                  {
                     §§push(§'f§);
                     loop2:
                     while(§§pop() < §§pop())
                     {
                        while(true)
                        {
                           §§push(§,`§);
                           if(_loc5_)
                           {
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc5_ || param2)
                                 {
                                    if(§§pop() >= §'f§)
                                    {
                                       if(!(_loc6_ && §0"#§))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ && param1)
                                             {
                                                break;
                                             }
                                             if(!_loc5_)
                                             {
                                                break loop2;
                                             }
                                             if(_loc6_ && param2)
                                             {
                                                return;
                                             }
                                             addr136:
                                             continue;
                                          }
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§'f§);
                                             if(!_loc6_)
                                             {
                                                addr66:
                                                §§push(int(§§pop() - §,`§));
                                                if(_loc5_)
                                                {
                                                   break loop1;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr66);
                                          }
                                          else
                                          {
                                             addr106:
                                             if(_loc6_ && param1)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§,"0§);
                                             §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + " failed because we already have more than ");
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + §'f§);
                                                   if(!_loc6_)
                                                   {
                                                      addr127:
                                                      §§push(§§pop() + " reserved");
                                                   }
                                                   §§pop().log(§§pop());
                                                   break;
                                                }
                                             }
                                             §§goto(addr127);
                                          }
                                       }
                                       addr69:
                                       if(false)
                                       {
                                          §§goto(addr71);
                                       }
                                    }
                                    var _loc4_:§,%§;
                                    (_loc4_ = new §,%§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§%!1§);
                                    if(!_loc6_)
                                    {
                                       _loc4_.addEventListener(ErrorEvent.ERROR,§;!q§);
                                       loop4:
                                       while(true)
                                       {
                                          if(!§'!U§)
                                          {
                                             while(true)
                                             {
                                                _loc4_.§"g§();
                                                addr199:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr197:
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §+!s§[param1.toLowerCase()] = _loc4_;
                                             while(!_loc6_)
                                             {
                                                §,`§ += param2;
                                                if(_loc6_ && param3)
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc5_)
                                                {
                                                   break loop7;
                                                }
                                                §§goto(addr197);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr71);
                     }
                     if(§6"$§)
                     {
                        §§goto(addr106);
                     }
                     addr71:
                     return;
                  }
                  param2 = §§pop();
                  §§goto(addr69);
               }
            }
            §§goto(addr136);
         }
         §§goto(addr137);
      }
      
      public static function §9!$§(param1:String) : §,%§
      {
         return §+!s§[param1.toLowerCase()];
      }
      
      public static function §`!z§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+!s§)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §5#§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§,%§ = null;
         if(_loc6_ || param1)
         {
            if(param1 == §'!U§)
            {
               if(!(_loc5_ && §0"#§))
               {
                  return;
               }
            }
            else
            {
               addr55:
               §'!U§ = param1;
            }
            var _loc3_:int = 0;
            for each(_loc2_ in §+!s§)
            {
               if(!_loc5_)
               {
                  if(!§'!U§)
                  {
                     _loc2_.§"g§();
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue;
                  }
                  _loc2_.§=x§();
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public static function §4"#§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,%§ = null;
         for each(_loc1_ in §+!s§)
         {
            if(!_loc4_)
            {
               _loc1_.§4"#§();
            }
         }
         if(!_loc4_)
         {
            dispatchEvent(new §+J§(§+J§.§0!0§));
         }
      }
      
      public static function §9y§() : Boolean
      {
         return §'!U§;
      }
      
      private static function §+8§(param1:String, param2:String) : §,%§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!§6",§)
            {
               if(!_loc5_)
               {
                  §§goto(addr22);
               }
            }
            var _loc3_:§,%§ = §9!$§(param1);
            if(!(_loc5_ && param2))
            {
               if(!_loc3_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr128:
                     addr127:
                     if(§6"$§)
                     {
                        addr129:
                        §§push(§,"0§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + " because this channel does not exist ");
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                        }
                        §§pop().log(§§pop());
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr129);
               }
               else
               {
                  while(true)
                  {
                     §§push(_loc3_.§+!k§());
                     if(_loc5_ && param1)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        return _loc3_;
                     }
                     if(!_loc5_)
                     {
                        §§push(§6"$§);
                        break;
                     }
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && §0"#§))
                        {
                           §§push(§,"0§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                           if(_loc4_)
                           {
                              §§push(§§pop() + " this channel is full ");
                              if(!_loc5_)
                              {
                                 §§push(§§pop() + param1);
                              }
                           }
                           §§pop().log(§§pop());
                        }
                        if(!_loc5_)
                        {
                           addr42:
                           §§push(null);
                           if(!_loc5_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr129);
                        }
                        addr116:
                        return null;
                     }
                     §§goto(addr42);
                  }
                  else
                  {
                     §§goto(addr128);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr127);
         }
         addr22:
         return null;
      }
      
      public static function §+X§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §8V§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§+J§ = null;
         var _loc8_:§,%§;
         if(!(_loc8_ = §+8§(param4,param2)))
         {
            if(_loc15_)
            {
               §§push(null);
               if(!(_loc14_ && param1))
               {
                  return §§pop();
               }
            }
            else
            {
               addr63:
               return null;
            }
            return §§pop();
         }
         if(§%L§[param2])
         {
            if(_loc15_ || param2)
            {
               §§goto(addr63);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §5-§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§=^§);
            if(_loc15_ || §0"#§)
            {
               _loc9_.addEventListener(Event.ID3,§^"3§);
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@!K§);
                  loop1:
                  for(; _loc15_ || param3; while(true)
                  {
                     §5-§[param2] = _loc9_;
                     if(!(_loc15_ || param2))
                     {
                        continue;
                     }
                     if(!_loc15_)
                     {
                        continue loop1;
                     }
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr116);
                  },_loc11_ = new URLRequest(param1),_loc12_ = new SoundLoaderContext(param3,true),if(!_loc14_)
                  {
                     _loc9_.load(_loc11_,_loc12_);
                  },(_loc13_ = new §+J§(§+J§.§&#§)).§!"5§ = param2,if(!(_loc14_ && param1))
                  {
                     dispatchEvent(_loc13_);
                  },var _loc10_:§8V§ = _loc8_.§9"2§(_loc9_,param2,param5,param6,param7),if(!_loc14_)
                  {
                     §%L§[param2] = _loc10_;
                  },return _loc10_)
                  {
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!K§);
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr179);
         §§goto(addr63);
      }
      
      private static function §=^§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+J§ = new §+J§(§+J§.§"[§);
         if(!(_loc3_ && param1))
         {
            _loc2_.§!"5§ = §,!L§(Sound(param1.currentTarget));
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(!_loc4_);
         
      }
      
      private static function §,!L§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         var _loc4_:int = 0;
         var _loc5_:* = §5-§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               _loc3_ = §5-§[_loc2_];
               if(!(_loc6_ || _loc2_))
               {
                  break;
               }
               if(_loc3_ == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private static function §^"3§(param1:Event) : void
      {
      }
      
      private static function §@!K§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§+!c§ = new §+!c§(§+!c§.§<,§);
         §§push(§,!L§(Sound(param1.currentTarget)));
         if(!(_loc5_ && param1))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc2_.§!"5§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               loop1:
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
                  loop2:
                  while(true)
                  {
                     delete §5-§[_loc3_];
                     loop3:
                     for(; _loc4_; while(_loc4_ || _loc2_)
                     {
                     })
                     {
                        if(§%L§[_loc3_])
                        {
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                           continue;
                        }
                        addr44:
                        while(true)
                        {
                           dispatchEvent(_loc2_);
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr44);
         }
      }
      
      private static function §%!1§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            delete §%L§[param1.data];
            do
            {
               dispatchEvent(new §+J§(§+J§.SOUND_COMPLETE,param1.data));
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private static function §;!q§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §9"2§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §8V§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc8_:Class = null;
         var _loc6_:§,%§;
         if(!(_loc6_ = §+8§(param2,param1)))
         {
            if(_loc9_)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §5-§[param1]) == null)
         {
            if(!(_loc8_ = §69§.§ 0§(param1,false) as Class))
            {
               if(!_loc10_)
               {
                  §,"0§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                  if(!_loc10_)
                  {
                     return null;
                  }
               }
            }
            _loc7_ = new _loc8_();
            if(_loc9_)
            {
               §5-§[param1] = _loc7_;
            }
         }
         return _loc6_.§9"2§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §<"0§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,%§ = §9!$§(param1);
         if(_loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc3_)
               {
                  _loc2_.§4"#§();
               }
               do
               {
                  dispatchEvent(new §+J§(§+J§.§'E§,"",param1));
               }
               while(_loc4_);
               
               addr59:
            }
            return;
         }
         §§goto(addr59);
      }
      
      public static function §<!&§(param1:String, param2:String = "Default_Channel") : void
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
               addr108:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr116);
                     }
                     §§goto(addr135);
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(Math.random() * _loc3_);
                        addr100:
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
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 addr93:
                                 _loc3_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                                    }
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr135);
               }
            }
         }
         addr116:
         if(§6"$§)
         {
            if(_loc5_ || _loc3_)
            {
               addr135:
               §,"0§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
               addr140:
            }
            §§goto(addr140);
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            §@J§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §@J§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §@J§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §@J§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §@J§.willTrigger(param1);
      }
   }
}
