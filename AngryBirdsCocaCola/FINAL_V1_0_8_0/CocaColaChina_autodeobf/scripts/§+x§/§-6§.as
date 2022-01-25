package §+x§
{
   import § 9§.§=!a§;
   import §^=§.§8!6§;
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
   
   public class §-6§
   {
      
      private static const §41§:int = 128;
      
      private static var §-!>§:Boolean = true;
      
      private static var §%?§:int;
      
      private static var §6"§:Dictionary;
      
      private static var §2!L§:Dictionary;
      
      private static var § #§:Dictionary;
      
      public static const §"y§:String = "Default_Channel";
      
      public static const §3?§:Boolean = false;
      
      private static var §"!9§:Boolean = true;
      
      private static var §%<§:EventDispatcher = new EventDispatcher();
       
      
      public function §-6§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §"!9§ = param1;
      }
      
      public static function init() : void
      {
         §6"§ = new Dictionary();
         §2!L§ = new Dictionary();
         § #§ = new Dictionary();
         §%?§ = 0;
         §;!J§(§"y§,4,1);
      }
      
      public static function §;!J§(param1:String, param2:int, param3:Number) : void
      {
         if(§6S§(param1) != null)
         {
            return;
         }
         if(§%?§ >= §41§)
         {
            if(§3?§)
            {
               §8!6§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §41§ + " reserved");
            }
            return;
         }
         if(§%?§ + param2 >= §41§)
         {
            param2 = §41§ - §%?§;
         }
         var _loc4_:§0!"§;
         (_loc4_ = new §0!"§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§9q§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§?!O§);
         if(!§-!>§)
         {
            _loc4_.§@9§();
         }
         §6"§[param1.toLowerCase()] = _loc4_;
         §%?§ += param2;
      }
      
      public static function §6S§(param1:String) : §0!"§
      {
         return §6"§[param1.toLowerCase()];
      }
      
      public static function §#!6§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §6"§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §[k§(param1:Boolean) : void
      {
         var _loc2_:§0!"§ = null;
         if(param1 == §-!>§)
         {
            return;
         }
         §-!>§ = param1;
         for each(_loc2_ in §6"§)
         {
            if(§-!>§)
            {
               _loc2_.§2!A§();
            }
            else
            {
               _loc2_.§@9§();
            }
         }
      }
      
      public static function §[G§() : void
      {
         var _loc1_:§0!"§ = null;
         for each(_loc1_ in §6"§)
         {
            _loc1_.§[G§();
         }
         dispatchEvent(new §>!?§(§>!?§.§>!A§));
      }
      
      public static function §>i§() : Boolean
      {
         return §-!>§;
      }
      
      private static function §^a§(param1:String, param2:String) : §0!"§
      {
         if(!§"!9§)
         {
            return null;
         }
         var _loc3_:§0!"§ = §6S§(param1);
         if(!_loc3_)
         {
            if(§3?§)
            {
               §8!6§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§3<§())
         {
            if(§3?§)
            {
               §8!6§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §`v§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §9a§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§>!?§ = null;
         var _loc8_:§0!"§;
         if(!(_loc8_ = §^a§(param4,param2)))
         {
            return null;
         }
         if(§ #§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §2!L§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§,o§);
            _loc9_.addEventListener(Event.ID3,§@!%§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§9!=§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9!=§);
            §2!L§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §>!?§(§>!?§.§1%§)).§4!-§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§9a§ = _loc8_.§6!#§(_loc9_,param2,param5,param6,param7);
         § #§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §,o§(param1:Event) : void
      {
         var _loc2_:§>!?§ = new §>!?§(§>!?§.§>v§);
         _loc2_.§4!-§ = §+'§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §+'§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §2!L§)
         {
            _loc3_ = §2!L§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §@!%§(param1:Event) : void
      {
      }
      
      private static function §9!=§(param1:ErrorEvent) : void
      {
         var _loc2_:§+V§ = new §+V§(§+V§.§[M§);
         var _loc3_:String = §+'§(Sound(param1.currentTarget));
         _loc2_.§4!-§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §2!L§[_loc3_];
         if(§ #§[_loc3_])
         {
            §9a§(§ #§[_loc3_]).§&!#§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §9q§(param1:DataEvent) : void
      {
         delete § #§[param1.data];
         dispatchEvent(new §>!?§(§>!?§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §?!O§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §6!#§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §9a§
      {
         var _loc8_:Class = null;
         var _loc6_:§0!"§;
         if(!(_loc6_ = §^a§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §2!L§[param1]) == null)
         {
            if(!(_loc8_ = §=!a§.§@o§(param1,false) as Class))
            {
               §8!6§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §2!L§[param1] = _loc7_;
         }
         return _loc6_.§6!#§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §^Z§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§0!"§ = §6S§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§[G§();
            dispatchEvent(new §>!?§(§>!?§.§>!9§,"",param1));
         }
      }
      
      public static function §,!0§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§3?§)
            {
               §8!6§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §-6§.§6!#§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §%<§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%<§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §%<§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%<§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%<§.willTrigger(param1);
      }
   }
}
