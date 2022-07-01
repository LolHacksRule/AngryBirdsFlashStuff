package §6p§
{
   import §@!;§.§&F§;
   import com.rovio.assets.§8!q§;
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
   
   public class §'!B§
   {
      
      private static const §?I§:int = 128;
      
      private static var §%E§:Boolean = true;
      
      private static var §]k§:int;
      
      private static var §4h§:Dictionary;
      
      private static var §6!$§:Dictionary;
      
      private static var §4" §:Dictionary;
      
      public static const §<-§:String = "Default_Channel";
      
      public static const §+U§:Boolean = false;
      
      private static var §2!G§:Boolean = true;
      
      private static var §;!X§:EventDispatcher = new EventDispatcher();
       
      
      public function §'!B§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §2!G§ = param1;
      }
      
      public static function init() : void
      {
         §4h§ = new Dictionary();
         §6!$§ = new Dictionary();
         §4" § = new Dictionary();
         §]k§ = 0;
         §#3§(§<-§,4,1);
      }
      
      public static function §#3§(param1:String, param2:int, param3:Number) : void
      {
         if(§"!4§(param1) != null)
         {
            return;
         }
         if(§]k§ >= §?I§)
         {
            if(§+U§)
            {
               §&F§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §?I§ + " reserved");
            }
            return;
         }
         if(§]k§ + param2 >= §?I§)
         {
            param2 = §?I§ - §]k§;
         }
         var _loc4_:§,!w§;
         (_loc4_ = new §,!w§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§[K§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§"I§);
         if(!§%E§)
         {
            _loc4_.§+"3§();
         }
         §4h§[param1.toLowerCase()] = _loc4_;
         §]k§ += param2;
      }
      
      public static function §"!4§(param1:String) : §,!w§
      {
         return §4h§[param1.toLowerCase()];
      }
      
      public static function §;!V§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §4h§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §6t§(param1:Boolean) : void
      {
         var _loc2_:§,!w§ = null;
         if(param1 == §%E§)
         {
            return;
         }
         §%E§ = param1;
         for each(_loc2_ in §4h§)
         {
            if(§%E§)
            {
               _loc2_.§%§();
            }
            else
            {
               _loc2_.§+"3§();
            }
         }
      }
      
      public static function §>T§() : void
      {
         var _loc1_:§,!w§ = null;
         for each(_loc1_ in §4h§)
         {
            _loc1_.§>T§();
         }
         dispatchEvent(new §=U§(§=U§.§!!v§));
      }
      
      public static function §>!M§() : Boolean
      {
         return §%E§;
      }
      
      private static function §?G§(param1:String, param2:String) : §,!w§
      {
         if(!§2!G§)
         {
            return null;
         }
         var _loc3_:§,!w§ = §"!4§(param1);
         if(!_loc3_)
         {
            if(§+U§)
            {
               §&F§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§8!z§())
         {
            if(§+U§)
            {
               §&F§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §>!C§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §%!W§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§=U§ = null;
         var _loc8_:§,!w§;
         if(!(_loc8_ = §?G§(param4,param2)))
         {
            return null;
         }
         if(§4" §[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §6!$§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§0!I§);
            _loc9_.addEventListener(Event.ID3,§-!T§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@y§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@y§);
            §6!$§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §=U§(§=U§.§^!S§)).§5-§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§%!W§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §4" §[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §0!I§(param1:Event) : void
      {
         var _loc2_:§=U§ = new §=U§(§=U§.§+n§);
         _loc2_.§5-§ = § O§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function § O§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §6!$§)
         {
            _loc3_ = §6!$§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §-!T§(param1:Event) : void
      {
      }
      
      private static function §@y§(param1:ErrorEvent) : void
      {
         var _loc2_:§,m§ = new §,m§(§,m§.§@G§);
         var _loc3_:String = § O§(Sound(param1.currentTarget));
         _loc2_.§5-§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §6!$§[_loc3_];
         if(§4" §[_loc3_])
         {
            §%!W§(§4" §[_loc3_]).§=%§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §[K§(param1:DataEvent) : void
      {
         delete §4" §[param1.data];
         dispatchEvent(new §=U§(§=U§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §"I§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §%!W§
      {
         var _loc8_:Class = null;
         var _loc6_:§,!w§;
         if(!(_loc6_ = §?G§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §6!$§[param1]) == null)
         {
            if(!(_loc8_ = §8!q§.§2^§(param1,false) as Class))
            {
               §&F§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §6!$§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §&!r§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§,!w§ = §"!4§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>T§();
            dispatchEvent(new §=U§(§=U§.§-!y§,"",param1));
         }
      }
      
      public static function §6d§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§+U§)
            {
               §&F§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §'!B§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §;!X§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §;!X§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §;!X§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §;!X§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §;!X§.willTrigger(param1);
      }
   }
}
