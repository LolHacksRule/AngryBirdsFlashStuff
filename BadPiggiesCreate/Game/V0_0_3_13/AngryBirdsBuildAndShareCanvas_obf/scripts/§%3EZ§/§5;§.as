package §>Z§
{
   import §&W§.§7L§;
   import com.rovio.assets.§=#§;
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
   
   public class §5;§
   {
      
      private static const §@p§:int = 128;
      
      private static var §7W§:Boolean = true;
      
      private static var §>8§:int;
      
      private static var §+!1§:Dictionary;
      
      private static var §'A§:Dictionary;
      
      private static var §!B§:Dictionary;
      
      public static const §?!G§:String = "Default_Channel";
      
      public static const §[n§:Boolean = false;
      
      private static var §%$§:Boolean = true;
      
      private static var §,!=§:EventDispatcher = new EventDispatcher();
       
      
      public function §5;§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §%$§ = param1;
      }
      
      public static function init() : void
      {
         §+!1§ = new Dictionary();
         §'A§ = new Dictionary();
         §!B§ = new Dictionary();
         §>8§ = 0;
         §9L§(§?!G§,4,1);
      }
      
      public static function §9L§(param1:String, param2:int, param3:Number) : void
      {
         if(§+!7§(param1) != null)
         {
            return;
         }
         if(§>8§ >= §@p§)
         {
            if(§[n§)
            {
               §7L§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §@p§ + " reserved");
            }
            return;
         }
         if(§>8§ + param2 >= §@p§)
         {
            param2 = §@p§ - §>8§;
         }
         var _loc4_:§>"?§;
         (_loc4_ = new §>"?§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§3!z§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§4w§);
         if(!§7W§)
         {
            _loc4_.§`w§();
         }
         §+!1§[param1.toLowerCase()] = _loc4_;
         §>8§ += param2;
      }
      
      public static function §+!7§(param1:String) : §>"?§
      {
         return §+!1§[param1.toLowerCase()];
      }
      
      public static function §>f§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+!1§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §!"!§(param1:Boolean) : void
      {
         var _loc2_:§>"?§ = null;
         if(param1 == §7W§)
         {
            return;
         }
         §7W§ = param1;
         for each(_loc2_ in §+!1§)
         {
            if(§7W§)
            {
               _loc2_.§3"'§();
            }
            else
            {
               _loc2_.§`w§();
            }
         }
      }
      
      public static function §8X§() : void
      {
         var _loc1_:§>"?§ = null;
         for each(_loc1_ in §+!1§)
         {
            _loc1_.§8X§();
         }
         dispatchEvent(new §9!;§(§9!;§.§;"2§));
      }
      
      public static function §6E§() : Boolean
      {
         return §7W§;
      }
      
      private static function § R§(param1:String, param2:String) : §>"?§
      {
         if(!§%$§)
         {
            return null;
         }
         var _loc3_:§>"?§ = §+!7§(param1);
         if(!_loc3_)
         {
            if(§[n§)
            {
               §7L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§;"6§())
         {
            if(§[n§)
            {
               §7L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §9!I§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §??§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§9!;§ = null;
         var _loc8_:§>"?§;
         if(!(_loc8_ = § R§(param4,param2)))
         {
            return null;
         }
         if(§!B§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §'A§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§&!7§);
            _loc9_.addEventListener(Event.ID3,§@"8§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§6!w§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!w§);
            §'A§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §9!;§(§9!;§.§9_§)).§0"%§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§??§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §!B§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §&!7§(param1:Event) : void
      {
         var _loc2_:§9!;§ = new §9!;§(§9!;§.§ !X§);
         _loc2_.§0"%§ = §58§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §58§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §'A§)
         {
            _loc3_ = §'A§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §@"8§(param1:Event) : void
      {
      }
      
      private static function §6!w§(param1:ErrorEvent) : void
      {
         var _loc2_:§6!L§ = new §6!L§(§6!L§.§?!q§);
         var _loc3_:String = §58§(Sound(param1.currentTarget));
         _loc2_.§0"%§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §'A§[_loc3_];
         if(§!B§[_loc3_])
         {
            §??§(§!B§[_loc3_]).§]§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §3!z§(param1:DataEvent) : void
      {
         delete §!B§[param1.data];
         dispatchEvent(new §9!;§(§9!;§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §4w§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §??§
      {
         var _loc8_:Class = null;
         var _loc6_:§>"?§;
         if(!(_loc6_ = § R§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §'A§[param1]) == null)
         {
            if(!(_loc8_ = §=#§.§1v§(param1,false) as Class))
            {
               §7L§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §'A§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §@g§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§>"?§ = §+!7§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§8X§();
            dispatchEvent(new §9!;§(§9!;§.§!!S§,"",param1));
         }
      }
      
      public static function §#r§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§[n§)
            {
               §7L§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §5;§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §,!=§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §,!=§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §,!=§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §,!=§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §,!=§.willTrigger(param1);
      }
   }
}
