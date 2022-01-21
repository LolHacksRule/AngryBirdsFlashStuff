package §^!K§
{
   import §7!k§.§%!_§;
   import §8<§.§<!7§;
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
   
   public class § !$§
   {
      
      private static const §+c§:int = 128;
      
      private static var §>T§:Boolean = true;
      
      private static var §"k§:int;
      
      private static var §^!^§:Dictionary;
      
      private static var §;v§:Dictionary;
      
      private static var §%K§:Dictionary;
      
      public static const §;!h§:String = "Default_Channel";
      
      public static const §1!0§:Boolean = false;
      
      private static var §'"§:Boolean = true;
      
      private static var §[T§:EventDispatcher = new EventDispatcher();
       
      
      public function § !$§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §'"§ = param1;
      }
      
      public static function init() : void
      {
         §^!^§ = new Dictionary();
         §;v§ = new Dictionary();
         §%K§ = new Dictionary();
         §"k§ = 0;
         §1"§(§;!h§,4,1);
      }
      
      public static function §1"§(param1:String, param2:int, param3:Number) : void
      {
         if(§5!4§(param1) != null)
         {
            return;
         }
         if(§"k§ >= §+c§)
         {
            if(§1!0§)
            {
               §<!7§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §+c§ + " reserved");
            }
            return;
         }
         if(§"k§ + param2 >= §+c§)
         {
            param2 = §+c§ - §"k§;
         }
         var _loc4_:§]!L§;
         (_loc4_ = new §]!L§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§4_§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§false§);
         if(!§>T§)
         {
            _loc4_.§[!$§();
         }
         §^!^§[param1.toLowerCase()] = _loc4_;
         §"k§ += param2;
      }
      
      public static function §5!4§(param1:String) : §]!L§
      {
         return §^!^§[param1.toLowerCase()];
      }
      
      public static function §@_§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §^!^§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §'!K§(param1:Boolean) : void
      {
         var _loc2_:§]!L§ = null;
         if(param1 == §>T§)
         {
            return;
         }
         §>T§ = param1;
         for each(_loc2_ in §^!^§)
         {
            if(§>T§)
            {
               _loc2_.§+!=§();
            }
            else
            {
               _loc2_.§[!$§();
            }
         }
      }
      
      public static function §?j§() : void
      {
         var _loc1_:§]!L§ = null;
         for each(_loc1_ in §^!^§)
         {
            _loc1_.§?j§();
         }
         dispatchEvent(new §-!A§(§-!A§.§]o§));
      }
      
      public static function §6i§() : Boolean
      {
         return §>T§;
      }
      
      private static function §#!C§(param1:String, param2:String) : §]!L§
      {
         if(!§'"§)
         {
            return null;
         }
         var _loc3_:§]!L§ = §5!4§(param1);
         if(!_loc3_)
         {
            if(§1!0§)
            {
               §<!7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§,q§())
         {
            if(§1!0§)
            {
               §<!7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §,!K§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §9N§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-!A§ = null;
         var _loc8_:§]!L§;
         if(!(_loc8_ = §#!C§(param4,param2)))
         {
            return null;
         }
         if(§%K§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §;v§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§>g§);
            _loc9_.addEventListener(Event.ID3,§`!L§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§ !5§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§ !5§);
            §;v§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §-!A§(§-!A§.§[!%§)).§[!Q§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§9N§ = _loc8_.§-N§(_loc9_,param2,param5,param6,param7);
         §%K§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §>g§(param1:Event) : void
      {
         var _loc2_:§-!A§ = new §-!A§(§-!A§.§9P§);
         _loc2_.§[!Q§ = §5y§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §5y§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §;v§)
         {
            _loc3_ = §;v§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §`!L§(param1:Event) : void
      {
      }
      
      private static function § !5§(param1:ErrorEvent) : void
      {
         var _loc2_:§`!&§ = new §`!&§(§`!&§.§]D§);
         var _loc3_:String = §5y§(Sound(param1.currentTarget));
         _loc2_.§[!Q§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §;v§[_loc3_];
         if(§%K§[_loc3_])
         {
            §9N§(§%K§[_loc3_]).§%!E§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §4_§(param1:DataEvent) : void
      {
         delete §%K§[param1.data];
         dispatchEvent(new §-!A§(§-!A§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §false§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §-N§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §9N§
      {
         var _loc8_:Class = null;
         var _loc6_:§]!L§;
         if(!(_loc6_ = §#!C§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §;v§[param1]) == null)
         {
            if(!(_loc8_ = §%!_§.§1$§(param1,false) as Class))
            {
               §<!7§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §;v§[param1] = _loc7_;
         }
         return _loc6_.§-N§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §-u§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§]!L§ = §5!4§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§?j§();
            dispatchEvent(new §-!A§(§-!A§.§!!+§,"",param1));
         }
      }
      
      public static function §!!k§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§1!0§)
            {
               §<!7§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         § !$§.§-N§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §[T§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §[T§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §[T§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §[T§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §[T§.willTrigger(param1);
      }
   }
}
