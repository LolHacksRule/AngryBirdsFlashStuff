package §6`§
{
   import §4u§.§<!L§;
   import com.rovio.assets.§%"4§;
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
   
   public class §?!7§
   {
      
      private static const §^g§:int = 128;
      
      private static var §!!%§:Boolean = true;
      
      private static var §1!8§:int;
      
      private static var §]!z§:Dictionary;
      
      private static var §2!u§:Dictionary;
      
      private static var §5!U§:Dictionary;
      
      public static const §8!j§:String = "Default_Channel";
      
      public static const §>!#§:Boolean = false;
      
      private static var §8A§:Boolean = true;
      
      private static var §%A§:EventDispatcher = new EventDispatcher();
       
      
      public function §?!7§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §8A§ = param1;
      }
      
      public static function init() : void
      {
         §]!z§ = new Dictionary();
         §2!u§ = new Dictionary();
         §5!U§ = new Dictionary();
         §1!8§ = 0;
         §!!l§(§8!j§,4,1);
      }
      
      public static function §!!l§(param1:String, param2:int, param3:Number) : void
      {
         if(get(param1) != null)
         {
            return;
         }
         if(§1!8§ >= §^g§)
         {
            if(§>!#§)
            {
               §<!L§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §^g§ + " reserved");
            }
            return;
         }
         if(§1!8§ + param2 >= §^g§)
         {
            param2 = §^g§ - §1!8§;
         }
         var _loc4_:§!!Y§;
         (_loc4_ = new §!!Y§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§?!0§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§!!j§);
         if(!§!!%§)
         {
            _loc4_.§5"+§();
         }
         §]!z§[param1.toLowerCase()] = _loc4_;
         §1!8§ += param2;
      }
      
      public static function get(param1:String) : §!!Y§
      {
         return §]!z§[param1.toLowerCase()];
      }
      
      public static function §+!4§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §]!z§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §["2§(param1:Boolean) : void
      {
         var _loc2_:§!!Y§ = null;
         if(param1 == §!!%§)
         {
            return;
         }
         §!!%§ = param1;
         for each(_loc2_ in §]!z§)
         {
            if(§!!%§)
            {
               _loc2_.§,!N§();
            }
            else
            {
               _loc2_.§5"+§();
            }
         }
      }
      
      public static function §@"!§() : void
      {
         var _loc1_:§!!Y§ = null;
         for each(_loc1_ in §]!z§)
         {
            _loc1_.§@"!§();
         }
         dispatchEvent(new §^!K§(§^!K§.§0_§));
      }
      
      public static function §3"#§() : Boolean
      {
         return §!!%§;
      }
      
      private static function §3!D§(param1:String, param2:String) : §!!Y§
      {
         if(!§8A§)
         {
            return null;
         }
         var _loc3_:§!!Y§ = get(param1);
         if(!_loc3_)
         {
            if(§>!#§)
            {
               §<!L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§^?§())
         {
            if(§>!#§)
            {
               §<!L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §&!+§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4!m§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^!K§ = null;
         var _loc8_:§!!Y§;
         if(!(_loc8_ = §3!D§(param4,param2)))
         {
            return null;
         }
         if(§5!U§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §2!u§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§0l§);
            _loc9_.addEventListener(Event.ID3,§+!J§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§2E§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§2E§);
            §2!u§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §^!K§(§^!K§.§0!L§)).§+B§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§4!m§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §5!U§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §0l§(param1:Event) : void
      {
         var _loc2_:§^!K§ = new §^!K§(§^!K§.§<i§);
         _loc2_.§+B§ = §9Y§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §9Y§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §2!u§)
         {
            _loc3_ = §2!u§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §+!J§(param1:Event) : void
      {
      }
      
      private static function §2E§(param1:ErrorEvent) : void
      {
         var _loc2_:§@!m§ = new §@!m§(§@!m§.§+!9§);
         var _loc3_:String = §9Y§(Sound(param1.currentTarget));
         _loc2_.§+B§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §2!u§[_loc3_];
         if(§5!U§[_loc3_])
         {
            §4!m§(§5!U§[_loc3_]).§5!Q§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §?!0§(param1:DataEvent) : void
      {
         delete §5!U§[param1.data];
         dispatchEvent(new §^!K§(§^!K§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §!!j§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4!m§
      {
         var _loc8_:Class = null;
         var _loc6_:§!!Y§;
         if(!(_loc6_ = §3!D§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §2!u§[param1]) == null)
         {
            if(!(_loc8_ = §%"4§.§>!v§(param1,false) as Class))
            {
               §<!L§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §2!u§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §[N§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§!!Y§ = get(param1);
         if(_loc2_ != null)
         {
            _loc2_.§@"!§();
            dispatchEvent(new §^!K§(§^!K§.§>"0§,"",param1));
         }
      }
      
      public static function §4r§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§>!#§)
            {
               §<!L§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §?!7§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §%A§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%A§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §%A§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%A§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%A§.willTrigger(param1);
      }
   }
}
