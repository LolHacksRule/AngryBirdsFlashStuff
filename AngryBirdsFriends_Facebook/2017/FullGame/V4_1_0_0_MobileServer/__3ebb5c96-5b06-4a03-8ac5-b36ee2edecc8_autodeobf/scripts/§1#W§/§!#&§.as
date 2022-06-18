package §1#W§
{
   import §<"p§.§?!T§;
   import com.rovio.assets.§+$#§;
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
   
   public class §!#&§
   {
      
      private static const §7"d§:int = 128;
      
      private static var §0!U§:Boolean = true;
      
      private static var §2t§:int;
      
      private static var § !V§:Dictionary;
      
      private static var §%$3§:Dictionary;
      
      private static var §7W§:Dictionary;
      
      public static const §>#c§:String = "Default_Channel";
      
      public static const §6#h§:String = "UI_Channel";
      
      public static const §[#§:Boolean = false;
      
      private static var § !U§:Boolean = true;
      
      private static var §3#P§:EventDispatcher = new EventDispatcher();
       
      
      public function §!#&§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         § !U§ = param1;
      }
      
      public static function init() : void
      {
         § !V§ = new Dictionary();
         §%$3§ = new Dictionary();
         §7W§ = new Dictionary();
         §2t§ = 0;
         §!"k§(§>#c§,4,0.8);
         §!"k§(§6#h§,4,0.9);
      }
      
      public static function §!"k§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §3!c§(param1) != null)
         {
            return;
         }
         if(§2t§ >= §7"d§)
         {
            if(!§[#§)
            {
            }
            return;
         }
         if(§2t§ + param2 >= §7"d§)
         {
            param2 = §7"d§ - §2t§;
         }
         var _loc4_:§5I§;
         (_loc4_ = new §5I§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§=!'§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§2!B§);
         § !V§[param1.toLowerCase()] = _loc4_;
         §2t§ += param2;
      }
      
      public static function §3!c§(param1:String) : §5I§
      {
         if(!param1)
         {
            return null;
         }
         return § !V§[param1.toLowerCase()];
      }
      
      public static function §>Y§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § !V§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §0$4§(param1:Boolean) : void
      {
         if(param1 == §0!U§)
         {
            return;
         }
         §0!U§ = param1;
         §1!2§(§0!U§);
      }
      
      public static function §8V§(param1:Boolean) : void
      {
         var _loc2_:§5I§ = null;
         for each(_loc2_ in § !V§)
         {
            if(param1)
            {
               _loc2_.§+#i§();
            }
            else
            {
               _loc2_.§="J§();
            }
         }
      }
      
      protected static function §1!2§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §^!2§() : void
      {
         var _loc1_:§5I§ = null;
         for each(_loc1_ in § !V§)
         {
            _loc1_.§^!2§();
         }
         dispatchEvent(new §9#1§(§9#1§.§&"S§));
      }
      
      public static function §0!A§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§5I§ = null;
         for each(_loc2_ in § !V§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§;!p§) == -1)
            {
               _loc2_.§0!A§();
            }
         }
         dispatchEvent(new §9#1§(§9#1§.§&"S§));
      }
      
      public static function §+#M§() : void
      {
         var _loc1_:§5I§ = null;
         for each(_loc1_ in § !V§)
         {
            _loc1_.§+#M§();
         }
      }
      
      public static function get §`"a§() : Boolean
      {
         return §0!U§;
      }
      
      private static function §>#m§(param1:String, param2:String) : §5I§
      {
         if(!§ !U§)
         {
            return null;
         }
         var _loc3_:§5I§ = §3!c§(param1);
         if(!_loc3_)
         {
            if(§[#§)
            {
               §?!T§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§""g§())
         {
            if(§[#§)
            {
               §?!T§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §>"y§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §="D§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§9#1§ = null;
         var _loc8_:§5I§;
         if(!(_loc8_ = §>#m§(param4,param2)))
         {
            return null;
         }
         if(§7W§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §%$3§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§&!'§);
            _loc9_.addEventListener(Event.ID3,§2"i§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§1p§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§1p§);
            §%$3§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §9#1§(§9#1§.§7!-§)).§%5§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§="D§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §7W§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §&!'§(param1:Event) : void
      {
         var _loc2_:§9#1§ = new §9#1§(§9#1§.§6!x§);
         _loc2_.§%5§ = §'C§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §'C§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §%$3§)
         {
            _loc3_ = §%$3§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §2"i§(param1:Event) : void
      {
      }
      
      private static function §1p§(param1:ErrorEvent) : void
      {
         var _loc2_:§6"4§ = new §6"4§(§6"4§.§7$"§);
         var _loc3_:String = §'C§(Sound(param1.currentTarget));
         _loc2_.§%5§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §%$3§[_loc3_];
         if(§7W§[_loc3_])
         {
            §="D§(§7W§[_loc3_]).§[#S§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §=!'§(param1:DataEvent) : void
      {
         delete §7W§[param1.data];
         dispatchEvent(new §9#1§(§9#1§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §2!B§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §="D§
      {
         var _loc6_:§5I§;
         if(!(_loc6_ = §>#m§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §-#G§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §-#G§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §%$3§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §+$#§.§["`§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §?!T§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §%$3§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §4#J§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§5I§ = §3!c§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§^!2§();
            dispatchEvent(new §9#1§(§9#1§.§!!u§,"",param1));
         }
      }
      
      public static function §&#J§(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §2!A§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §="D§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) == 0)
         {
            if(§[#§)
            {
               §?!T§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return null;
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return §!#&§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §3#P§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3#P§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §3#P§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3#P§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3#P§.willTrigger(param1);
      }
      
      public static function §%$6§(param1:String, param2:Number) : void
      {
         var _loc3_:§5I§ = null;
         for each(_loc3_ in § !V§)
         {
            if(_loc3_.§;!p§ == param1)
            {
               _loc3_.§3!D§(param2);
               break;
            }
         }
      }
      
      public static function §5"X§(param1:String) : Number
      {
         var _loc2_:§5I§ = null;
         for each(_loc2_ in § !V§)
         {
            if(_loc2_.§;!p§ == param1)
            {
               return _loc2_.§%#3§;
            }
         }
         return 0;
      }
      
      public static function §`#]§(param1:String, param2:String) : Boolean
      {
         if(!param1 || !param2)
         {
            return false;
         }
         var _loc3_:§5I§ = § !V§[param2.toLowerCase()];
         if(_loc3_)
         {
            return _loc3_.§8]§(param1) != null;
         }
         return false;
      }
   }
}
