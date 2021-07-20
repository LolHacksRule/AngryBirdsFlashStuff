package §^f§
{
   import §&!b§.§ c§;
   import §?v§.§&!h§;
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
   
   public class §<q§
   {
      
      private static const §5<§:int = 128;
      
      private static var §!!T§:Boolean = true;
      
      private static var §4!Y§:int;
      
      private static var §1>§:Dictionary;
      
      private static var §;!J§:Dictionary;
      
      private static var §[N§:Dictionary;
      
      public static const §]!#§:String = "Default_Channel";
      
      public static const §<;§:Boolean = false;
      
      private static var §?V§:Boolean = true;
      
      private static var §%y§:EventDispatcher = new EventDispatcher();
       
      
      public function §<q§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §?V§ = param1;
      }
      
      public static function init() : void
      {
         §1>§ = new Dictionary();
         §;!J§ = new Dictionary();
         §[N§ = new Dictionary();
         §4!Y§ = 0;
         §5i§(§]!#§,4,1);
      }
      
      public static function §5i§(param1:String, param2:int, param3:Number) : void
      {
         if(§9!e§(param1) != null)
         {
            return;
         }
         if(§4!Y§ >= §5<§)
         {
            if(§<;§)
            {
               § c§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §5<§ + " reserved");
            }
            return;
         }
         if(§4!Y§ + param2 >= §5<§)
         {
            param2 = §5<§ - §4!Y§;
         }
         var _loc4_:§"7§;
         (_loc4_ = new §"7§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§>!U§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§>,§);
         if(!§!!T§)
         {
            _loc4_.§?t§();
         }
         §1>§[param1.toLowerCase()] = _loc4_;
         §4!Y§ += param2;
      }
      
      public static function §9!e§(param1:String) : §"7§
      {
         return §1>§[param1.toLowerCase()];
      }
      
      public static function §"!O§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §1>§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §&p§(param1:Boolean) : void
      {
         var _loc2_:§"7§ = null;
         if(param1 == §!!T§)
         {
            return;
         }
         §!!T§ = param1;
         for each(_loc2_ in §1>§)
         {
            if(§!!T§)
            {
               _loc2_.§'0§();
            }
            else
            {
               _loc2_.§?t§();
            }
         }
      }
      
      public static function §2M§() : void
      {
         var _loc1_:§"7§ = null;
         for each(_loc1_ in §1>§)
         {
            _loc1_.§2M§();
         }
         dispatchEvent(new §,!b§(§,!b§.§`f§));
      }
      
      public static function §,!I§() : Boolean
      {
         return §!!T§;
      }
      
      private static function §9^§(param1:String, param2:String) : §"7§
      {
         if(!§?V§)
         {
            return null;
         }
         var _loc3_:§"7§ = §9!e§(param1);
         if(!_loc3_)
         {
            if(§<;§)
            {
               § c§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§%!6§())
         {
            if(§<;§)
            {
               § c§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §<c§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §,%§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§,!b§ = null;
         var _loc8_:§"7§;
         if(!(_loc8_ = §9^§(param4,param2)))
         {
            return null;
         }
         if(§[N§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §;!J§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§!!!§);
            _loc9_.addEventListener(Event.ID3,§5b§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§7v§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§7v§);
            §;!J§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §,!b§(§,!b§.§<I§)).§,!%§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§,%§ = _loc8_.§5!S§(_loc9_,param2,param5,param6,param7);
         §[N§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §!!!§(param1:Event) : void
      {
         var _loc2_:§,!b§ = new §,!b§(§,!b§.§#!g§);
         _loc2_.§,!%§ = §8%§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §8%§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §;!J§)
         {
            _loc3_ = §;!J§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §5b§(param1:Event) : void
      {
      }
      
      private static function §7v§(param1:ErrorEvent) : void
      {
         var _loc2_:§5!`§ = new §5!`§(§5!`§.§ h§);
         var _loc3_:String = §8%§(Sound(param1.currentTarget));
         _loc2_.§,!%§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §;!J§[_loc3_];
         if(§[N§[_loc3_])
         {
            §,%§(§[N§[_loc3_]).§`!4§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §>!U§(param1:DataEvent) : void
      {
         delete §[N§[param1.data];
         dispatchEvent(new §,!b§(§,!b§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §>,§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §5!S§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §,%§
      {
         var _loc8_:Class = null;
         var _loc6_:§"7§;
         if(!(_loc6_ = §9^§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §;!J§[param1]) == null)
         {
            if(!(_loc8_ = §&!h§.§#Q§(param1,false) as Class))
            {
               § c§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §;!J§[param1] = _loc7_;
         }
         return _loc6_.§5!S§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!=§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§"7§ = §9!e§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§2M§();
            dispatchEvent(new §,!b§(§,!b§.§3!X§,"",param1));
         }
      }
      
      public static function §7F§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§<;§)
            {
               § c§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §<q§.§5!S§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §%y§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%y§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §%y§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%y§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%y§.willTrigger(param1);
      }
   }
}
