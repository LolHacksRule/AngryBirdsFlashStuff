package §1T§
{
   import com.rovio.assets.§<V§;
   import each.§!!'§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §'!c§
   {
      
      private static const §?"#§:int = 64;
      
      private static var §!N§:Boolean = true;
      
      private static var §%!J§:int;
      
      private static var §6L§:Dictionary;
      
      private static var §8!y§:Dictionary;
      
      private static var §9!0§:Dictionary;
      
      public static const § F§:String = "Default_Channel";
      
      public static const §3n§:Boolean = false;
      
      private static var §"!V§:Boolean = true;
      
      private static var §3!i§:EventDispatcher = new EventDispatcher();
       
      
      public function §'!c§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §"!V§ = param1;
      }
      
      public static function init() : void
      {
         §6L§ = new Dictionary();
         §8!y§ = new Dictionary();
         §9!0§ = new Dictionary();
         §%!J§ = 0;
         §8G§(§ F§,4,1);
      }
      
      public static function §8G§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §[!d§(param1) != null)
         {
            return;
         }
         if(§%!J§ >= §?"#§)
         {
            if(!§3n§)
            {
            }
            return;
         }
         if(§%!J§ + param2 >= §?"#§)
         {
            param2 = §?"#§ - §%!J§;
         }
         var _loc4_:§3!6§;
         (_loc4_ = new §3!6§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§-!z§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§1c§);
         §6L§[param1.toLowerCase()] = _loc4_;
         §%!J§ += param2;
      }
      
      public static function §[!d§(param1:String) : §3!6§
      {
         if(!param1)
         {
            return null;
         }
         return §6L§[param1.toLowerCase()];
      }
      
      public static function §9"-§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §6L§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §,!O§(param1:Boolean) : void
      {
         if(param1 == §!N§)
         {
            return;
         }
         §!N§ = param1;
         §-!!§(§!N§);
      }
      
      public static function §`"#§(param1:Boolean) : void
      {
         var _loc2_:§3!6§ = null;
         for each(_loc2_ in §6L§)
         {
            if(param1)
            {
               _loc2_.§`!C§();
            }
            else
            {
               _loc2_.§>@§();
            }
         }
      }
      
      protected static function §-!!§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §&j§() : void
      {
         var _loc1_:§3!6§ = null;
         for each(_loc1_ in §6L§)
         {
            _loc1_.§&j§();
         }
         dispatchEvent(new §-Z§(§-Z§.§^o§));
      }
      
      public static function get §<!g§() : Boolean
      {
         return §!N§;
      }
      
      private static function §=L§(param1:String, param2:String) : §3!6§
      {
         if(!§"!V§)
         {
            return null;
         }
         var _loc3_:§3!6§ = §[!d§(param1);
         if(!_loc3_)
         {
            if(§3n§)
            {
               §!!'§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§^n§())
         {
            if(§3n§)
            {
               §!!'§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §3#§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §8!Q§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-Z§ = null;
         var _loc8_:§3!6§;
         if(!(_loc8_ = §=L§(param4,param2)))
         {
            return null;
         }
         if(§9!0§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §8!y§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§"B§);
            _loc9_.addEventListener(Event.ID3,§<y§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§#7§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§#7§);
            §8!y§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §-Z§(§-Z§.§[n§)).§6a§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§8!Q§ = _loc8_.§3!f§(_loc9_,param2,param5,param6,param7);
         §9!0§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §"B§(param1:Event) : void
      {
         var _loc2_:§-Z§ = new §-Z§(§-Z§.§%B§);
         _loc2_.§6a§ = §&V§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §&V§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §8!y§)
         {
            _loc3_ = §8!y§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §<y§(param1:Event) : void
      {
      }
      
      private static function §#7§(param1:ErrorEvent) : void
      {
         var _loc2_:§0!,§ = new §0!,§(§0!,§.§]N§);
         var _loc3_:String = §&V§(Sound(param1.currentTarget));
         _loc2_.§6a§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §8!y§[_loc3_];
         if(§9!0§[_loc3_])
         {
            §8!Q§(§9!0§[_loc3_]).§>!C§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §-!z§(param1:DataEvent) : void
      {
         delete §9!0§[param1.data];
         dispatchEvent(new §-Z§(§-Z§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §1c§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §3!f§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §8!Q§
      {
         var _loc6_:§3!6§;
         if(!(_loc6_ = §=L§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §1U§(param1)))
         {
            return null;
         }
         return _loc6_.§3!f§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1U§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §8!y§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §<V§.§"!,§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §!!'§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §8!y§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §;! §(param1:String = "Default_Channel") : void
      {
         var _loc2_:§3!6§ = §[!d§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§&j§();
            dispatchEvent(new §-Z§(§-Z§.§^&§,"",param1));
         }
      }
      
      public static function §"V§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§3n§)
            {
               §!!'§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §'!c§.§3!f§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §3!i§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3!i§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §3!i§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3!i§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3!i§.willTrigger(param1);
      }
   }
}
