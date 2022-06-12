package §>s§
{
   import §[x§.§%3§;
   import com.rovio.assets.§>"5§;
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
   
   public class §+m§
   {
      
      private static const §&!H§:int = 128;
      
      private static var §%"%§:Boolean = true;
      
      private static var §9"8§:int;
      
      private static var §1"%§:Dictionary;
      
      private static var §-j§:Dictionary;
      
      private static var §9!f§:Dictionary;
      
      public static const §`4§:String = "Default_Channel";
      
      public static const §0!&§:Boolean = false;
      
      private static var §>">§:Boolean = true;
      
      private static var §!7§:EventDispatcher = new EventDispatcher();
       
      
      public function §+m§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §>">§ = param1;
      }
      
      public static function init() : void
      {
         §1"%§ = new Dictionary();
         §-j§ = new Dictionary();
         §9!f§ = new Dictionary();
         §9"8§ = 0;
         §9!g§(§`4§,4,1);
      }
      
      public static function §9!g§(param1:String, param2:int, param3:Number) : void
      {
         if(§ do§(param1) != null)
         {
            return;
         }
         if(§9"8§ >= §&!H§)
         {
            if(§0!&§)
            {
               §%3§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §&!H§ + " reserved");
            }
            return;
         }
         if(§9"8§ + param2 >= §&!H§)
         {
            param2 = §&!H§ - §9"8§;
         }
         var _loc4_:§`,§;
         (_loc4_ = new §`,§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§ case§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§[!L§);
         if(!§%"%§)
         {
            _loc4_.§0x§();
         }
         §1"%§[param1.toLowerCase()] = _loc4_;
         §9"8§ += param2;
      }
      
      public static function § do§(param1:String) : §`,§
      {
         return §1"%§[param1.toLowerCase()];
      }
      
      public static function §&!x§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §1"%§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §["E§(param1:Boolean) : void
      {
         var _loc2_:§`,§ = null;
         if(param1 == §%"%§)
         {
            return;
         }
         §%"%§ = param1;
         for each(_loc2_ in §1"%§)
         {
            if(§%"%§)
            {
               _loc2_.§#!0§();
            }
            else
            {
               _loc2_.§0x§();
            }
         }
      }
      
      public static function §2!2§() : void
      {
         var _loc1_:§`,§ = null;
         for each(_loc1_ in §1"%§)
         {
            _loc1_.§2!2§();
         }
         dispatchEvent(new §34§(§34§.§>!a§));
      }
      
      public static function §%!@§() : Boolean
      {
         return §%"%§;
      }
      
      private static function §^!H§(param1:String, param2:String) : §`,§
      {
         if(!§>">§)
         {
            return null;
         }
         var _loc3_:§`,§ = § do§(param1);
         if(!_loc3_)
         {
            if(§0!&§)
            {
               §%3§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§4Z§())
         {
            if(§0!&§)
            {
               §%3§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §;p§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §9!u§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§34§ = null;
         var _loc8_:§`,§;
         if(!(_loc8_ = §^!H§(param4,param2)))
         {
            return null;
         }
         if(§9!f§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §-j§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§7!'§);
            _loc9_.addEventListener(Event.ID3,§0!6§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§9U§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9U§);
            §-j§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §34§(§34§.§;!$§)).§-S§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§9!u§ = _loc8_.§]!N§(_loc9_,param2,param5,param6,param7);
         §9!f§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §7!'§(param1:Event) : void
      {
         var _loc2_:§34§ = new §34§(§34§.§='§);
         _loc2_.§-S§ = §^!$§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §^!$§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §-j§)
         {
            _loc3_ = §-j§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §0!6§(param1:Event) : void
      {
      }
      
      private static function §9U§(param1:ErrorEvent) : void
      {
         var _loc2_:§1I§ = new §1I§(§1I§.§0"4§);
         var _loc3_:String = §^!$§(Sound(param1.currentTarget));
         _loc2_.§-S§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §-j§[_loc3_];
         if(§9!f§[_loc3_])
         {
            §9!u§(§9!f§[_loc3_]).§ Q§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function § case§(param1:DataEvent) : void
      {
         delete §9!f§[param1.data];
         dispatchEvent(new §34§(§34§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §[!L§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §]!N§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §9!u§
      {
         var _loc8_:Class = null;
         var _loc6_:§`,§;
         if(!(_loc6_ = §^!H§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §-j§[param1]) == null)
         {
            if(!(_loc8_ = §>"5§.§6s§(param1,false) as Class))
            {
               §%3§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §-j§[param1] = _loc7_;
         }
         return _loc6_.§]!N§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §5!P§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§`,§ = § do§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§2!2§();
            dispatchEvent(new §34§(§34§.§@u§,"",param1));
         }
      }
      
      public static function §'!k§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§0!&§)
            {
               §%3§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §+m§.§]!N§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §!7§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §!7§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §!7§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §!7§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §!7§.willTrigger(param1);
      }
   }
}
