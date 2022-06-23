package §#X§
{
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
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
   
   public class §,!F§
   {
      
      private static const §class§:int = 128;
      
      private static var §6N§:Boolean = true;
      
      private static var §2q§:int;
      
      private static var §<J§:Dictionary;
      
      private static var §[o§:Dictionary;
      
      private static var §7!7§:Dictionary;
      
      public static const §=!I§:String = "Default_Channel";
      
      public static const §@8§:Boolean = false;
      
      private static var §&-§:Boolean = true;
      
      private static var §3q§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §,!F§)
         {
            §6N§ = true;
            §=!I§ = "Default_Channel";
            if(_loc2_ || _loc2_)
            {
               §@8§ = false;
               if(_loc2_ || §,!F§)
               {
                  §&-§ = true;
                  if(!_loc1_)
                  {
                     addr75:
                     §3q§ = new EventDispatcher();
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §,!F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §&-§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §<J§ = new Dictionary();
            if(!(_loc2_ && _loc2_))
            {
               §[o§ = new Dictionary();
               if(!_loc2_)
               {
                  addr60:
                  §7!7§ = new Dictionary();
                  if(_loc1_ || §,!F§)
                  {
                  }
                  §§goto(addr86);
               }
               §2q§ = 0;
               if(!(_loc2_ && §,!F§))
               {
                  §@o§(§=!I§,4,1);
                  §§goto(addr86);
               }
               addr86:
               return;
            }
         }
         §§goto(addr60);
      }
      
      public static function §@o§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(§=!H§(param1) != null)
            {
               return;
            }
            §§push(§2q§);
            if(!_loc5_)
            {
               §§push(§class§);
               if(!(_loc5_ && param3))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(§@8§)
                     {
                        if(!(_loc5_ && param1))
                        {
                           addr48:
                           §§push(§7!+§);
                           §§push("WARNING: SoundEngine:addNewChannelControl() ");
                           if(!(_loc5_ && param3))
                           {
                              §§push(§§pop() + param1);
                              if(_loc6_)
                              {
                                 §§push(" failed because we already have more than ");
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + §class§);
                                       if(_loc6_ || param1)
                                       {
                                       }
                                       addr93:
                                       §§pop().log(§§pop());
                                       if(_loc6_ || §,!F§)
                                       {
                                          §§goto(addr101);
                                       }
                                       else
                                       {
                                          addr128:
                                          var _loc4_:§;1§;
                                          (_loc4_ = new §;1§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§@q§);
                                          if(_loc6_ || param2)
                                          {
                                             _loc4_.addEventListener(ErrorEvent.ERROR,§!!K§);
                                             if(_loc6_)
                                             {
                                                if(!§6N§)
                                                {
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr173:
                                                      _loc4_.§<g§();
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr177);
                                                      }
                                                   }
                                                   §§goto(addr189);
                                                }
                                             }
                                             addr177:
                                             §<J§[param1.toLowerCase()] = _loc4_;
                                             if(!(_loc5_ && param1))
                                             {
                                                addr189:
                                                §2q§ += param2;
                                             }
                                             return;
                                          }
                                          §§goto(addr173);
                                       }
                                    }
                                    §§push(" reserved");
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                     addr101:
                     return;
                  }
                  §§push(§2q§);
                  if(!(_loc5_ && param2))
                  {
                     addr113:
                     §§push(param2);
                     if(_loc6_)
                     {
                        addr116:
                        §§push(§§pop() + §§pop());
                        if(_loc6_)
                        {
                           if(§§pop() >= §class§)
                           {
                              §§push(§class§);
                              if(_loc6_)
                              {
                                 addr126:
                                 §§push(int(§§pop() - §2q§));
                              }
                              param2 = §§pop();
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr126);
                  §§goto(addr128);
               }
               §§goto(addr116);
            }
            §§goto(addr113);
         }
         §§goto(addr48);
      }
      
      public static function §=!H§(param1:String) : §;1§
      {
         return §<J§[param1.toLowerCase()];
      }
      
      public static function §'E§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §<J§)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §7!&§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;1§ = null;
         if(_loc6_)
         {
            if(param1 == §6N§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               addr50:
               §6N§ = param1;
            }
            for each(_loc2_ in §<J§)
            {
               if(_loc6_)
               {
                  if(!§6N§)
                  {
                     _loc2_.§<g§();
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§@z§();
                  if(_loc5_ && §,!F§)
                  {
                     continue;
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function §?X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;1§ = null;
         var _loc3_:* = §<J§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               _loc1_.§?X§();
            }
         }
         if(_loc5_ || _loc3_)
         {
            dispatchEvent(new §3d§(§3d§.§^C§));
         }
      }
      
      public static function §2?§() : Boolean
      {
         return §6N§;
      }
      
      private static function §9-§(param1:String, param2:String) : §;1§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(!§&-§)
            {
               if(_loc5_)
               {
                  §§goto(addr28);
               }
            }
            var _loc3_:§;1§ = §=!H§(param1);
            if(!_loc3_)
            {
               if(_loc5_ || param2)
               {
                  §§push(§@8§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        §§push(§7!+§);
                        §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                        if(_loc5_)
                        {
                           §§push(param2);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || param2)
                              {
                                 §§push(§§pop() + " because this channel does not exist ");
                                 if(!_loc4_)
                                 {
                                    addr87:
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().log(§§pop());
                                 addr90:
                                 §§push(null);
                                 if(!(_loc4_ && param1))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr153);
                              }
                           }
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr90);
                  }
                  else
                  {
                     §§goto(addr103);
                  }
               }
               §§goto(addr152);
            }
            else
            {
               §§push(_loc3_.§]!!§());
               if(!_loc4_)
               {
                  addr103:
                  if(!§§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        addr112:
                        if(§@8§)
                        {
                           if(_loc5_ || §,!F§)
                           {
                              §§push(§7!+§);
                              §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + " this channel is full ");
                                       if(_loc5_ || param1)
                                       {
                                          addr149:
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().log(§§pop());
                                       addr152:
                                       addr153:
                                       return §§pop();
                                       §§push(null);
                                    }
                                 }
                              }
                              §§goto(addr149);
                           }
                        }
                        §§goto(addr152);
                     }
                  }
                  return _loc3_;
               }
            }
            §§goto(addr112);
         }
         addr28:
         return null;
      }
      
      public static function §8u§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §=J§
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§3d§ = null;
         var _loc8_:§;1§;
         if(!(_loc8_ = §9-§(param4,param2)))
         {
            if(!(_loc15_ && param1))
            {
               §§push(null);
               if(!_loc15_)
               {
                  return §§pop();
               }
               §§goto(addr53);
            }
         }
         else if(§7!7§[param2])
         {
            if(_loc14_)
            {
               addr53:
               return §§pop();
               §§push(null);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §[o§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§'0§);
            if(!(_loc15_ && param3))
            {
               _loc9_.addEventListener(Event.ID3,§2!8§);
               if(!_loc15_)
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@W§);
                  if(_loc14_ || param3)
                  {
                     addr107:
                     _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@W§);
                     if(_loc14_ || param2)
                     {
                        §[o§[param2] = _loc9_;
                     }
                  }
               }
               _loc11_ = new URLRequest(param1);
               _loc12_ = new SoundLoaderContext(param3,true);
               if(_loc14_ || §,!F§)
               {
                  _loc9_.load(_loc11_,_loc12_);
               }
               (_loc13_ = new §3d§(§3d§.§&5§)).§0!J§ = param2;
               if(_loc14_)
               {
                  dispatchEvent(_loc13_);
               }
               §§goto(addr169);
            }
            §§goto(addr107);
         }
         addr169:
         var _loc10_:§=J§ = _loc8_.§;v§(_loc9_,param2,param5,param6,param7);
         if(!(_loc15_ && §,!F§))
         {
            §7!7§[param2] = _loc10_;
         }
         return _loc10_;
      }
      
      private static function §'0§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3d§ = new §3d§(§3d§.§;! §);
         if(_loc4_)
         {
            _loc2_.§0!J§ = §-h§(Sound(param1.currentTarget));
            if(!(_loc3_ && _loc3_))
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private static function §-h§(param1:Sound) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §[o§)
         {
            _loc3_ = §[o§[_loc2_];
            if(_loc7_ || param1)
            {
               if(_loc3_ == param1)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private static function §2!8§(param1:Event) : void
      {
      }
      
      private static function §@W§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^U§ = new §^U§(§^U§.§^<§);
         §§push(§-h§(Sound(param1.currentTarget)));
         if(_loc5_ || §,!F§)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         _loc2_.§0!J§ = _loc3_;
         if(_loc5_ || param1)
         {
            _loc2_.error = param1.text;
            if(_loc5_)
            {
               _loc2_.errorID = param1.errorID;
               delete §[o§[_loc3_];
               if(§7!7§[_loc3_])
               {
                  addr86:
                  §=J§(§7!7§[_loc3_]).§3'§();
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr97);
               }
               dispatchEvent(_loc2_);
               addr97:
               return;
            }
         }
         §§goto(addr86);
      }
      
      private static function §@q§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            delete §7!7§[param1.data];
            if(_loc3_)
            {
               dispatchEvent(new §3d§(§3d§.SOUND_COMPLETE,param1.data));
            }
         }
      }
      
      private static function §!!K§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(param1);
         }
      }
      
      public static function §;v§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §=J§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§;1§;
         if(!(_loc6_ = §9-§(param2,param1)))
         {
            if(!(_loc9_ && param1))
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §[o§[param1]) == null)
         {
            if(!(_loc8_ = §]!>§.§8!@§(param1,false) as Class))
            {
               if(!(_loc9_ && param2))
               {
                  §§push(§7!+§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(_loc10_ || param2)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(!_loc9_)
                  {
                     return null;
                  }
               }
            }
            _loc7_ = new _loc8_();
            if(_loc10_)
            {
               §[o§[param1] = _loc7_;
            }
         }
         return _loc6_.§;v§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §@!9§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;1§ = §=!H§(param1);
         if(!_loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  addr39:
                  _loc2_.§?X§();
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr51);
               }
               dispatchEvent(new §3d§(§3d§.§2g§,"",param1));
            }
            addr51:
            return;
         }
         §§goto(addr39);
      }
      
      public static function §!!C§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         §§push(_loc3_);
         if(_loc5_)
         {
            §§push(0);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == §§pop())
               {
                  if(§@8§)
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(§7!+§);
                        §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                        if(!(_loc4_ && param2))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                     }
                     else
                     {
                        §§goto(addr156);
                     }
                  }
                  return;
               }
               §§push(Math.random() * _loc3_);
               if(!(_loc4_ && param1))
               {
                  §§push(int(§§pop()));
                  if(!(_loc4_ && param1))
                  {
                     addr96:
                     _loc3_ = §§pop();
                     if(_loc5_ || param2)
                     {
                        §§push(_loc3_);
                        if(_loc5_ || §,!F§)
                        {
                           §§goto(addr115);
                        }
                        addr115:
                        _loc3_ = int(§§pop() + 1);
                        if(_loc5_ || param2)
                        {
                           §§push(param1);
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                           }
                           param1 = §§pop();
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr156);
                     }
                     §,!F§.§;v§(param1,param2);
                     §§goto(addr156);
                  }
               }
               §§goto(addr115);
               addr156:
               return;
            }
            §§goto(addr115);
         }
         §§goto(addr96);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §3q§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3q§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §3q§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3q§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3q§.willTrigger(param1);
      }
   }
}
