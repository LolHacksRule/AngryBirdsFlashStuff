package §?!k§
{
   import §;X§.§ do§;
   import com.rovio.assets.§]!S§;
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
   
   public class §0!t§
   {
      
      private static const §1!@§:int = 128;
      
      private static var §`4§:Boolean = true;
      
      private static var §!!O§:int;
      
      private static var §@I§:Dictionary;
      
      private static var §9!$§:Dictionary;
      
      private static var §1N§:Dictionary;
      
      public static const get:String = "Default_Channel";
      
      public static const §!T§:Boolean = false;
      
      private static var §]!A§:Boolean = true;
      
      private static var §]!t§:EventDispatcher = new EventDispatcher();
       
      
      public function §0!t§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §]!A§ = param1;
      }
      
      public static function init() : void
      {
         §@I§ = new Dictionary();
         §9!$§ = new Dictionary();
         §1N§ = new Dictionary();
         §!!O§ = 0;
         §2Q§(get,4,1);
      }
      
      public static function §2Q§(param1:String, param2:int, param3:Number) : void
      {
         if(§ !a§(param1) != null)
         {
            return;
         }
         if(§!!O§ >= §1!@§)
         {
            if(§!T§)
            {
               § do§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §1!@§ + " reserved");
            }
            return;
         }
         if(§!!O§ + param2 >= §1!@§)
         {
            param2 = §1!@§ - §!!O§;
         }
         var _loc4_:§!#§;
         (_loc4_ = new §!#§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§9"#§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§]"6§);
         if(!§`4§)
         {
            _loc4_.§#v§();
         }
         §@I§[param1.toLowerCase()] = _loc4_;
         §!!O§ += param2;
      }
      
      public static function § !a§(param1:String) : §!#§
      {
         return §@I§[param1.toLowerCase()];
      }
      
      public static function §3"&§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §@I§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §?!s§(param1:Boolean) : void
      {
         var _loc2_:§!#§ = null;
         if(param1 == §`4§)
         {
            return;
         }
         §`4§ = param1;
         for each(_loc2_ in §@I§)
         {
            if(§`4§)
            {
               _loc2_.§`!E§();
            }
            else
            {
               _loc2_.§#v§();
            }
         }
      }
      
      public static function §,!S§() : void
      {
         var _loc1_:§!#§ = null;
         for each(_loc1_ in §@I§)
         {
            _loc1_.§,!S§();
         }
         dispatchEvent(new §^c§(§^c§.§&!§));
      }
      
      public static function § "1§() : Boolean
      {
         return §`4§;
      }
      
      private static function §'!n§(param1:String, param2:String) : §!#§
      {
         if(!§]!A§)
         {
            return null;
         }
         var _loc3_:§!#§ = § !a§(param1);
         if(!_loc3_)
         {
            if(§!T§)
            {
               § do§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§-4§())
         {
            if(§!T§)
            {
               § do§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §,!I§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §&p§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^c§ = null;
         var _loc8_:§!#§;
         if(!(_loc8_ = §'!n§(param4,param2)))
         {
            return null;
         }
         if(§1N§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §9!$§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§%!4§);
            _loc9_.addEventListener(Event.ID3,§%"4§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@v§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@v§);
            §9!$§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §^c§(§^c§.§%!=§)).§9?§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§&p§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §1N§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §%!4§(param1:Event) : void
      {
         var _loc2_:§^c§ = new §^c§(§^c§.§""'§);
         _loc2_.§9?§ = §7D§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §7D§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §9!$§)
         {
            _loc3_ = §9!$§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §%"4§(param1:Event) : void
      {
      }
      
      private static function §@v§(param1:ErrorEvent) : void
      {
         var _loc2_:§@!i§ = new §@!i§(§@!i§.§1"%§);
         var _loc3_:String = §7D§(Sound(param1.currentTarget));
         _loc2_.§9?§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §9!$§[_loc3_];
         if(§1N§[_loc3_])
         {
            §&p§(§1N§[_loc3_]).§"!<§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §9"#§(param1:DataEvent) : void
      {
         delete §1N§[param1.data];
         dispatchEvent(new §^c§(§^c§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §]"6§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §&p§
      {
         var _loc8_:Class = null;
         var _loc6_:§!#§;
         if(!(_loc6_ = §'!n§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §9!$§[param1]) == null)
         {
            if(!(_loc8_ = §]!S§.§?! §(param1,false) as Class))
            {
               § do§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §9!$§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §?!u§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§!#§ = § !a§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§,!S§();
            dispatchEvent(new §^c§(§^c§.§<B§,"",param1));
         }
      }
      
      public static function §>7§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§!T§)
            {
               § do§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §0!t§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §]!t§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §]!t§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §]!t§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §]!t§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §]!t§.willTrigger(param1);
      }
   }
}
