package §;s§
{
   import § !Q§.§"D§;
   import com.rovio.assets.§[O§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §%!c§
   {
      
      private static const §4!c§:int = 64;
      
      private static var §0!u§:Boolean = true;
      
      private static var §!!N§:int;
      
      private static var §#!P§:Dictionary;
      
      private static var §+"2§:Dictionary;
      
      private static var § s§:Dictionary;
      
      public static const §+!?§:String = "Default_Channel";
      
      public static const §'!Z§:Boolean = false;
      
      private static var §-N§:Boolean = true;
      
      private static var §&v§:EventDispatcher = new EventDispatcher();
       
      
      public function §%!c§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §-N§ = param1;
      }
      
      public static function init() : void
      {
         §#!P§ = new Dictionary();
         §+"2§ = new Dictionary();
         § s§ = new Dictionary();
         §!!N§ = 0;
         §"!u§(§+!?§,4,1);
      }
      
      public static function §"!u§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §>b§(param1) != null)
         {
            return;
         }
         if(§!!N§ >= §4!c§)
         {
            if(!§'!Z§)
            {
            }
            return;
         }
         if(§!!N§ + param2 >= §4!c§)
         {
            param2 = §4!c§ - §!!N§;
         }
         var _loc4_:§ !y§;
         (_loc4_ = new § !y§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§,![§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§!q§);
         §#!P§[param1.toLowerCase()] = _loc4_;
         §!!N§ += param2;
      }
      
      public static function §>b§(param1:String) : § !y§
      {
         if(!param1)
         {
            return null;
         }
         return §#!P§[param1.toLowerCase()];
      }
      
      public static function §,!W§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §#!P§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §#!E§(param1:Boolean) : void
      {
         if(param1 == §0!u§)
         {
            return;
         }
         §0!u§ = param1;
         §+_§(§0!u§);
      }
      
      public static function §?!D§(param1:Boolean) : void
      {
         var _loc2_:§ !y§ = null;
         for each(_loc2_ in §#!P§)
         {
            if(param1)
            {
               _loc2_.§%3§();
            }
            else
            {
               _loc2_.§'!_§();
            }
         }
      }
      
      protected static function §+_§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §0O§() : void
      {
         var _loc1_:§ !y§ = null;
         for each(_loc1_ in §#!P§)
         {
            _loc1_.§0O§();
         }
         dispatchEvent(new §#!"§(§#!"§.§"u§));
      }
      
      public static function get §`!;§() : Boolean
      {
         return §0!u§;
      }
      
      private static function §0s§(param1:String, param2:String) : § !y§
      {
         if(!§-N§)
         {
            return null;
         }
         var _loc3_:§ !y§ = §>b§(param1);
         if(!_loc3_)
         {
            if(§'!Z§)
            {
               §"D§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§7!J§())
         {
            if(§'!Z§)
            {
               §"D§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §[!m§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §3q§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§#!"§ = null;
         var _loc8_:§ !y§;
         if(!(_loc8_ = §0s§(param4,param2)))
         {
            return null;
         }
         if(§ s§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §+"2§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§8""§);
            _loc9_.addEventListener(Event.ID3,§ !,§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§%K§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%K§);
            §+"2§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §#!"§(§#!"§.§1t§)).§8i§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§3q§ = _loc8_.§8" §(_loc9_,param2,param5,param6,param7);
         § s§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §8""§(param1:Event) : void
      {
         var _loc2_:§#!"§ = new §#!"§(§#!"§.§6!u§);
         _loc2_.§8i§ = §%L§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §%L§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §+"2§)
         {
            _loc3_ = §+"2§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function § !,§(param1:Event) : void
      {
      }
      
      private static function §%K§(param1:ErrorEvent) : void
      {
         var _loc2_:§0!d§ = new §0!d§(§0!d§.§5!V§);
         var _loc3_:String = §%L§(Sound(param1.currentTarget));
         _loc2_.§8i§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §+"2§[_loc3_];
         if(§ s§[_loc3_])
         {
            §3q§(§ s§[_loc3_]).§9!'§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §,![§(param1:DataEvent) : void
      {
         delete § s§[param1.data];
         dispatchEvent(new §#!"§(§#!"§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §!q§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §8" §(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §3q§
      {
         var _loc6_:§ !y§;
         if(!(_loc6_ = §0s§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §7!>§(param1)))
         {
            return null;
         }
         return _loc6_.§8" §(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!>§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §+"2§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §[O§.§1s§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §"D§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §+"2§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §#!G§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§ !y§ = §>b§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§0O§();
            dispatchEvent(new §#!"§(§#!"§.§3!J§,"",param1));
         }
      }
      
      public static function §!c§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§'!Z§)
            {
               §"D§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §%!c§.§8" §(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §&v§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §&v§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §&v§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §&v§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §&v§.willTrigger(param1);
      }
   }
}
