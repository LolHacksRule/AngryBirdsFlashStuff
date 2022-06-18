package §!$§
{
   import § N§.§]M§;
   import §,&§.§7$§;
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
   
   public class §!!O§
   {
      
      private static const §0!&§:int = 128;
      
      private static var §>!7§:Boolean = true;
      
      private static var §7! §:int;
      
      private static var §&!=§:Dictionary;
      
      private static var §>!Z§:Dictionary;
      
      private static var §3!9§:Dictionary;
      
      public static const §0g§:String = "Default_Channel";
      
      public static const § a§:Boolean = false;
      
      private static var §2&§:Boolean = true;
      
      private static var §3!;§:EventDispatcher = new EventDispatcher();
       
      
      public function §!!O§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §2&§ = param1;
      }
      
      public static function init() : void
      {
         §&!=§ = new Dictionary();
         §>!Z§ = new Dictionary();
         §3!9§ = new Dictionary();
         §7! § = 0;
         §7!b§(§0g§,4,1);
      }
      
      public static function §7!b§(param1:String, param2:int, param3:Number) : void
      {
         if(§@!9§(param1) != null)
         {
            return;
         }
         if(§7! § >= §0!&§)
         {
            if(§ a§)
            {
               §]M§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §0!&§ + " reserved");
            }
            return;
         }
         if(§7! § + param2 >= §0!&§)
         {
            param2 = §0!&§ - §7! §;
         }
         var _loc4_:§;!=§;
         (_loc4_ = new §;!=§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§-!J§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§1!=§);
         if(!§>!7§)
         {
            _loc4_.§<!F§();
         }
         §&!=§[param1.toLowerCase()] = _loc4_;
         §7! § += param2;
      }
      
      public static function §@!9§(param1:String) : §;!=§
      {
         return §&!=§[param1.toLowerCase()];
      }
      
      public static function §"!2§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §&!=§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §5I§(param1:Boolean) : void
      {
         var _loc2_:§;!=§ = null;
         if(param1 == §>!7§)
         {
            return;
         }
         §>!7§ = param1;
         for each(_loc2_ in §&!=§)
         {
            if(§>!7§)
            {
               _loc2_.§>!c§();
            }
            else
            {
               _loc2_.§<!F§();
            }
         }
      }
      
      public static function §+"§() : void
      {
         var _loc1_:§;!=§ = null;
         for each(_loc1_ in §&!=§)
         {
            _loc1_.§+"§();
         }
         dispatchEvent(new §@-§(§@-§.§1J§));
      }
      
      public static function §2U§() : Boolean
      {
         return §>!7§;
      }
      
      private static function §#,§(param1:String, param2:String) : §;!=§
      {
         if(!§2&§)
         {
            return null;
         }
         var _loc3_:§;!=§ = §@!9§(param1);
         if(!_loc3_)
         {
            if(§ a§)
            {
               §]M§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§?!Q§())
         {
            if(§ a§)
            {
               §]M§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §%!M§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §3Z§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§@-§ = null;
         var _loc8_:§;!=§;
         if(!(_loc8_ = §#,§(param4,param2)))
         {
            return null;
         }
         if(§3!9§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §>!Z§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§0!O§);
            _loc9_.addEventListener(Event.ID3,§5n§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§07§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§07§);
            §>!Z§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §@-§(§@-§.§8X§)).§&!&§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§3Z§ = _loc8_.§<D§(_loc9_,param2,param5,param6,param7);
         §3!9§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §0!O§(param1:Event) : void
      {
         var _loc2_:§@-§ = new §@-§(§@-§.§;!R§);
         _loc2_.§&!&§ = §5O§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §5O§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §>!Z§)
         {
            _loc3_ = §>!Z§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §5n§(param1:Event) : void
      {
      }
      
      private static function §07§(param1:ErrorEvent) : void
      {
         var _loc2_:§@!=§ = new §@!=§(§@!=§.§%!V§);
         var _loc3_:String = §5O§(Sound(param1.currentTarget));
         _loc2_.§&!&§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §>!Z§[_loc3_];
         if(§3!9§[_loc3_])
         {
            §3Z§(§3!9§[_loc3_]).§?!R§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §-!J§(param1:DataEvent) : void
      {
         delete §3!9§[param1.data];
         dispatchEvent(new §@-§(§@-§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §1!=§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §<D§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §3Z§
      {
         var _loc8_:Class = null;
         var _loc6_:§;!=§;
         if(!(_loc6_ = §#,§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §>!Z§[param1]) == null)
         {
            if(!(_loc8_ = §7$§.§,W§(param1,false) as Class))
            {
               §]M§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §>!Z§[param1] = _loc7_;
         }
         return _loc6_.§<D§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!P§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§;!=§ = §@!9§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§+"§();
            dispatchEvent(new §@-§(§@-§.§ !M§,"",param1));
         }
      }
      
      public static function §^3§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§ a§)
            {
               §]M§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §!!O§.§<D§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §3!;§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3!;§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §3!;§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3!;§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3!;§.willTrigger(param1);
      }
   }
}
