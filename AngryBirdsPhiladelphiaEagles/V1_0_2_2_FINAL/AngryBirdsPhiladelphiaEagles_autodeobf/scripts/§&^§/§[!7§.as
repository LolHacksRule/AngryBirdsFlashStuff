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
      
      private static var §;z§:EventDispatcher = new EventDispatcher();
       
      
      public function §[!7§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §-!#§ = param1;
      }
      
      public static function init() : void
      {
         §@!8§ = new Dictionary();
         §+z§ = new Dictionary();
         §6[§ = new Dictionary();
         §^K§ = 0;
         §'<§(§0!6§,4,1);
      }
      
      public static function §'<§(param1:String, param2:int, param3:Number) : void
      {
         if(§-K§(param1) != null)
         {
            return;
         }
         if(§^K§ >= §>!L§)
         {
            if(§6!I§)
            {
               § L§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §>!L§ + " reserved");
            }
            return;
         }
         if(§^K§ + param2 >= §>!L§)
         {
            param2 = §>!L§ - §^K§;
         }
         var _loc4_:§-!F§;
         (_loc4_ = new §-!F§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§1m§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§!b§);
         if(!§=A§)
         {
            _loc4_.§&g§();
         }
         §@!8§[param1.toLowerCase()] = _loc4_;
         §^K§ += param2;
      }
      
      public static function §-K§(param1:String) : §-!F§
      {
         return §@!8§[param1.toLowerCase()];
      }
      
      public static function §?!-§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §@!8§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §%R§(param1:Boolean) : void
      {
         var _loc2_:§-!F§ = null;
         if(param1 == §=A§)
         {
            return;
         }
         §=A§ = param1;
         for each(_loc2_ in §@!8§)
         {
            if(§=A§)
            {
               _loc2_.§=@§();
            }
            else
            {
               _loc2_.§&g§();
            }
         }
      }
      
      public static function §=0§() : void
      {
         var _loc1_:§-!F§ = null;
         for each(_loc1_ in §@!8§)
         {
            _loc1_.§=0§();
         }
         dispatchEvent(new §extends§(§extends§.§`!5§));
      }
      
      public static function §!"§() : Boolean
      {
         return §=A§;
      }
      
      private static function §!!1§(param1:String, param2:String) : §-!F§
      {
         if(!§-!#§)
         {
            return null;
         }
         var _loc3_:§-!F§ = §-K§(param1);
         if(!_loc3_)
         {
            if(§6!I§)
            {
               § L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§^P§())
         {
            if(§6!I§)
            {
               § L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function § !§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §&r§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§extends§ = null;
         var _loc8_:§-!F§;
         if(!(_loc8_ = §!!1§(param4,param2)))
         {
            return null;
         }
         if(§6[§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §+z§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§2O§);
            _loc9_.addEventListener(Event.ID3,§-!6§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§]U§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§]U§);
            §+z§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §extends§(§extends§.§1!H§)).§%z§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§&r§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §6[§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §2O§(param1:Event) : void
      {
         var _loc2_:§extends§ = new §extends§(§extends§.§<K§);
         _loc2_.§%z§ = §-N§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §-N§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §+z§)
         {
            _loc3_ = §+z§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §-!6§(param1:Event) : void
      {
      }
      
      private static function §]U§(param1:ErrorEvent) : void
      {
         var _loc2_:§#Y§ = new §#Y§(§#Y§.§3!=§);
         var _loc3_:String = §-N§(Sound(param1.currentTarget));
         _loc2_.§%z§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §+z§[_loc3_];
         if(§6[§[_loc3_])
         {
            §&r§(§6[§[_loc3_]).§-u§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §1m§(param1:DataEvent) : void
      {
         delete §6[§[param1.data];
         dispatchEvent(new §extends§(§extends§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §!b§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §&r§
      {
         var _loc8_:Class = null;
         var _loc6_:§-!F§;
         if(!(_loc6_ = §!!1§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §+z§[param1]) == null)
         {
            if(!(_loc8_ = §[!D§.§8!N§(param1,false) as Class))
            {
               § L§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §+z§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §9!K§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§-!F§ = §-K§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§=0§();
            dispatchEvent(new §extends§(§extends§.§9!3§,"",param1));
         }
      }
      
      public static function §,!5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§6!I§)
            {
               § L§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §[!7§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §;z§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §;z§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §;z§.removeEventListener(param1,param2,param3);
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
