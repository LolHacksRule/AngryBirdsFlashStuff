package §#h§
{
   import §>K§.§9X§;
   import com.rovio.assets.§!Q§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class § !H§
   {
      
      private static const §@+§:int = 128;
      
      private static var §%! §:Boolean = true;
      
      private static var §3H§:int;
      
      private static var §4§:Dictionary;
      
      private static var §,V§:Dictionary;
      
      public static const §5b§:String = "Default_Channel";
      
      public static const §&!%§:Boolean = false;
      
      private static var §2!H§:Boolean = true;
      
      private static var §%!G§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@+§ = 128;
            §%! § = true;
            §5b§ = "Default_Channel";
            §&!%§ = false;
            if(!_loc1_)
            {
               §2!H§ = true;
               if(!(_loc1_ && _loc1_))
               {
                  addr53:
                  §%!G§ = new EventDispatcher();
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function § !H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || § !H§)
         {
            §2!H§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4§ = new Dictionary();
            if(!_loc1_)
            {
               §§goto(addr45);
            }
            §§goto(addr56);
         }
         addr45:
         §,V§ = new Dictionary();
         if(!(_loc1_ && _loc2_))
         {
            addr56:
            §3H§ = 0;
            if(_loc2_ || _loc1_)
            {
               §+z§(§5b§,4,1);
            }
         }
      }
      
      public static function §+z§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(§%A§(param1) != null)
         {
            return;
         }
         §§push(§3H§);
         if(_loc6_)
         {
            §§push(§@+§);
            if(_loc6_)
            {
               if(§§pop() >= §§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     if(§&!%§)
                     {
                        §§push(§9X§);
                        §§push("WARNING: SoundEngine:addNewChannelControl() ");
                        if(_loc6_ || param2)
                        {
                           §§push(§§pop() + param1);
                           if(_loc6_)
                           {
                              §§push(" failed because we already have more than ");
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc5_)
                                 {
                                    addr75:
                                    §§push(§§pop() + §@+§);
                                    if(_loc6_)
                                    {
                                       addr80:
                                       §§push(§§pop() + " reserved");
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 §§goto(addr82);
                              }
                              §§goto(addr80);
                           }
                        }
                        §§goto(addr75);
                     }
                  }
                  addr82:
                  return;
               }
               §§push(§3H§);
               if(_loc6_)
               {
                  §§push(param2);
                  if(_loc6_)
                  {
                     addr92:
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ && param1))
                     {
                        if(§§pop() >= §@+§)
                        {
                           §§push(§@+§);
                           if(_loc6_)
                           {
                              addr108:
                              param2 = §§pop() - §3H§;
                           }
                           §§goto(addr108);
                        }
                        var _loc4_:§>p§ = new §>p§(param1,param2,param3);
                        if(!_loc5_)
                        {
                           if(!§%! §)
                           {
                              if(_loc6_ || § !H§)
                              {
                                 _loc4_.§ !$§();
                                 if(_loc6_ || param2)
                                 {
                                    addr146:
                                    §4§[param1.toLowerCase()] = _loc4_;
                                    if(!_loc5_)
                                    {
                                       addr153:
                                       §3H§ += param2;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr153);
                           }
                        }
                        §§goto(addr146);
                     }
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr92);
         }
         §§goto(addr108);
      }
      
      public static function §%A§(param1:String) : §>p§
      {
         return §4§[param1.toLowerCase()];
      }
      
      public static function §0G§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>p§ = null;
         if(_loc5_)
         {
            if(param1 == §%! §)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
            }
            else
            {
               §%! § = param1;
            }
         }
         var _loc3_:int = 0;
         for each(_loc2_ in §4§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(§%! §)
               {
                  if(!(_loc6_ && § !H§))
                  {
                     _loc2_.§+h§();
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc2_.§ !$§();
               }
            }
         }
      }
      
      public static function §[!<§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§>p§ = null;
         var _loc3_:* = §4§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.§[!<§();
            }
         }
      }
      
      public static function §@U§() : Boolean
      {
         return §%! §;
      }
      
      private static function §+I§(param1:String, param2:String) : §>p§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!§2!H§)
            {
               if(_loc4_ || § !H§)
               {
                  return null;
               }
            }
         }
         var _loc3_:§>p§ = §%A§(param1);
         if(!_loc5_)
         {
            if(!_loc3_)
            {
               addr38:
               §§push(§&!%§);
               if(!(_loc5_ && param2))
               {
                  if(§§pop())
                  {
                     §§push(§9X§);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                     if(!_loc5_)
                     {
                        §§push(param2);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_ || param2)
                           {
                              §§push(§§pop() + " because this channel does not exist ");
                              if(_loc4_)
                              {
                                 addr76:
                                 §§push(§§pop() + param1);
                              }
                              §§pop().log(§§pop());
                              addr79:
                              §§push(null);
                              if(_loc4_ || param2)
                              {
                                 return §§pop();
                              }
                              §§goto(addr145);
                           }
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr79);
               }
               else
               {
                  addr94:
                  if(§§pop())
                  {
                     §§push(§9X§);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(param2);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              addr136:
                              §§push(§§pop() + " this channel is full ");
                              if(!(_loc5_ && § !H§))
                              {
                                 §§push(param1);
                              }
                              §§pop().log(§§pop());
                              if(_loc4_ || param1)
                              {
                                 addr144:
                                 addr145:
                                 return §§pop();
                                 §§push(null);
                              }
                              else
                              {
                                 §§goto(addr146);
                              }
                           }
                           §§goto(addr136);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr144);
               }
            }
            else
            {
               §§push(_loc3_.§]!%§());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr94);
                     §§push(§&!%§);
                  }
                  addr146:
                  return _loc3_;
               }
            }
            §§goto(addr94);
         }
         §§goto(addr38);
      }
      
      public static function §+!6§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §@b§
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc10_:URLRequest = null;
         var _loc11_:SoundLoaderContext = null;
         var _loc12_:§3i§ = null;
         var _loc8_:§>p§;
         if(!(_loc8_ = §+I§(param4,param2)))
         {
            if(_loc13_)
            {
               return null;
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §,V§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§9!9§);
            if(_loc13_)
            {
               _loc9_.addEventListener(Event.ID3,§]!#§);
               if(!(_loc14_ && param3))
               {
                  _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§%m§);
                  if(_loc13_)
                  {
                     addr85:
                     _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%m§);
                     if(_loc14_)
                     {
                     }
                     §§goto(addr96);
                  }
                  §,V§[param2] = _loc9_;
                  addr96:
                  _loc10_ = new URLRequest(param1);
                  _loc11_ = new SoundLoaderContext(param3,true);
                  if(!(_loc14_ && § !H§))
                  {
                     _loc9_.load(_loc10_,_loc11_);
                  }
                  (_loc12_ = new §3i§(§3i§.§6!8§)).§8!"§ = param2;
                  if(_loc13_ || param3)
                  {
                     dispatchEvent(_loc12_);
                  }
                  §§goto(addr147);
               }
            }
            §§goto(addr85);
         }
         addr147:
         return _loc8_.§ !%§(_loc9_,param2,param5,param6,param7);
      }
      
      private static function §9!9§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3i§ = new §3i§(§3i§.§[<§);
         if(!(_loc3_ && § !H§))
         {
            _loc2_.§8!"§ = §]^§(Sound(param1.currentTarget));
            if(_loc4_ || param1)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private static function §]^§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §,V§)
         {
            _loc3_ = §,V§[_loc2_];
            if(!(_loc7_ && § !H§))
            {
               if(_loc3_ == param1)
               {
                  if(_loc6_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private static function §]!#§(param1:Event) : void
      {
      }
      
      private static function §%m§(param1:ErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!_§ = new §!_§(§!_§.§%t§);
         if(_loc4_)
         {
            _loc2_.§8!"§ = §]^§(Sound(param1.currentTarget));
            if(_loc4_)
            {
               _loc2_.error = param1.text;
               if(_loc4_)
               {
                  _loc2_.errorID = param1.errorID;
                  if(_loc3_)
                  {
                  }
                  §§goto(addr70);
               }
               dispatchEvent(_loc2_);
            }
         }
         addr70:
      }
      
      public static function § !%§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §@b§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§>p§;
         if(!(_loc6_ = §+I§(param2,param1)))
         {
            if(_loc10_ || param3)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §,V§[param1]) == null)
         {
            if(!(_loc8_ = §!Q§.§^!H§(param1,false) as Class))
            {
               if(_loc10_ || param1)
               {
                  §§push(§9X§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(_loc10_)
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
            if(!_loc9_)
            {
               §,V§[param1] = _loc7_;
            }
         }
         return _loc6_.§ !%§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §]%§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>p§ = §%A§(param1);
         if(!(_loc4_ && § !H§))
         {
            if(_loc2_ != null)
            {
               if(_loc3_ || _loc3_)
               {
                  _loc2_.§[!<§();
               }
            }
         }
      }
      
      public static function §]p§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         §§push(_loc3_);
         if(!(_loc4_ && § !H§))
         {
            §§push(0);
            if(_loc5_)
            {
               if(§§pop() == §§pop())
               {
                  if(§&!%§)
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(§9X§);
                        §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                        if(_loc5_ || § !H§)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                     }
                  }
                  return;
               }
               §§push(Math.random() * _loc3_);
               if(_loc5_)
               {
                  §§push(int(§§pop()));
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr96);
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr100);
         }
         addr96:
         _loc3_ = §§pop();
         §§push(_loc3_);
         if(_loc5_)
         {
            addr100:
            §§push(int(§§pop() + 1));
         }
         _loc3_ = §§pop();
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
         }
         param1 = §§pop();
         § !H§.§ !%§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §%!G§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%!G§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §%!G§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%!G§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%!G§.willTrigger(param1);
      }
   }
}
