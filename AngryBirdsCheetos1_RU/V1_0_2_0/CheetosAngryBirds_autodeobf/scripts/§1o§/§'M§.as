package §1o§
{
   import §6&§.§9e§;
   import §=g§.§@!L§;
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
   
   public class §'M§
   {
      
      private static const §9U§:int = 128;
      
      private static var §[!3§:Boolean = true;
      
      private static var §45§:int;
      
      private static var §&!U§:Dictionary;
      
      private static var §%L§:Dictionary;
      
      private static var §4_§:Dictionary;
      
      public static const §,!>§:String = "Default_Channel";
      
      public static const §?!F§:Boolean = false;
      
      private static var §8§:Boolean = true;
      
      private static var §-H§:EventDispatcher = new EventDispatcher();
       
      
      public function §'M§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §8§ = param1;
      }
      
      public static function init() : void
      {
         §&!U§ = new Dictionary();
         §%L§ = new Dictionary();
         §4_§ = new Dictionary();
         §45§ = 0;
         §4![§(§,!>§,4,1);
      }
      
      public static function §4![§(param1:String, param2:int, param3:Number) : void
      {
         if(§%!]§(param1) != null)
         {
            return;
         }
         if(§45§ >= §9U§)
         {
            if(§?!F§)
            {
               §@!L§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §9U§ + " reserved");
            }
            return;
         }
         if(§45§ + param2 >= §9U§)
         {
            param2 = §9U§ - §45§;
         }
         var _loc4_:§+x§;
         (_loc4_ = new §+x§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§`l§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§1H§);
         if(!§[!3§)
         {
            _loc4_.§1%§();
         }
         §&!U§[param1.toLowerCase()] = _loc4_;
         §45§ += param2;
      }
      
      public static function §%!]§(param1:String) : §+x§
      {
         return §&!U§[param1.toLowerCase()];
      }
      
      public static function §#!V§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §&!U§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §1w§(param1:Boolean) : void
      {
         var _loc2_:§+x§ = null;
         if(param1 == §[!3§)
         {
            return;
         }
         §[!3§ = param1;
         for each(_loc2_ in §&!U§)
         {
            if(§[!3§)
            {
               _loc2_.§5l§();
            }
            else
            {
               _loc2_.§1%§();
            }
         }
      }
      
      public static function §"!?§() : void
      {
         var _loc1_:§+x§ = null;
         for each(_loc1_ in §&!U§)
         {
            _loc1_.§"!?§();
         }
         dispatchEvent(new §8!L§(§8!L§.§'t§));
      }
      
      public static function §'!#§() : Boolean
      {
         return §[!3§;
      }
      
      private static function §"5§(param1:String, param2:String) : §+x§
      {
         if(!§8§)
         {
            return null;
         }
         var _loc3_:§+x§ = §%!]§(param1);
         if(!_loc3_)
         {
            if(§?!F§)
            {
               §@!L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§]e§())
         {
            if(§?!F§)
            {
               §@!L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §^>§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §-![§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§8!L§ = null;
         var _loc8_:§+x§;
         if(!(_loc8_ = §"5§(param4,param2)))
         {
            return null;
         }
         if(§4_§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §%L§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§ t§);
            _loc9_.addEventListener(Event.ID3,§9z§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§!,§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§!,§);
            §%L§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §8!L§(§8!L§.§2!W§)).§<!N§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§-![§ = _loc8_.§1T§(_loc9_,param2,param5,param6,param7);
         §4_§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function § t§(param1:Event) : void
      {
         var _loc2_:§8!L§ = new §8!L§(§8!L§.§[#§);
         _loc2_.§<!N§ = §,^§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §,^§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §%L§)
         {
            _loc3_ = §%L§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §9z§(param1:Event) : void
      {
      }
      
      private static function §!,§(param1:ErrorEvent) : void
      {
         var _loc2_:§#L§ = new §#L§(§#L§.§'!Q§);
         var _loc3_:String = §,^§(Sound(param1.currentTarget));
         _loc2_.§<!N§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §%L§[_loc3_];
         if(§4_§[_loc3_])
         {
            §-![§(§4_§[_loc3_]).§"!=§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §`l§(param1:DataEvent) : void
      {
         delete §4_§[param1.data];
         dispatchEvent(new §8!L§(§8!L§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §1H§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §1T§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §-![§
      {
         var _loc8_:Class = null;
         var _loc6_:§+x§;
         if(!(_loc6_ = §"5§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §%L§[param1]) == null)
         {
            if(!(_loc8_ = §9e§.§6!?§(param1,false) as Class))
            {
               §@!L§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §%L§[param1] = _loc7_;
         }
         return _loc6_.§1T§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §0&§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§+x§ = §%!]§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§"!?§();
            dispatchEvent(new §8!L§(§8!L§.§^w§,"",param1));
         }
      }
      
      public static function §,!S§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§?!F§)
            {
               §@!L§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §'M§.§1T§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §-H§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §-H§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §-H§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §-H§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §-H§.willTrigger(param1);
      }
   }
}
