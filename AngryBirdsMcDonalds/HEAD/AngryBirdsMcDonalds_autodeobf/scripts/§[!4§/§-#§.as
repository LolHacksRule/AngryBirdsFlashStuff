package §[!4§
{
   import §'+§.§1u§;
   import §;'§.§6d§;
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
   
   public class §-#§
   {
      
      private static const §9!E§:int = 128;
      
      private static var §#!-§:Boolean = true;
      
      private static var §#!Z§:int;
      
      private static var §<!#§:Dictionary;
      
      private static var §"I§:Dictionary;
      
      private static var §6!Y§:Dictionary;
      
      public static const §@!S§:String = "Default_Channel";
      
      public static const §case §:Boolean = false;
      
      private static var §'"§:Boolean = true;
      
      private static var §5!J§:EventDispatcher = new EventDispatcher();
       
      
      public function §-#§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §'"§ = param1;
      }
      
      public static function init() : void
      {
         §<!#§ = new Dictionary();
         §"I§ = new Dictionary();
         §6!Y§ = new Dictionary();
         §#!Z§ = 0;
         §28§(§@!S§,4,1);
      }
      
      public static function §28§(param1:String, param2:int, param3:Number) : void
      {
         if(§7]§(param1) != null)
         {
            return;
         }
         if(§#!Z§ >= §9!E§)
         {
            if(§case §)
            {
               §1u§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §9!E§ + " reserved");
            }
            return;
         }
         if(§#!Z§ + param2 >= §9!E§)
         {
            param2 = §9!E§ - §#!Z§;
         }
         var _loc4_:§%!,§;
         (_loc4_ = new §%!,§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§<!0§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§;V§);
         if(!§#!-§)
         {
            _loc4_.§^[§();
         }
         §<!#§[param1.toLowerCase()] = _loc4_;
         §#!Z§ += param2;
      }
      
      public static function §7]§(param1:String) : §%!,§
      {
         return §<!#§[param1.toLowerCase()];
      }
      
      public static function §2g§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §<!#§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §<'§(param1:Boolean) : void
      {
         var _loc2_:§%!,§ = null;
         if(param1 == §#!-§)
         {
            return;
         }
         §#!-§ = param1;
         for each(_loc2_ in §<!#§)
         {
            if(§#!-§)
            {
               _loc2_.§ H§();
            }
            else
            {
               _loc2_.§^[§();
            }
         }
      }
      
      public static function §4A§() : void
      {
         var _loc1_:§%!,§ = null;
         for each(_loc1_ in §<!#§)
         {
            _loc1_.§4A§();
         }
         dispatchEvent(new §,O§(§,O§.§1`§));
      }
      
      public static function §@M§() : Boolean
      {
         return §#!-§;
      }
      
      private static function §@g§(param1:String, param2:String) : §%!,§
      {
         if(!§'"§)
         {
            return null;
         }
         var _loc3_:§%!,§ = §7]§(param1);
         if(!_loc3_)
         {
            if(§case §)
            {
               §1u§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§;!T§())
         {
            if(§case §)
            {
               §1u§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §6C§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §^!W§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§,O§ = null;
         var _loc8_:§%!,§;
         if(!(_loc8_ = §@g§(param4,param2)))
         {
            return null;
         }
         if(§6!Y§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §"I§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§%!-§);
            _loc9_.addEventListener(Event.ID3,§^!_§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§;!Y§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§;!Y§);
            §"I§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §,O§(§,O§.§9L§)).§6T§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§^!W§ = _loc8_.§4h§(_loc9_,param2,param5,param6,param7);
         §6!Y§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §%!-§(param1:Event) : void
      {
         var _loc2_:§,O§ = new §,O§(§,O§.§2v§);
         _loc2_.§6T§ = §!'§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §!'§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §"I§)
         {
            _loc3_ = §"I§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §^!_§(param1:Event) : void
      {
      }
      
      private static function §;!Y§(param1:ErrorEvent) : void
      {
         var _loc2_:§&!X§ = new §&!X§(§&!X§.§3!a§);
         var _loc3_:String = §!'§(Sound(param1.currentTarget));
         _loc2_.§6T§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §"I§[_loc3_];
         if(§6!Y§[_loc3_])
         {
            §^!W§(§6!Y§[_loc3_]).§^a§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §<!0§(param1:DataEvent) : void
      {
         delete §6!Y§[param1.data];
         dispatchEvent(new §,O§(§,O§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §;V§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §4h§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §^!W§
      {
         var _loc8_:Class = null;
         var _loc6_:§%!,§;
         if(!(_loc6_ = §@g§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §"I§[param1]) == null)
         {
            if(!(_loc8_ = §6d§.§=!Y§(param1,false) as Class))
            {
               §1u§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §"I§[param1] = _loc7_;
         }
         return _loc6_.§4h§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §-q§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§%!,§ = §7]§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§4A§();
            dispatchEvent(new §,O§(§,O§.§1!q§,"",param1));
         }
      }
      
      public static function §"Q§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§case §)
            {
               §1u§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §-#§.§4h§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §5!J§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §5!J§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §5!J§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §5!J§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §5!J§.willTrigger(param1);
      }
   }
}
