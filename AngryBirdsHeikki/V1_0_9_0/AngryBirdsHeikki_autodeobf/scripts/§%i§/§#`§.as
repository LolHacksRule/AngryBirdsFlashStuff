package §%i§
{
   import §"!S§.§<s§;
   import §0i§.§]_§;
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
   
   public class §#`§
   {
      
      private static const §#!6§:int = 128;
      
      private static var §`V§:Boolean = true;
      
      private static var §9!R§:int;
      
      private static var §-!H§:Dictionary;
      
      private static var §8O§:Dictionary;
      
      private static var §#!V§:Dictionary;
      
      public static const §1!_§:String = "Default_Channel";
      
      public static const §#§:Boolean = false;
      
      private static var §8!H§:Boolean = true;
      
      private static var §7?§:EventDispatcher = new EventDispatcher();
       
      
      public function §#`§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §8!H§ = param1;
      }
      
      public static function init() : void
      {
         §-!H§ = new Dictionary();
         §8O§ = new Dictionary();
         §#!V§ = new Dictionary();
         §9!R§ = 0;
         §@z§(§1!_§,4,1);
      }
      
      public static function §@z§(param1:String, param2:int, param3:Number) : void
      {
         if(§10§(param1) != null)
         {
            return;
         }
         if(§9!R§ >= §#!6§)
         {
            if(§#§)
            {
               §]_§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §#!6§ + " reserved");
            }
            return;
         }
         if(§9!R§ + param2 >= §#!6§)
         {
            param2 = §#!6§ - §9!R§;
         }
         var _loc4_:§,!§;
         (_loc4_ = new §,!§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§2b§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§ g§);
         if(!§`V§)
         {
            _loc4_.§4s§();
         }
         §-!H§[param1.toLowerCase()] = _loc4_;
         §9!R§ += param2;
      }
      
      public static function §10§(param1:String) : §,!§
      {
         return §-!H§[param1.toLowerCase()];
      }
      
      public static function §;!O§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §-!H§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §^T§(param1:Boolean) : void
      {
         var _loc2_:§,!§ = null;
         if(param1 == §`V§)
         {
            return;
         }
         §`V§ = param1;
         for each(_loc2_ in §-!H§)
         {
            if(§`V§)
            {
               _loc2_.§#!4§();
            }
            else
            {
               _loc2_.§4s§();
            }
         }
      }
      
      public static function §2!5§() : void
      {
         var _loc1_:§,!§ = null;
         for each(_loc1_ in §-!H§)
         {
            _loc1_.§2!5§();
         }
         dispatchEvent(new §2!D§(§2!D§.§;_§));
      }
      
      public static function §0s§() : Boolean
      {
         return §`V§;
      }
      
      private static function §@!?§(param1:String, param2:String) : §,!§
      {
         if(!§8!H§)
         {
            return null;
         }
         var _loc3_:§,!§ = §10§(param1);
         if(!_loc3_)
         {
            if(§#§)
            {
               §]_§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§!3§())
         {
            if(§#§)
            {
               §]_§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §@X§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §8!A§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§2!D§ = null;
         var _loc8_:§,!§;
         if(!(_loc8_ = §@!?§(param4,param2)))
         {
            return null;
         }
         if(§#!V§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §8O§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§<2§);
            _loc9_.addEventListener(Event.ID3,§2[§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§%I§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%I§);
            §8O§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §2!D§(§2!D§.§-!G§)).§`!`§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§8!A§ = _loc8_.§2o§(_loc9_,param2,param5,param6,param7);
         §#!V§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §<2§(param1:Event) : void
      {
         var _loc2_:§2!D§ = new §2!D§(§2!D§.§`i§);
         _loc2_.§`!`§ = §6a§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §6a§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §8O§)
         {
            _loc3_ = §8O§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §2[§(param1:Event) : void
      {
      }
      
      private static function §%I§(param1:ErrorEvent) : void
      {
         var _loc2_:§#!e§ = new §#!e§(§#!e§.§,V§);
         var _loc3_:String = §6a§(Sound(param1.currentTarget));
         _loc2_.§`!`§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §8O§[_loc3_];
         if(§#!V§[_loc3_])
         {
            §8!A§(§#!V§[_loc3_]).§=t§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §2b§(param1:DataEvent) : void
      {
         delete §#!V§[param1.data];
         dispatchEvent(new §2!D§(§2!D§.SOUND_COMPLETE,param1.data));
      }
      
      private static function § g§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §2o§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §8!A§
      {
         var _loc8_:Class = null;
         var _loc6_:§,!§;
         if(!(_loc6_ = §@!?§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §8O§[param1]) == null)
         {
            if(!(_loc8_ = §<s§.§0b§(param1,false) as Class))
            {
               §]_§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §8O§[param1] = _loc7_;
         }
         return _loc6_.§2o§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §>!e§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§,!§ = §10§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§2!5§();
            dispatchEvent(new §2!D§(§2!D§.§@d§,"",param1));
         }
      }
      
      public static function §]!&§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§#§)
            {
               §]_§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §#`§.§2o§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §7?§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §7?§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §7?§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §7?§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §7?§.willTrigger(param1);
      }
   }
}
