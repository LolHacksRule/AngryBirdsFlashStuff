package §-!#§
{
   import §#Z§.§?R§;
   import §`!W§.§2v§;
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
   
   public class §5!6§
   {
      
      private static const §26§:int = 128;
      
      private static var §0!a§:Boolean = true;
      
      private static var §?=§:int;
      
      private static var §+!O§:Dictionary;
      
      private static var §3!-§:Dictionary;
      
      private static var §5!'§:Dictionary;
      
      public static const §7t§:String = "Default_Channel";
      
      public static const §%!P§:Boolean = false;
      
      private static var §"!$§:Boolean = true;
      
      private static var §6w§:EventDispatcher = new EventDispatcher();
       
      
      public function §5!6§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §"!$§ = param1;
      }
      
      public static function init() : void
      {
         §+!O§ = new Dictionary();
         §3!-§ = new Dictionary();
         §5!'§ = new Dictionary();
         §?=§ = 0;
         §<!&§(§7t§,4,1);
      }
      
      public static function §<!&§(param1:String, param2:int, param3:Number) : void
      {
         if(§`!R§(param1) != null)
         {
            return;
         }
         if(§?=§ >= §26§)
         {
            if(§%!P§)
            {
               §2v§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §26§ + " reserved");
            }
            return;
         }
         if(§?=§ + param2 >= §26§)
         {
            param2 = §26§ - §?=§;
         }
         var _loc4_:§?q§;
         (_loc4_ = new §?q§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§?!0§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§#s§);
         if(!§0!a§)
         {
            _loc4_.§54§();
         }
         §+!O§[param1.toLowerCase()] = _loc4_;
         §?=§ += param2;
      }
      
      public static function §`!R§(param1:String) : §?q§
      {
         return §+!O§[param1.toLowerCase()];
      }
      
      public static function §5D§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+!O§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §+!>§(param1:Boolean) : void
      {
         var _loc2_:§?q§ = null;
         if(param1 == §0!a§)
         {
            return;
         }
         §0!a§ = param1;
         for each(_loc2_ in §+!O§)
         {
            if(§0!a§)
            {
               _loc2_.§1t§();
            }
            else
            {
               _loc2_.§54§();
            }
         }
      }
      
      public static function §#!a§() : void
      {
         var _loc1_:§?q§ = null;
         for each(_loc1_ in §+!O§)
         {
            _loc1_.§#!a§();
         }
         dispatchEvent(new §<F§(§<F§.§2!k§));
      }
      
      public static function §%4§() : Boolean
      {
         return §0!a§;
      }
      
      private static function §`!M§(param1:String, param2:String) : §?q§
      {
         if(!§"!$§)
         {
            return null;
         }
         var _loc3_:§?q§ = §`!R§(param1);
         if(!_loc3_)
         {
            if(§%!P§)
            {
               §2v§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§0f§())
         {
            if(§%!P§)
            {
               §2v§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function § F§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §;'§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§<F§ = null;
         var _loc8_:§?q§;
         if(!(_loc8_ = §`!M§(param4,param2)))
         {
            return null;
         }
         if(§5!'§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §3!-§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§5!7§);
            _loc9_.addEventListener(Event.ID3,§ !k§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§#!^§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§#!^§);
            §3!-§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §<F§(§<F§.§`!J§)).§-!6§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§;'§ = _loc8_.§8!G§(_loc9_,param2,param5,param6,param7);
         §5!'§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §5!7§(param1:Event) : void
      {
         var _loc2_:§<F§ = new §<F§(§<F§.§2!V§);
         _loc2_.§-!6§ = §,p§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §,p§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §3!-§)
         {
            _loc3_ = §3!-§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function § !k§(param1:Event) : void
      {
      }
      
      private static function §#!^§(param1:ErrorEvent) : void
      {
         var _loc2_:§,o§ = new §,o§(§,o§.§8<§);
         var _loc3_:String = §,p§(Sound(param1.currentTarget));
         _loc2_.§-!6§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §3!-§[_loc3_];
         if(§5!'§[_loc3_])
         {
            §;'§(§5!'§[_loc3_]).§-!P§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §?!0§(param1:DataEvent) : void
      {
         delete §5!'§[param1.data];
         dispatchEvent(new §<F§(§<F§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §#s§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §8!G§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §;'§
      {
         var _loc8_:Class = null;
         var _loc6_:§?q§;
         if(!(_loc6_ = §`!M§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §3!-§[param1]) == null)
         {
            if(!(_loc8_ = §?R§.§>e§(param1,false) as Class))
            {
               §2v§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §3!-§[param1] = _loc7_;
         }
         return _loc6_.§8!G§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §>R§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§?q§ = §`!R§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#!a§();
            dispatchEvent(new §<F§(§<F§.§!!1§,"",param1));
         }
      }
      
      public static function §4![§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§%!P§)
            {
               §2v§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §5!6§.§8!G§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §6w§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §6w§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §6w§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §6w§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §6w§.willTrigger(param1);
      }
   }
}
