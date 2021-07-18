package §-!n§
{
   import §=!M§.§9!P§;
   import com.rovio.assets.§>!]§;
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
   
   public class §5!U§
   {
      
      private static const §;""§:int = 128;
      
      private static var §@!;§:Boolean = true;
      
      private static var §#![§:int;
      
      private static var §,",§:Dictionary;
      
      private static var §+o§:Dictionary;
      
      private static var §@!L§:Dictionary;
      
      public static const §^@§:String = "Default_Channel";
      
      public static const §6!-§:Boolean = false;
      
      private static var §0h§:Boolean = true;
      
      private static var §%F§:EventDispatcher = new EventDispatcher();
       
      
      public function §5!U§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §0h§ = param1;
      }
      
      public static function init() : void
      {
         §,",§ = new Dictionary();
         §+o§ = new Dictionary();
         §@!L§ = new Dictionary();
         §#![§ = 0;
         §2R§(§^@§,4,1);
      }
      
      public static function §2R§(param1:String, param2:int, param3:Number) : void
      {
         if(§`!;§(param1) != null)
         {
            return;
         }
         if(§#![§ >= §;""§)
         {
            if(§6!-§)
            {
               §9!P§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §;""§ + " reserved");
            }
            return;
         }
         if(§#![§ + param2 >= §;""§)
         {
            param2 = §;""§ - §#![§;
         }
         var _loc4_:§6i§;
         (_loc4_ = new §6i§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§%E§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§[2§);
         if(!§@!;§)
         {
            _loc4_.§9"+§();
         }
         §,",§[param1.toLowerCase()] = _loc4_;
         §#![§ += param2;
      }
      
      public static function §`!;§(param1:String) : §6i§
      {
         return §,",§[param1.toLowerCase()];
      }
      
      public static function §="4§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §,",§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §-X§(param1:Boolean) : void
      {
         var _loc2_:§6i§ = null;
         if(param1 == §@!;§)
         {
            return;
         }
         §@!;§ = param1;
         for each(_loc2_ in §,",§)
         {
            if(§@!;§)
            {
               _loc2_.§0!m§();
            }
            else
            {
               _loc2_.§9"+§();
            }
         }
      }
      
      public static function §9&§() : void
      {
         var _loc1_:§6i§ = null;
         for each(_loc1_ in §,",§)
         {
            _loc1_.§9&§();
         }
         dispatchEvent(new §+![§(§+![§.§4?§));
      }
      
      public static function §&!h§() : Boolean
      {
         return §@!;§;
      }
      
      private static function §^!p§(param1:String, param2:String) : §6i§
      {
         if(!§0h§)
         {
            return null;
         }
         var _loc3_:§6i§ = §`!;§(param1);
         if(!_loc3_)
         {
            if(§6!-§)
            {
               §9!P§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§<s§())
         {
            if(§6!-§)
            {
               §9!P§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §4!H§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §7v§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§+![§ = null;
         var _loc8_:§6i§;
         if(!(_loc8_ = §^!p§(param4,param2)))
         {
            return null;
         }
         if(§@!L§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §+o§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§!!8§);
            _loc9_.addEventListener(Event.ID3,§0"5§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§,!x§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§,!x§);
            §+o§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §+![§(§+![§.§2-§)).§9O§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§7v§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §@!L§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §!!8§(param1:Event) : void
      {
         var _loc2_:§+![§ = new §+![§(§+![§.§-c§);
         _loc2_.§9O§ = §59§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §59§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §+o§)
         {
            _loc3_ = §+o§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §0"5§(param1:Event) : void
      {
      }
      
      private static function §,!x§(param1:ErrorEvent) : void
      {
         var _loc2_:§2!g§ = new §2!g§(§2!g§.§1W§);
         var _loc3_:String = §59§(Sound(param1.currentTarget));
         _loc2_.§9O§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §+o§[_loc3_];
         if(§@!L§[_loc3_])
         {
            §7v§(§@!L§[_loc3_]).§ !5§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §%E§(param1:DataEvent) : void
      {
         delete §@!L§[param1.data];
         dispatchEvent(new §+![§(§+![§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §[2§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §7v§
      {
         var _loc8_:Class = null;
         var _loc6_:§6i§;
         if(!(_loc6_ = §^!p§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §+o§[param1]) == null)
         {
            if(!(_loc8_ = §>!]§.§1!8§(param1,false) as Class))
            {
               §9!P§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §+o§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §+!7§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§6i§ = §`!;§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§9&§();
            dispatchEvent(new §+![§(§+![§.§1!$§,"",param1));
         }
      }
      
      public static function §7!e§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§6!-§)
            {
               §9!P§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §5!U§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §%F§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%F§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §%F§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%F§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%F§.willTrigger(param1);
      }
   }
}
