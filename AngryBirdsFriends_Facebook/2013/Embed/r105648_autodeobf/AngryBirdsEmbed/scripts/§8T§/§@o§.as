package §8T§
{
   import §?!8§.§2>§;
   import com.rovio.assets.§&%§;
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
   
   public class §@o§
   {
      
      private static const §-M§:int = 128;
      
      private static var §0b§:Boolean = true;
      
      private static var §[t§:int;
      
      private static var §!m§:Dictionary;
      
      private static var §7a§:Dictionary;
      
      private static var §51§:Dictionary;
      
      public static const §;T§:String = "Default_Channel";
      
      public static const §#!E§:Boolean = false;
      
      private static var §#Q§:Boolean = true;
      
      private static var §;J§:EventDispatcher = new EventDispatcher();
       
      
      public function §@o§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §#Q§ = param1;
      }
      
      public static function init() : void
      {
         §!m§ = new Dictionary();
         §7a§ = new Dictionary();
         §51§ = new Dictionary();
         §[t§ = 0;
         §1+§(§;T§,4,1);
      }
      
      public static function §1+§(param1:String, param2:int, param3:Number) : void
      {
         if(§[W§(param1) != null)
         {
            return;
         }
         if(§[t§ >= §-M§)
         {
            if(§#!E§)
            {
               §2>§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §-M§ + " reserved");
            }
            return;
         }
         if(§[t§ + param2 >= §-M§)
         {
            param2 = §-M§ - §[t§;
         }
         var _loc4_:§7H§;
         (_loc4_ = new §7H§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§]]§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§?'§);
         if(!§0b§)
         {
            _loc4_.§ !2§();
         }
         §!m§[param1.toLowerCase()] = _loc4_;
         §[t§ += param2;
      }
      
      public static function §[W§(param1:String) : §7H§
      {
         return §!m§[param1.toLowerCase()];
      }
      
      public static function §`h§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §!m§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function § l§(param1:Boolean) : void
      {
         var _loc2_:§7H§ = null;
         if(param1 == §0b§)
         {
            return;
         }
         §0b§ = param1;
         for each(_loc2_ in §!m§)
         {
            if(§0b§)
            {
               _loc2_.§!?§();
            }
            else
            {
               _loc2_.§ !2§();
            }
         }
      }
      
      public static function §#!;§() : void
      {
         var _loc1_:§7H§ = null;
         for each(_loc1_ in §!m§)
         {
            _loc1_.§#!;§();
         }
         dispatchEvent(new §'3§(§'3§.§#;§));
      }
      
      public static function §"i§() : Boolean
      {
         return §0b§;
      }
      
      private static function §5!§(param1:String, param2:String) : §7H§
      {
         if(!§#Q§)
         {
            return null;
         }
         var _loc3_:§7H§ = §[W§(param1);
         if(!_loc3_)
         {
            if(§#!E§)
            {
               §2>§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§4!2§())
         {
            if(§#!E§)
            {
               §2>§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §?q§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §'F§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§'3§ = null;
         var _loc8_:§7H§;
         if(!(_loc8_ = §5!§(param4,param2)))
         {
            return null;
         }
         if(§51§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §7a§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§5t§);
            _loc9_.addEventListener(Event.ID3,§1a§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§^`§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§^`§);
            §7a§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §'3§(§'3§.§-!1§)).§^k§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§'F§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §51§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §5t§(param1:Event) : void
      {
         var _loc2_:§'3§ = new §'3§(§'3§.§5! §);
         _loc2_.§^k§ = §7-§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §7-§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §7a§)
         {
            _loc3_ = §7a§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §1a§(param1:Event) : void
      {
      }
      
      private static function §^`§(param1:ErrorEvent) : void
      {
         var _loc2_:§1c§ = new §1c§(§1c§.§#t§);
         var _loc3_:String = §7-§(Sound(param1.currentTarget));
         _loc2_.§^k§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §7a§[_loc3_];
         if(§51§[_loc3_])
         {
            §'F§(§51§[_loc3_]).§[f§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §]]§(param1:DataEvent) : void
      {
         delete §51§[param1.data];
         dispatchEvent(new §'3§(§'3§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §?'§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §'F§
      {
         var _loc8_:Class = null;
         var _loc6_:§7H§;
         if(!(_loc6_ = §5!§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §7a§[param1]) == null)
         {
            if(!(_loc8_ = §&%§.§<7§(param1,false) as Class))
            {
               §2>§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §7a§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §>!9§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7H§ = §[W§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#!;§();
            dispatchEvent(new §'3§(§'3§.§7!E§,"",param1));
         }
      }
      
      public static function §@F§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§#!E§)
            {
               §2>§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §@o§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §;J§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §;J§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §;J§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §;J§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §;J§.willTrigger(param1);
      }
   }
}
