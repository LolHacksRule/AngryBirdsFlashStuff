package §6!B§
{
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
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
   
   public class §>!E§
   {
      
      private static const §82§:int = 128;
      
      private static var §+2§:Boolean = true;
      
      private static var §4!&§:int;
      
      private static var §0r§:Dictionary;
      
      private static var §1!'§:Dictionary;
      
      private static var §0!r§:Dictionary;
      
      public static const §<M§:String = "Default_Channel";
      
      public static const §]d§:Boolean = false;
      
      private static var §,"%§:Boolean = true;
      
      private static var §@![§:EventDispatcher = new EventDispatcher();
       
      
      public function §>!E§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §,"%§ = param1;
      }
      
      public static function init() : void
      {
         §0r§ = new Dictionary();
         §1!'§ = new Dictionary();
         §0!r§ = new Dictionary();
         §4!&§ = 0;
         §0I§(§<M§,4,1);
      }
      
      public static function §0I§(param1:String, param2:int, param3:Number) : void
      {
         if(§"h§(param1) != null)
         {
            return;
         }
         if(§4!&§ >= §82§)
         {
            if(§]d§)
            {
               §+!k§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §82§ + " reserved");
            }
            return;
         }
         if(§4!&§ + param2 >= §82§)
         {
            param2 = §82§ - §4!&§;
         }
         var _loc4_:§7M§;
         (_loc4_ = new §7M§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§^!$§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§>!4§);
         if(!§+2§)
         {
            _loc4_.§'Y§();
         }
         §0r§[param1.toLowerCase()] = _loc4_;
         §4!&§ += param2;
      }
      
      public static function §"h§(param1:String) : §7M§
      {
         return §0r§[param1.toLowerCase()];
      }
      
      public static function §&!?§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §0r§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §7X§(param1:Boolean) : void
      {
         var _loc2_:§7M§ = null;
         if(param1 == §+2§)
         {
            return;
         }
         §+2§ = param1;
         for each(_loc2_ in §0r§)
         {
            if(§+2§)
            {
               _loc2_.§?t§();
            }
            else
            {
               _loc2_.§'Y§();
            }
         }
      }
      
      public static function §&!^§() : void
      {
         var _loc1_:§7M§ = null;
         for each(_loc1_ in §0r§)
         {
            _loc1_.§&!^§();
         }
         dispatchEvent(new §33§(§33§.§=!C§));
      }
      
      public static function §=J§() : Boolean
      {
         return §+2§;
      }
      
      private static function §!!9§(param1:String, param2:String) : §7M§
      {
         if(!§,"%§)
         {
            return null;
         }
         var _loc3_:§7M§ = §"h§(param1);
         if(!_loc3_)
         {
            if(§]d§)
            {
               §+!k§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§&!m§())
         {
            if(§]d§)
            {
               §+!k§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §;!0§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §,!p§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§33§ = null;
         var _loc8_:§7M§;
         if(!(_loc8_ = §!!9§(param4,param2)))
         {
            return null;
         }
         if(§0!r§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §1!'§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§4"-§);
            _loc9_.addEventListener(Event.ID3,§2N§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§>!7§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§>!7§);
            §1!'§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §33§(§33§.§>D§)).§"4§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§,!p§ = _loc8_.§7N§(_loc9_,param2,param5,param6,param7);
         §0!r§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §4"-§(param1:Event) : void
      {
         var _loc2_:§33§ = new §33§(§33§.§%!F§);
         _loc2_.§"4§ = §9v§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §9v§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §1!'§)
         {
            _loc3_ = §1!'§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §2N§(param1:Event) : void
      {
      }
      
      private static function §>!7§(param1:ErrorEvent) : void
      {
         var _loc2_:§`!p§ = new §`!p§(§`!p§.§5!Q§);
         var _loc3_:String = §9v§(Sound(param1.currentTarget));
         _loc2_.§"4§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §1!'§[_loc3_];
         if(§0!r§[_loc3_])
         {
            §,!p§(§0!r§[_loc3_]).§9!S§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §^!$§(param1:DataEvent) : void
      {
         delete §0!r§[param1.data];
         dispatchEvent(new §33§(§33§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §>!4§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §7N§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!p§
      {
         var _loc8_:Class = null;
         var _loc6_:§7M§;
         if(!(_loc6_ = §!!9§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §1!'§[param1]) == null)
         {
            if(!(_loc8_ = §8B§.§6"C§(param1,false) as Class))
            {
               §+!k§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §1!'§[param1] = _loc7_;
         }
         return _loc6_.§7N§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1!;§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7M§ = §"h§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§&!^§();
            dispatchEvent(new §33§(§33§.§<!B§,"",param1));
         }
      }
      
      public static function §@"8§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§]d§)
            {
               §+!k§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §>!E§.§7N§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §@![§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §@![§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §@![§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §@![§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §@![§.willTrigger(param1);
      }
   }
}
