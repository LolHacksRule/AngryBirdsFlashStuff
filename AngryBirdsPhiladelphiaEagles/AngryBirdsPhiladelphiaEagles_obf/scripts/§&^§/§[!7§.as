package §&^§
{
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
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
   
   public class §[!7§
   {
      
      private static const §>!L§:int = 128;
      
      private static var §=A§:Boolean = true;
      
      private static var §^K§:int;
      
      private static var §@!8§:Dictionary;
      
      private static var §+z§:Dictionary;
      
      private static var §6[§:Dictionary;
      
      public static const §0!6§:String = "Default_Channel";
      
      public static const §6!I§:Boolean = false;
      
      private static var §-!#§:Boolean = true;
      
      private static var §;z§:EventDispatcher;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §>!L§ = 128;
            do
            {
               §=A§ = true;
               §0!6§ = "Default_Channel";
               §6!I§ = false;
            }
            while(!_loc2_);
            
            §-!#§ = true;
            do
            {
               §;z§ = new EventDispatcher();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §[!7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §-!#§ = param1;
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §[!7§)
         {
            §@!8§ = new Dictionary();
         }
         while(true)
         {
            §+z§ = new Dictionary();
            while(_loc1_ || _loc2_)
            {
               §6[§ = new Dictionary();
               while(_loc1_)
               {
                  §^K§ = 0;
                  do
                  {
                     §'<§(§0!6§,4,1);
                  }
                  while(!_loc1_);
                  
                  if(_loc1_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public static function §'<§(param1:String, param2:int, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(§-K§(param1) == null)
         {
            loop0:
            while(true)
            {
               §§push(§^K§);
               loop1:
               while(true)
               {
                  §§push(§>!L§);
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        if(_loc5_)
                        {
                           if(§6!I§)
                           {
                              §§push(§ L§);
                              §§push("WARNING: SoundEngine:addNewChannelControl() ");
                              if(_loc5_)
                              {
                                 §§push(§§pop() + param1);
                                 if(_loc5_)
                                 {
                                    §§push(" failed because we already have more than ");
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ || param2)
                                       {
                                          addr114:
                                          §§push(§§pop() + §>!L§);
                                          if(_loc5_)
                                          {
                                             addr118:
                                             §§push(§§pop() + " reserved");
                                          }
                                          §§pop().log(§§pop());
                                          break;
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr118);
                           }
                           break;
                        }
                     }
                     else
                     {
                        §§push(§^K§);
                        if(_loc5_ || param3)
                        {
                           §§push(param2);
                           if(_loc5_ || param2)
                           {
                              if(_loc6_ && param2)
                              {
                                 continue;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc5_ || param3)
                              {
                                 if(§§pop() >= §>!L§)
                                 {
                                    if(_loc5_ || §[!7§)
                                    {
                                       §§push(§>!L§);
                                       if(_loc5_)
                                       {
                                          addr64:
                                          §§push(int(§§pop() - §^K§));
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       param2 = §§pop();
                                    }
                                    if(false)
                                    {
                                       break;
                                    }
                                    break loop0;
                                 }
                                 break loop0;
                              }
                           }
                        }
                        §§goto(addr64);
                     }
                  }
                  return;
               }
            }
            var _loc4_:§-!F§;
            (_loc4_ = new §-!F§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§1m§);
            if(_loc5_ || param2)
            {
               _loc4_.addEventListener(ErrorEvent.ERROR,§!b§);
            }
            loop3:
            while(!§=A§)
            {
               if(_loc6_ && param1)
               {
                  while(true)
                  {
                     break loop3;
                  }
               }
               else
               {
                  addr205:
                  addr168:
               }
               continue;
               if(_loc5_ || param1)
               {
                  _loc4_.§&g§();
                  §§goto(addr205);
               }
               continue;
               return;
            }
            while(true)
            {
               §@!8§[param1.toLowerCase()] = _loc4_;
               do
               {
                  §^K§ += param2;
               }
               while(_loc6_ && §[!7§);
               
               if(!_loc5_)
               {
                  §§goto(addr205);
               }
               §§goto(addr168);
            }
         }
      }
      
      public static function §-K§(param1:String) : §-!F§
      {
         return §@!8§[param1.toLowerCase()];
      }
      
      public static function §?!-§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §@!8§)
         {
            if(!_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public static function §%R§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§-!F§ = null;
         if(!(_loc5_ && param1))
         {
            if(param1 == §=A§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
            §=A§ = param1;
         }
         for each(_loc2_ in §@!8§)
         {
            if(_loc6_)
            {
               if(§=A§)
               {
                  if(_loc6_)
                  {
                     _loc2_.§=@§();
                     if(_loc6_ || §[!7§)
                     {
                     }
                  }
               }
               else
               {
                  _loc2_.§&g§();
               }
            }
         }
      }
      
      public static function §=0§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-!F§ = null;
         for each(_loc1_ in §@!8§)
         {
            if(_loc5_)
            {
               _loc1_.§=0§();
            }
         }
         if(_loc5_ || §[!7§)
         {
            dispatchEvent(new §extends§(§extends§.§`!5§));
         }
      }
      
      public static function §!"§() : Boolean
      {
         return §=A§;
      }
      
      private static function §!!1§(param1:String, param2:String) : §-!F§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!§-!#§)
            {
               if(!_loc5_)
               {
                  §§goto(addr22);
               }
            }
            var _loc3_:§-!F§ = §-K§(param1);
            if(!_loc5_)
            {
               if(!_loc3_)
               {
                  addr131:
                  if(§6!I§)
                  {
                     §§push(§ L§);
                     §§push("WARNING: SoundEngine->PlaySound() can not play new sound request ");
                     if(!_loc5_)
                     {
                        §§push(param2);
                        if(_loc4_ || §[!7§)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                              §§push(§§pop() + " because this channel does not exist ");
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr153);
                           }
                           §§push(param1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                  }
                  §§goto(addr153);
               }
               else
               {
                  §§push(_loc3_.§^P§());
                  if(!_loc5_)
                  {
                     if(_loc4_ || param2)
                     {
                        if(§§pop())
                        {
                           return _loc3_;
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           addr76:
                           if(§6!I§)
                           {
                              addr77:
                              §§push(§ L§);
                              §§push("WARNING: SoundEngine->PlaySound() can not play new sound request  ");
                              if(_loc4_)
                              {
                                 §§push(param2);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(§§pop() + " this channel is full ");
                                       if(!_loc4_)
                                       {
                                       }
                                       addr103:
                                       §§pop().log(§§pop());
                                       §§push(null);
                                       if(!_loc5_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr153);
                                    }
                                    §§push(param1);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr77);
                     }
                     else
                     {
                        §§goto(addr131);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr76);
               }
               return null;
            }
            §§goto(addr76);
         }
         addr22:
         return null;
      }
      
      public static function § !§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §&r§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§extends§ = null;
         var _loc8_:§-!F§;
         if(!(_loc8_ = §!!1§(param4,param2)))
         {
            if(!(_loc14_ && param3))
            {
               §§push(null);
               if(_loc15_)
               {
                  return §§pop();
               }
            }
            else
            {
               addr53:
               return null;
            }
            return §§pop();
         }
         if(§6[§[param2])
         {
            if(_loc15_)
            {
               §§goto(addr53);
            }
         }
         var _loc9_:Sound;
         if((_loc9_ = §+z§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§2O§);
            if(_loc15_)
            {
               _loc9_.addEventListener(Event.ID3,§-!6§);
            }
            loop0:
            while(true)
            {
               _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§]U§);
               loop1:
               while(true)
               {
                  addr101:
                  while(true)
                  {
                     _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§]U§);
                     while(_loc15_)
                     {
                        §+z§[param2] = _loc9_;
                        if(!_loc14_)
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         var _loc10_:§&r§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         if(!(_loc14_ && param1))
         {
            §6[§[param2] = _loc10_;
         }
         return _loc10_;
         §§goto(addr53);
      }
      
      private static function §2O§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§extends§ = new §extends§(§extends§.§<K§);
         if(!(_loc3_ && _loc2_))
         {
            _loc2_.§%z§ = §-N§(Sound(param1.currentTarget));
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(_loc3_ && §[!7§);
         
      }
      
      private static function §-N§(param1:Sound) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §+z§)
         {
            _loc3_ = §+z§[_loc2_];
            if(_loc6_)
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
      
      private static function §-!6§(param1:Event) : void
      {
      }
      
      private static function §]U§(param1:ErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§#Y§ = new §#Y§(§#Y§.§3!=§);
         §§push(§-N§(Sound(param1.currentTarget)));
         if(_loc4_ || param1)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            _loc2_.§%z§ = _loc3_;
         }
         _loc2_.error = param1.text;
         while(true)
         {
            _loc2_.errorID = param1.errorID;
            while(true)
            {
               delete §+z§[_loc3_];
               if(!(_loc4_ || param1))
               {
                  break;
               }
               if(§6[§[_loc3_])
               {
                  §&r§(§6[§[_loc3_]).§-u§();
               }
               dispatchEvent(_loc2_);
               if(!(_loc5_ && §[!7§))
               {
                  return;
               }
            }
         }
      }
      
      private static function §1m§(param1:DataEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            delete §6[§[param1.data];
            do
            {
               dispatchEvent(new §extends§(§extends§.SOUND_COMPLETE,param1.data));
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      private static function §!b§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            dispatchEvent(param1);
         }
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §&r§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc8_:Class = null;
         var _loc6_:§-!F§;
         if(!(_loc6_ = §!!1§(param2,param1)))
         {
            if(_loc10_ || param1)
            {
               return null;
            }
         }
         var _loc7_:Sound;
         if((_loc7_ = §+z§[param1]) == null)
         {
            if(!(_loc8_ = §[!D§.§8!N§(param1,false) as Class))
            {
               if(_loc10_)
               {
                  §§push(§ L§);
                  §§push("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: ");
                  if(!(_loc9_ && §[!7§))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(!_loc10_)
                  {
                     §§goto(addr93);
                  }
               }
               return null;
            }
            addr93:
            _loc7_ = new _loc8_();
            if(!(_loc9_ && param1))
            {
               §+z§[param1] = _loc7_;
            }
            §§goto(addr108);
         }
         addr108:
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §9!K§(param1:String = "Default_Channel") : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-!F§ = §-K§(param1);
         if(!_loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || param1)
               {
                  _loc2_.§=0§();
               }
               do
               {
                  dispatchEvent(new §extends§(§extends§.§9!3§,"",param1));
               }
               while(!_loc4_);
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      public static function §,!5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = int(int(param1.charAt(param1.length - 1)));
         §§push(_loc3_);
         loop0:
         while(true)
         {
            §§push(0);
            addr143:
            while(true)
            {
               if(§§pop() != §§pop())
               {
                  §§push(Math.random() * _loc3_);
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc5_ || _loc3_)
                           {
                              continue loop0;
                           }
                           addr104:
                           if(!(_loc5_ || param1))
                           {
                              continue loop3;
                           }
                           _loc3_ = §§pop();
                           while(_loc5_ || param2)
                           {
                              §§push(param1);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop().slice(0,param1.length - 1) + _loc3_);
                              }
                              param1 = §§pop();
                              §[!7§.playSound(param1,param2);
                              if(!_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        continue loop0;
                     }
                     addr95:
                     §§push(§§pop() + §§pop());
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr104);
                     §§push(int(§§pop()));
                  }
               }
               if(§6!I§)
               {
                  §§push(§ L§);
                  §§push("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: ");
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
               }
               return;
            }
         }
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §;z§.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §;z§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §;z§.removeEventListener(param1,param2,param3);
         }
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §;z§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §;z§.willTrigger(param1);
      }
   }
}
