package §8m§
{
   import §+!c§.§;!=§;
   import com.rovio.assets.§?q§;
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
   
   public class §@"M§
   {
      
      private static const §#"#§:int = 128;
      
      private static var §9g§:Boolean = true;
      
      private static var §9R§:int;
      
      private static var §4b§:Dictionary;
      
      private static var §#!c§:Dictionary;
      
      private static var § !-§:Dictionary;
      
      public static const §0+§:String = "Default_Channel";
      
      public static const §&c§:Boolean = false;
      
      private static var §+"=§:Boolean = true;
      
      private static var §8A§:EventDispatcher = new EventDispatcher();
       
      
      public function §@"M§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §+"=§ = param1;
      }
      
      public static function init() : void
      {
         §4b§ = new Dictionary();
         §#!c§ = new Dictionary();
         § !-§ = new Dictionary();
         §9R§ = 0;
         §set §(§0+§,4,1);
      }
      
      public static function §set §(param1:String, param2:int, param3:Number) : void
      {
         if(§^!5§(param1) != null)
         {
            return;
         }
         if(§9R§ >= §#"#§)
         {
            if(§&c§)
            {
               §;!=§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §#"#§ + " reserved");
            }
            return;
         }
         if(§9R§ + param2 >= §#"#§)
         {
            param2 = §#"#§ - §9R§;
         }
         var _loc4_:§;!`§;
         (_loc4_ = new §;!`§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§ k§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§0w§);
         if(!§9g§)
         {
            _loc4_.§#!z§();
         }
         §4b§[param1.toLowerCase()] = _loc4_;
         §9R§ += param2;
      }
      
      public static function §^!5§(param1:String) : §;!`§
      {
         return §4b§[param1.toLowerCase()];
      }
      
      public static function §'"Y§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §4b§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §'!v§(param1:Boolean) : void
      {
         var _loc2_:§;!`§ = null;
         if(param1 == §9g§)
         {
            return;
         }
         §9g§ = param1;
         for each(_loc2_ in §4b§)
         {
            if(§9g§)
            {
               _loc2_.§^!s§();
            }
            else
            {
               _loc2_.§#!z§();
            }
         }
      }
      
      public static function §3!s§() : void
      {
         var _loc1_:§;!`§ = null;
         for each(_loc1_ in §4b§)
         {
            _loc1_.§3!s§();
         }
         dispatchEvent(new §&!e§(§&!e§.§2!w§));
      }
      
      public static function §]I§() : Boolean
      {
         return §9g§;
      }
      
      private static function §+!-§(param1:String, param2:String) : §;!`§
      {
         if(!§+"=§)
         {
            return null;
         }
         var _loc3_:§;!`§ = §^!5§(param1);
         if(!_loc3_)
         {
            if(§&c§)
            {
               §;!=§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§5[§())
         {
            if(§&c§)
            {
               §;!=§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §!8§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §7!>§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§&!e§ = null;
         var _loc8_:§;!`§;
         if(!(_loc8_ = §+!-§(param4,param2)))
         {
            return null;
         }
         if(§ !-§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §#!c§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§`!U§);
            _loc9_.addEventListener(Event.ID3,§7!"§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§=T§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§=T§);
            §#!c§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §&!e§(§&!e§.§%!<§)).§+h§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§7!>§ = _loc8_.§3"C§(_loc9_,param2,param5,param6,param7);
         § !-§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §`!U§(param1:Event) : void
      {
         var _loc2_:§&!e§ = new §&!e§(§&!e§.§2-§);
         _loc2_.§+h§ = §8"[§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §8"[§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §#!c§)
         {
            _loc3_ = §#!c§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §7!"§(param1:Event) : void
      {
      }
      
      private static function §=T§(param1:ErrorEvent) : void
      {
         var _loc2_:§!2§ = new §!2§(§!2§.§,3§);
         var _loc3_:String = §8"[§(Sound(param1.currentTarget));
         _loc2_.§+h§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §#!c§[_loc3_];
         if(§ !-§[_loc3_])
         {
            §7!>§(§ !-§[_loc3_]).§7s§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function § k§(param1:DataEvent) : void
      {
         delete § !-§[param1.data];
         dispatchEvent(new §&!e§(§&!e§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §0w§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §3"C§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §7!>§
      {
         var _loc8_:Class = null;
         var _loc6_:§;!`§;
         if(!(_loc6_ = §+!-§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §#!c§[param1]) == null)
         {
            if(!(_loc8_ = §?q§.§ q§(param1,false) as Class))
            {
               §;!=§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §#!c§[param1] = _loc7_;
         }
         return _loc6_.§3"C§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §]!n§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§;!`§ = §^!5§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§3!s§();
            dispatchEvent(new §&!e§(§&!e§.§=A§,"",param1));
         }
      }
      
      public static function §"!0§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§&c§)
            {
               §;!=§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §@"M§.§3"C§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §8A§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §8A§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §8A§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §8A§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §8A§.willTrigger(param1);
      }
   }
}
