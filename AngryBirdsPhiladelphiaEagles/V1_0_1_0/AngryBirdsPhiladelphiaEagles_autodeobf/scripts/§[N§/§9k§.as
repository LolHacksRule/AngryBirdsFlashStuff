package §[N§
{
   import §-!5§.§5s§;
   import com.rovio.assets.§4D§;
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
   
   public class §9k§
   {
      
      private static const §<!B§:int = 128;
      
      private static var §-y§:Boolean = true;
      
      private static var §+l§:int;
      
      private static var §!z§:Dictionary;
      
      private static var §0!E§:Dictionary;
      
      private static var §10§:Dictionary;
      
      public static const §>S§:String = "Default_Channel";
      
      public static const §8!O§:Boolean = false;
      
      private static var §%o§:Boolean = true;
      
      private static var §?!,§:EventDispatcher = new EventDispatcher();
       
      
      public function §9k§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §%o§ = param1;
      }
      
      public static function init() : void
      {
         §!z§ = new Dictionary();
         §0!E§ = new Dictionary();
         §10§ = new Dictionary();
         §+l§ = 0;
         §?!F§(§>S§,4,1);
      }
      
      public static function §?!F§(param1:String, param2:int, param3:Number) : void
      {
         if(§"t§(param1) != null)
         {
            return;
         }
         if(§+l§ >= §<!B§)
         {
            if(§8!O§)
            {
               §5s§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §<!B§ + " reserved");
            }
            return;
         }
         if(§+l§ + param2 >= §<!B§)
         {
            param2 = §<!B§ - §+l§;
         }
         var _loc4_:§8!@§;
         (_loc4_ = new §8!@§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§[U§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§ C§);
         if(!§-y§)
         {
            _loc4_.§;V§();
         }
         §!z§[param1.toLowerCase()] = _loc4_;
         §+l§ += param2;
      }
      
      public static function §"t§(param1:String) : §8!@§
      {
         return §!z§[param1.toLowerCase()];
      }
      
      public static function §,1§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §!z§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §<!I§(param1:Boolean) : void
      {
         var _loc2_:§8!@§ = null;
         if(param1 == §-y§)
         {
            return;
         }
         §-y§ = param1;
         for each(_loc2_ in §!z§)
         {
            if(§-y§)
            {
               _loc2_.§ null§();
            }
            else
            {
               _loc2_.§;V§();
            }
         }
      }
      
      public static function §return§() : void
      {
         var _loc1_:§8!@§ = null;
         for each(_loc1_ in §!z§)
         {
            _loc1_.§return§();
         }
         dispatchEvent(new §0Z§(§0Z§.§-3§));
      }
      
      public static function §^X§() : Boolean
      {
         return §-y§;
      }
      
      private static function §;!I§(param1:String, param2:String) : §8!@§
      {
         if(!§%o§)
         {
            return null;
         }
         var _loc3_:§8!@§ = §"t§(param1);
         if(!_loc3_)
         {
            if(§8!O§)
            {
               §5s§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§@m§())
         {
            if(§8!O§)
            {
               §5s§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §"_§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §>f§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§0Z§ = null;
         var _loc8_:§8!@§;
         if(!(_loc8_ = §;!I§(param4,param2)))
         {
            return null;
         }
         if(§10§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §0!E§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§3!8§);
            _loc9_.addEventListener(Event.ID3,§<!L§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§class§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§class§);
            §0!E§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §0Z§(§0Z§.§7!8§)).§@!$§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§>f§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §10§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §3!8§(param1:Event) : void
      {
         var _loc2_:§0Z§ = new §0Z§(§0Z§.§?r§);
         _loc2_.§@!$§ = § !8§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function § !8§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §0!E§)
         {
            _loc3_ = §0!E§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §<!L§(param1:Event) : void
      {
      }
      
      private static function §class§(param1:ErrorEvent) : void
      {
         var _loc2_:§77§ = new §77§(§77§.§1!=§);
         var _loc3_:String = § !8§(Sound(param1.currentTarget));
         _loc2_.§@!$§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §0!E§[_loc3_];
         if(§10§[_loc3_])
         {
            §>f§(§10§[_loc3_]).§2!8§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §[U§(param1:DataEvent) : void
      {
         delete §10§[param1.data];
         dispatchEvent(new §0Z§(§0Z§.SOUND_COMPLETE,param1.data));
      }
      
      private static function § C§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §>f§
      {
         var _loc8_:Class = null;
         var _loc6_:§8!@§;
         if(!(_loc6_ = §;!I§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §0!E§[param1]) == null)
         {
            if(!(_loc8_ = §4D§.§,!O§(param1,false) as Class))
            {
               §5s§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §0!E§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §3n§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§8!@§ = §"t§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§return§();
            dispatchEvent(new §0Z§(§0Z§.§?!>§,"",param1));
         }
      }
      
      public static function §>Q§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§8!O§)
            {
               §5s§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §9k§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §?!,§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §?!,§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §?!,§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §?!,§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §?!,§.willTrigger(param1);
      }
   }
}
