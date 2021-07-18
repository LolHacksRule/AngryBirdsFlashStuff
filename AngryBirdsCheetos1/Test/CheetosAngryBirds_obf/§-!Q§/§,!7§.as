package §-!Q§
{
   import §7'§.§!y§;
   import §>^§.§!6§;
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
   
   public class §,!7§
   {
      
      private static const §7!K§:int = 128;
      
      private static var §1!b§:Boolean = true;
      
      private static var §-!,§:int;
      
      private static var § J§:Dictionary;
      
      private static var §-w§:Dictionary;
      
      private static var §7!1§:Dictionary;
      
      public static const §@!7§:String = "Default_Channel";
      
      public static const §+'§:Boolean = false;
      
      private static var §,!R§:Boolean = true;
      
      private static var § N§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §7!K§ = 128;
            while(true)
            {
               §1!b§ = true;
               loop1:
               for(; !(_loc1_ && §,!7§); if(!(_loc1_ && _loc2_))
               {
                  addr62:
                  return;
               })
               {
                  §@!7§ = "Default_Channel";
                  loop2:
                  while(true)
                  {
                     §+'§ = false;
                     addr72:
                     while(true)
                     {
                        §,!R§ = true;
                        do
                        {
                           § N§ = new EventDispatcher();
                        }
                        while(!_loc2_);
                        
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr62);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §,!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §,!R§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § J§ = new Dictionary();
            loop0:
            while(true)
            {
               §-w§ = new Dictionary();
               loop1:
               while(true)
               {
                  §7!1§ = new Dictionary();
                  while(true)
                  {
                     §-!,§ = 0;
                     while(_loc1_)
                     {
                        continue loop1;
                        §<!-§(§@!7§,4,1);
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              return;
                              addr48:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public static function §<!-§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            if(§-!§(param1) == null)
            {
               loop0:
               while(true)
               {
                  §§push(§-!,§);
                  loop1:
                  while(true)
                  {
                     §§push(§7!K§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(§+'§)
                              {
                                 break loop2;
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(§-!,§);
                              if(!(_loc5_ && param1))
                              {
                                 if(!(_loc6_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 §§push(param2);
                                 if(_loc6_ || §,!7§)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc5_ && param3))
                                    {
                                       if(§§pop() >= §7!K§)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!(_loc5_ && param3))
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§7!K§);
                                                   if(!_loc5_)
                                                   {
                                                      addr83:
                                                      §§push(int(§§pop() - §-!,§));
                                                      break;
                                                   }
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             if(!_loc6_)
                                             {
                                                return;
                                             }
                                             addr147:
                                             continue;
                                          }
                                          addr85:
                                          if(_loc5_)
                                          {
                                             break loop2;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr89);
                                          }
                                       }
                                       var _loc4_:§^J§;
                                       (_loc4_ = new §^J§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§7!3§);
                                       if(_loc6_)
                                       {
                                          _loc4_.addEventListener(ErrorEvent.ERROR,§ !!§);
                                          if(!§1!b§)
                                          {
                                             addr203:
                                             _loc4_.§`j§();
                                          }
                                          § J§[param1.toLowerCase()] = _loc4_;
                                          addr183:
                                          addr211:
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §-!,§ += param2;
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr183);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr211);
                                             }
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                 }
                                 §§goto(addr83);
                              }
                              break;
                           }
                           param2 = §§pop();
                           §§goto(addr85);
                        }
                        §§goto(addr89);
                     }
                     while(true)
                     {
                        §§push(§!6§);
                        §§push("WARNING: SoundEngine:addNewChannelControl() " + param1);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + " failed because we already have more than ");
                           if(_loc6_)
                           {
                              addr127:
                              §§push(§§pop() + §7!K§);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + " reserved");
                              }
                           }
                           §§pop().log(§§pop());
                           continue loop0;
                        }
                        §§goto(addr127);
                     }
                  }
               }
               addr89:
               return;
            }
            §§goto(addr147);
         }
         §§goto(addr110);
      }
      
      public static function §-!§(param1:String) : §^J§
      {
         return § J§[param1.toLowerCase()];
      }
      
      public static function §#6§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § J§)
         {
            if(_loc5_ || §,!7§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §!!A§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^J§ = null;
         if(_loc5_ || _loc3_)
         {
            if(param1 == §1!b§)
            {
               if(_loc5_ || §,!7§)
               {
                  return;
               }
            }
            §1!b§ = param1;
         }
         for each(_loc2_ in § J§)
         {
            if(!_loc6_)
            {
               if(!§1!b§)
               {
                  _loc2_.§`j§();
                  continue;
               }
               if(!_loc6_)
               {
                  _loc2_.§2!^§();
                  if(_loc6_)
                  {
                     continue;
                  }
               }
            }
         }
      }
      
      public static function §13§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§^J§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in § J§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.§13§();
            }
         }
         if(!_loc4_)
         {
            dispatchEvent(new §-=§(§-=§.§6E§));
         }
      }
      
      public static function §^m§() : Boolean
      {
         return §1!b§;
      }
      
      private static function §2>§(param1:String, param2:String) : §^J§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!§,!R§)
            {
               if(_loc4_ || §,!7§)
               {
                  return null;
               }
            }
         }
         var _loc3_:§^J§ = §-!§(param1);
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_)
            {
               while(true)
               {
                  §§push(_loc3_.§ O§());
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(!(_loc5_ && param2))
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc4_ || param1)
                           {
                              addr106:
                              §§push(§+'§);
                              break;
                           }
                           addr142:
                           addr143:
                           if(§+'§)
                           {
                              §§push(§!6§);
                              §§push("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + " because this channel does not exist ");
                                 if(_loc4_ || §,!7§)
                                 {
                                    addr169:
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().log(§§pop());
                                 addr138:
                                 return null;
                                 addr136:
                                 addr172:
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr136);
                        }
                        if(!_loc5_)
                        {
                           §§push(§!6§);
                           §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§§pop() + " this channel is full ");
                              if(_loc4_)
                              {
                                 §§push(§§pop() + param1);
                              }
                           }
                           §§pop().log(§§pop());
                           addr47:
                           §§push(null);
                           if(!(_loc5_ && param1))
                           {
                              return §§pop();
                           }
                           addr135:
                        }
                        else
                        {
                           §§goto(addr172);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr143);
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc5_ && §,!7§))
                  {
                     §§goto(addr115);
                  }
                  §§goto(addr135);
               }
               §§goto(addr47);
            }
            §§goto(addr142);
         }
         §§goto(addr106);
      }
      
      public static function §@!#§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §;l§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-=§ = null;
         var _loc8_:§^J§;
         if(!(_loc8_ = §2>§(param4,param2)))
         {
            if(_loc15_)
            {
               §§push(null);
               if(_loc15_ || param3)
               {
                  return §§pop();
               }
            }
            else
            {
               §§goto(addr52);
            }
            §§goto(addr64);
         }
         addr52:
         if(§7!1§[param2])
         {
            if(_loc15_ || §,!7§)
            {
               addr64:
               return null;
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §-w§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§;!U§);
            if(_loc15_)
            {
               _loc9_.addEventListener(Event.ID3,§@!5§);
               loop0:
               while(true)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§];§);
                  loop1:
                  while(true)
                  {
                     addr111:
                     loop2:
                     while(true)
                     {
                        _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§];§);
                        while(!_loc14_)
                        {
                           §-w§[param2] = _loc9_;
                           if(!(_loc15_ || param2))
                           {
                              continue;
                           }
                           if(!_loc15_)
                           {
                              break loop2;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            while(false)
            {
               §§goto(addr111);
            }
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            if(_loc15_)
            {
               _loc9_.load(_loc11_,_loc12_);
            }
            (_loc13_ = new §-=§(§-=§.§>!'§)).§%%§ = param2;
            if(_loc15_)
            {
               dispatchEvent(_loc13_);
            }
         }
         var _loc10_:§;l§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         if(_loc15_ || §,!7§)
         {
            §7!1§[param2] = _loc10_;
         }
         return _loc10_;
      }
      
      private static function §;!U§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§-=§ = new §-=§(§-=§.§=!N§);
         if(!_loc4_)
         {
            _loc2_.§%%§ = §-!;§(Sound(param1.currentTarget));
            do
            {
               dispatchEvent(_loc2_);
            }
            while(!(_loc3_ || §,!7§));
            
         }
      }
      
      private static function §-!;§(param1:Sound) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §-w§)
         {
            _loc3_ = §-w§[_loc2_];
            if(_loc7_ || §,!7§)
            {
               if(_loc3_ == param1)
               {
                  if(_loc7_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private static function §@!5§(param1:Event) : void
      {
      }
      
      private static function §];§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§@?§ = new §@?§(§@?§.§'!0§);
         §§push(§-!;§(Sound(param1.currentTarget)));
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            _loc2_.§%%§ = _loc3_;
            loop0:
            while(true)
            {
               _loc2_.error = param1.text;
               addr120:
               addr85:
               while(true)
               {
                  _loc2_.errorID = param1.errorID;
               }
               while(true)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr120);
            }
         }
         loop2:
         while(true)
         {
            delete §-w§[_loc3_];
            while(§7!1§[_loc3_])
            {
               if(!_loc5_)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue loop2;
                  }
                  §;l§(§7!1§[_loc3_]).§8!K§();
               }
               §§goto(addr85);
            }
            §§goto(addr49);
         }
         §§goto(addr67);
      }
      
      private static function §7!3§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            delete §7!1§[param1.data];
         }
         do
         {
            dispatchEvent(new §-=§(§-=§.SOUND_COMPLETE,param1.data));
         }
         while(_loc3_);
         
      }
      
      private static function § !!§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §;l§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§^J§;
         if(!(_loc6_ = §2>§(param2,param1)))
         {
            if(_loc10_ || §,!7§)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §-w§[param1]) == null)
         {
            if(!(_loc8_ = §!y§.§%!C§(param1,false) as Class))
            {
               if(!(_loc9_ && §,!7§))
               {
                  §!6§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
                  if(!_loc10_)
                  {
                     §§goto(addr81);
                  }
               }
               return null;
            }
            addr81:
            _loc7_ = new _loc8_();
            if(_loc10_ || param1)
            {
               §-w§[param1] = _loc7_;
            }
            §§goto(addr106);
         }
         addr106:
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §+!A§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^J§ = §-!§(param1);
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               loop0:
               while(true)
               {
                  _loc2_.§13§();
                  addr73:
                  while(true)
                  {
                     dispatchEvent(new §-=§(§-=§.§90§,"",param1));
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr73);
      }
      
      public static function §5%§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         if(_loc5_ || param2)
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
                              addr126:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc4_)
                                       {
                                          if(§+'§)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr138:
                                          addr154:
                                       }
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(!_loc5_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          §§push(int(§§pop()));
                                       }
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          continue loop4;
                                       }
                                       continue loop0;
                                       return;
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                              §!6§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
                              addr161:
                              §§goto(addr138);
                           }
                        }
                     }
                  }
                  §§goto(addr154);
               }
            }
         }
         while(true)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
            }
            param1 = §§pop();
            §§goto(addr67);
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            § N§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return § N§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            § N§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return § N§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return § N§.willTrigger(param1);
      }
   }
}
