package §&!>§
{
   import §"I§.§=!U§;
   import com.rovio.assets.§&!2§;
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
   
   public class §3!k§
   {
      
      private static const §=!e§:int = 64;
      
      private static var §]b§:Boolean = true;
      
      private static var §-!]§:int;
      
      private static var §2B§:Dictionary;
      
      private static var §!!i§:Dictionary;
      
      private static var §&>§:Dictionary;
      
      public static const §9C§:String = "Default_Channel";
      
      public static const §'C§:Boolean = false;
      
      private static var §55§:Boolean = true;
      
      private static var §5!t§:EventDispatcher = new EventDispatcher();
       
      
      public function §3!k§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §55§ = param1;
      }
      
      public static function init() : void
      {
         §2B§ = new Dictionary();
         §!!i§ = new Dictionary();
         §&>§ = new Dictionary();
         §-!]§ = 0;
         §[y§(§9C§,4,1);
      }
      
      public static function §[y§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §]" §(param1) != null)
         {
            return;
         }
         if(§-!]§ >= §=!e§)
         {
            if(!§'C§)
            {
            }
            return;
         }
         if(§-!]§ + param2 >= §=!e§)
         {
            param2 = §=!e§ - §-!]§;
         }
         var _loc4_:§6`§;
         (_loc4_ = new §6`§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§ !I§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§8!a§);
         §2B§[param1.toLowerCase()] = _loc4_;
         §-!]§ += param2;
      }
      
      public static function §]" §(param1:String) : §6`§
      {
         if(!param1)
         {
            return null;
         }
         return §2B§[param1.toLowerCase()];
      }
      
      public static function §5!E§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §2B§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §"!-§(param1:Boolean) : void
      {
         if(param1 == §]b§)
         {
            return;
         }
         §]b§ = param1;
         §^!A§(§]b§);
      }
      
      public static function §-!1§(param1:Boolean) : void
      {
         var _loc2_:§6`§ = null;
         for each(_loc2_ in §2B§)
         {
            if(param1)
            {
               _loc2_.§9"-§();
            }
            else
            {
               _loc2_.§4$§();
            }
         }
      }
      
      protected static function §^!A§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §#!3§() : void
      {
         var _loc1_:§6`§ = null;
         for each(_loc1_ in §2B§)
         {
            _loc1_.§#!3§();
         }
         dispatchEvent(new §=!C§(§=!C§.§2"+§));
      }
      
      public static function get §]!`§() : Boolean
      {
         return §]b§;
      }
      
      private static function §^V§(param1:String, param2:String) : §6`§
      {
         if(!§55§)
         {
            return null;
         }
         var _loc3_:§6`§ = §]" §(param1);
         if(!_loc3_)
         {
            if(§'C§)
            {
               §=!U§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§?",§())
         {
            if(§'C§)
            {
               §=!U§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §`!V§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §3G§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§=!C§ = null;
         var _loc8_:§6`§;
         if(!(_loc8_ = §^V§(param4,param2)))
         {
            return null;
         }
         if(§&>§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §!!i§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§6!w§);
            _loc9_.addEventListener(Event.ID3,§`x§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§ !3§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§ !3§);
            §!!i§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §=!C§(§=!C§.§?!>§)).§#!M§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§3G§ = _loc8_.§]"4§(_loc9_,param2,param5,param6,param7);
         §&>§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §6!w§(param1:Event) : void
      {
         var _loc2_:§=!C§ = new §=!C§(§=!C§.§2,§);
         _loc2_.§#!M§ = §<"!§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §<"!§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §!!i§)
         {
            _loc3_ = §!!i§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §`x§(param1:Event) : void
      {
      }
      
      private static function § !3§(param1:ErrorEvent) : void
      {
         var _loc2_:§#1§ = new §#1§(§#1§.§'!L§);
         var _loc3_:String = §<"!§(Sound(param1.currentTarget));
         _loc2_.§#!M§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §!!i§[_loc3_];
         if(§&>§[_loc3_])
         {
            §3G§(§&>§[_loc3_]).§3!3§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function § !I§(param1:DataEvent) : void
      {
         delete §&>§[param1.data];
         dispatchEvent(new §=!C§(§=!C§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §8!a§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §]"4§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §3G§
      {
         var _loc6_:§6`§;
         if(!(_loc6_ = §^V§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §8!§(param1)))
         {
            return null;
         }
         return _loc6_.§]"4§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §8!§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §!!i§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §&!2§.§0!O§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §=!U§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §!!i§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §4[§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§6`§ = §]" §(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#!3§();
            dispatchEvent(new §=!C§(§=!C§.§8!o§,"",param1));
         }
      }
      
      public static function §;5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§'C§)
            {
               §=!U§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §3!k§.§]"4§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §5!t§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §5!t§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §5!t§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §5!t§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §5!t§.willTrigger(param1);
      }
   }
}
