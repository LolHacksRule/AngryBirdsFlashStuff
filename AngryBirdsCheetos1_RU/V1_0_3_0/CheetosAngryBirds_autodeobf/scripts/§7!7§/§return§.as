package §7!7§
{
   import §7!P§.§-3§;
   import §^q§.§8,§;
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
   
   public class §return§
   {
      
      private static const §-!5§:int = 128;
      
      private static var §`!1§:Boolean = true;
      
      private static var §@!§:int;
      
      private static var §%!J§:Dictionary;
      
      private static var §2o§:Dictionary;
      
      private static var §=$§:Dictionary;
      
      public static const §5`§:String = "Default_Channel";
      
      public static const §,M§:Boolean = false;
      
      private static var §@!A§:Boolean = true;
      
      private static var §!!@§:EventDispatcher = new EventDispatcher();
       
      
      public function §return§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §@!A§ = param1;
      }
      
      public static function init() : void
      {
         §%!J§ = new Dictionary();
         §2o§ = new Dictionary();
         §=$§ = new Dictionary();
         §@!§ = 0;
         §<%§(§5`§,4,1);
      }
      
      public static function §<%§(param1:String, param2:int, param3:Number) : void
      {
         if(§!!T§(param1) != null)
         {
            return;
         }
         if(§@!§ >= §-!5§)
         {
            if(§,M§)
            {
               §-3§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §-!5§ + " reserved");
            }
            return;
         }
         if(§@!§ + param2 >= §-!5§)
         {
            param2 = §-!5§ - §@!§;
         }
         var _loc4_:§!!I§;
         (_loc4_ = new §!!I§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§9l§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§[!a§);
         if(!§`!1§)
         {
            _loc4_.§?!9§();
         }
         §%!J§[param1.toLowerCase()] = _loc4_;
         §@!§ += param2;
      }
      
      public static function §!!T§(param1:String) : §!!I§
      {
         return §%!J§[param1.toLowerCase()];
      }
      
      public static function §8!V§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §%!J§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §"!"§(param1:Boolean) : void
      {
         var _loc2_:§!!I§ = null;
         if(param1 == §`!1§)
         {
            return;
         }
         §`!1§ = param1;
         for each(_loc2_ in §%!J§)
         {
            if(§`!1§)
            {
               _loc2_.§&!D§();
            }
            else
            {
               _loc2_.§?!9§();
            }
         }
      }
      
      public static function §+r§() : void
      {
         var _loc1_:§!!I§ = null;
         for each(_loc1_ in §%!J§)
         {
            _loc1_.§+r§();
         }
         dispatchEvent(new §=!@§(§=!@§.§-!R§));
      }
      
      public static function §"!?§() : Boolean
      {
         return §`!1§;
      }
      
      private static function §,<§(param1:String, param2:String) : §!!I§
      {
         if(!§@!A§)
         {
            return null;
         }
         var _loc3_:§!!I§ = §!!T§(param1);
         if(!_loc3_)
         {
            if(§,M§)
            {
               §-3§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§4i§())
         {
            if(§,M§)
            {
               §-3§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §=!E§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : § !$§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§=!@§ = null;
         var _loc8_:§!!I§;
         if(!(_loc8_ = §,<§(param4,param2)))
         {
            return null;
         }
         if(§=$§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §2o§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§84§);
            _loc9_.addEventListener(Event.ID3,§;!-§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§+2§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§+2§);
            §2o§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §=!@§(§=!@§.§]!3§)).§!!7§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§ !$§ = _loc8_.§2!S§(_loc9_,param2,param5,param6,param7);
         §=$§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §84§(param1:Event) : void
      {
         var _loc2_:§=!@§ = new §=!@§(§=!@§.§?@§);
         _loc2_.§!!7§ = §^D§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §^D§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §2o§)
         {
            _loc3_ = §2o§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §;!-§(param1:Event) : void
      {
      }
      
      private static function §+2§(param1:ErrorEvent) : void
      {
         var _loc2_:§3h§ = new §3h§(§3h§.§>!Q§);
         var _loc3_:String = §^D§(Sound(param1.currentTarget));
         _loc2_.§!!7§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §2o§[_loc3_];
         if(§=$§[_loc3_])
         {
            § !$§(§=$§[_loc3_]).§0F§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §9l§(param1:DataEvent) : void
      {
         delete §=$§[param1.data];
         dispatchEvent(new §=!@§(§=!@§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §[!a§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §2!S§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : § !$§
      {
         var _loc8_:Class = null;
         var _loc6_:§!!I§;
         if(!(_loc6_ = §,<§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §2o§[param1]) == null)
         {
            if(!(_loc8_ = §8,§.§8X§(param1,false) as Class))
            {
               §-3§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §2o§[param1] = _loc7_;
         }
         return _loc6_.§2!S§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §null§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§!!I§ = §!!T§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§+r§();
            dispatchEvent(new §=!@§(§=!@§.§;!4§,"",param1));
         }
      }
      
      public static function §"T§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§,M§)
            {
               §-3§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §return§.§2!S§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §!!@§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §!!@§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §!!@§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §!!@§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §!!@§.willTrigger(param1);
      }
   }
}
