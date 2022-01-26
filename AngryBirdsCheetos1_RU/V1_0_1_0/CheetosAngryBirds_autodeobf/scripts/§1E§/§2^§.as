package §1E§
{
   import §%t§.§@!%§;
   import §<K§.§0e§;
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
   
   public class §2^§
   {
      
      private static const §"a§:int = 128;
      
      private static var §1&§:Boolean = true;
      
      private static var §,!K§:int;
      
      private static var § !R§:Dictionary;
      
      private static var §<0§:Dictionary;
      
      private static var §=!?§:Dictionary;
      
      public static const §,!&§:String = "Default_Channel";
      
      public static const §&! §:Boolean = false;
      
      private static var §^!]§:Boolean = true;
      
      private static var §<2§:EventDispatcher = new EventDispatcher();
       
      
      public function §2^§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §^!]§ = param1;
      }
      
      public static function init() : void
      {
         § !R§ = new Dictionary();
         §<0§ = new Dictionary();
         §=!?§ = new Dictionary();
         §,!K§ = 0;
         §5!Q§(§,!&§,4,1);
      }
      
      public static function §5!Q§(param1:String, param2:int, param3:Number) : void
      {
         if(§6m§(param1) != null)
         {
            return;
         }
         if(§,!K§ >= §"a§)
         {
            if(§&! §)
            {
               §@!%§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §"a§ + " reserved");
            }
            return;
         }
         if(§,!K§ + param2 >= §"a§)
         {
            param2 = §"a§ - §,!K§;
         }
         var _loc4_:§=!R§;
         (_loc4_ = new §=!R§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§2!8§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§-7§);
         if(!§1&§)
         {
            _loc4_.§>g§();
         }
         § !R§[param1.toLowerCase()] = _loc4_;
         §,!K§ += param2;
      }
      
      public static function §6m§(param1:String) : §=!R§
      {
         return § !R§[param1.toLowerCase()];
      }
      
      public static function §0!,§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § !R§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §case §(param1:Boolean) : void
      {
         var _loc2_:§=!R§ = null;
         if(param1 == §1&§)
         {
            return;
         }
         §1&§ = param1;
         for each(_loc2_ in § !R§)
         {
            if(§1&§)
            {
               _loc2_.§7!a§();
            }
            else
            {
               _loc2_.§>g§();
            }
         }
      }
      
      public static function § !]§() : void
      {
         var _loc1_:§=!R§ = null;
         for each(_loc1_ in § !R§)
         {
            _loc1_.§ !]§();
         }
         dispatchEvent(new §@H§(§@H§.§9!@§));
      }
      
      public static function §=D§() : Boolean
      {
         return §1&§;
      }
      
      private static function §"!Z§(param1:String, param2:String) : §=!R§
      {
         if(!§^!]§)
         {
            return null;
         }
         var _loc3_:§=!R§ = §6m§(param1);
         if(!_loc3_)
         {
            if(§&! §)
            {
               §@!%§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§6A§())
         {
            if(§&! §)
            {
               §@!%§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function § n§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : § _§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§@H§ = null;
         var _loc8_:§=!R§;
         if(!(_loc8_ = §"!Z§(param4,param2)))
         {
            return null;
         }
         if(§=!?§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §<0§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§each §);
            _loc9_.addEventListener(Event.ID3,§"!T§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§>!^§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§>!^§);
            §<0§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §@H§(§@H§.§6Q§)).§`]§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§ _§ = _loc8_.§ !C§(_loc9_,param2,param5,param6,param7);
         §=!?§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §each §(param1:Event) : void
      {
         var _loc2_:§@H§ = new §@H§(§@H§.§,r§);
         _loc2_.§`]§ = §4G§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §4G§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §<0§)
         {
            _loc3_ = §<0§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §"!T§(param1:Event) : void
      {
      }
      
      private static function §>!^§(param1:ErrorEvent) : void
      {
         var _loc2_:§3B§ = new §3B§(§3B§.§[O§);
         var _loc3_:String = §4G§(Sound(param1.currentTarget));
         _loc2_.§`]§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §<0§[_loc3_];
         if(§=!?§[_loc3_])
         {
            § _§(§=!?§[_loc3_]).§`o§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §2!8§(param1:DataEvent) : void
      {
         delete §=!?§[param1.data];
         dispatchEvent(new §@H§(§@H§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §-7§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function § !C§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : § _§
      {
         var _loc8_:Class = null;
         var _loc6_:§=!R§;
         if(!(_loc6_ = §"!Z§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §<0§[param1]) == null)
         {
            if(!(_loc8_ = §0e§.§#!!§(param1,false) as Class))
            {
               §@!%§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §<0§[param1] = _loc7_;
         }
         return _loc6_.§ !C§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §<!^§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§=!R§ = §6m§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§ !]§();
            dispatchEvent(new §@H§(§@H§.§+y§,"",param1));
         }
      }
      
      public static function §0!G§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§&! §)
            {
               §@!%§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §2^§.§ !C§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §<2§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §<2§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §<2§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §<2§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §<2§.willTrigger(param1);
      }
   }
}
