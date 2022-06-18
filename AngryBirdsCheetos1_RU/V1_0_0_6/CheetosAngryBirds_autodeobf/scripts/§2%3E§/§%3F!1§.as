package §2>§
{
   import §'D§.§8e§;
   import §]0§.§%%§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §?!1§
   {
      
      private static const §^!T§:int = 128;
      
      private static var §'!"§:Boolean = true;
      
      private static var §2m§:int;
      
      private static var §>!Q§:Dictionary;
      
      private static var §`1§:Dictionary;
      
      public static const §?c§:String = "Default_Channel";
      
      public static const §`t§:Boolean = false;
      
      private static var §]!1§:Boolean = true;
      
      private static var §&!E§:EventDispatcher = new EventDispatcher();
       
      
      public function §?!1§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §]!1§ = param1;
      }
      
      public static function init() : void
      {
         §>!Q§ = new Dictionary();
         §`1§ = new Dictionary();
         §2m§ = 0;
         §5!D§(§?c§,4,1);
      }
      
      public static function §5!D§(param1:String, param2:int, param3:Number) : void
      {
         if(§,W§(param1) != null)
         {
            return;
         }
         if(§2m§ >= §^!T§)
         {
            if(§`t§)
            {
               §8e§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §^!T§ + " reserved");
            }
            return;
         }
         if(§2m§ + param2 >= §^!T§)
         {
            param2 = §^!T§ - §2m§;
         }
         var _loc4_:§]!G§ = new §]!G§(param1,param2,param3);
         if(!§'!"§)
         {
            _loc4_.§+2§();
         }
         §>!Q§[param1.toLowerCase()] = _loc4_;
         §2m§ += param2;
      }
      
      public static function §,W§(param1:String) : §]!G§
      {
         return §>!Q§[param1.toLowerCase()];
      }
      
      public static function §2E§(param1:Boolean) : void
      {
         var _loc2_:§]!G§ = null;
         if(param1 == §'!"§)
         {
            return;
         }
         §'!"§ = param1;
         for each(_loc2_ in §>!Q§)
         {
            if(§'!"§)
            {
               _loc2_.§4a§();
            }
            else
            {
               _loc2_.§+2§();
            }
         }
      }
      
      public static function §>a§() : void
      {
         var _loc1_:§]!G§ = null;
         for each(_loc1_ in §>!Q§)
         {
            _loc1_.§>a§();
         }
      }
      
      public static function §&!§() : Boolean
      {
         return §'!"§;
      }
      
      private static function §,P§(param1:String, param2:String) : §]!G§
      {
         if(!§]!1§)
         {
            return null;
         }
         var _loc3_:§]!G§ = §,W§(param1);
         if(!_loc3_)
         {
            if(§`t§)
            {
               §8e§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§0#§())
         {
            if(§`t§)
            {
               §8e§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §6!8§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4d§
      {
         var _loc10_:URLRequest = null;
         var _loc11_:SoundLoaderContext = null;
         var _loc12_:§#!Z§ = null;
         var _loc8_:§]!G§;
         if(!(_loc8_ = §,P§(param4,param2)))
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §`1§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§;s§);
            _loc9_.addEventListener(Event.ID3,§5t§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§0-§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0-§);
            §`1§[param2] = _loc9_;
            _loc10_ = new URLRequest(param1);
            _loc11_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc10_,_loc11_);
            (_loc12_ = new §#!Z§(§#!Z§.§8!H§)).§'!2§ = param2;
            dispatchEvent(_loc12_);
         }
         return _loc8_.§0!O§(_loc9_,param2,param5,param6,param7);
      }
      
      private static function §;s§(param1:Event) : void
      {
         var _loc2_:§#!Z§ = new §#!Z§(§#!Z§.§]4§);
         _loc2_.§'!2§ = §"!@§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §"!@§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §`1§)
         {
            _loc3_ = §`1§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §5t§(param1:Event) : void
      {
      }
      
      private static function §0-§(param1:ErrorEvent) : void
      {
         var _loc2_:§+s§ = new §+s§(§+s§.§[G§);
         _loc2_.§'!2§ = §"!@§(Sound(param1.currentTarget));
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         dispatchEvent(_loc2_);
      }
      
      public static function §0!O§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4d§
      {
         var _loc8_:Class = null;
         var _loc6_:§]!G§;
         if(!(_loc6_ = §,P§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §`1§[param1]) == null)
         {
            if(!(_loc8_ = §%%§.§in §(param1,false) as Class))
            {
               §8e§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §`1§[param1] = _loc7_;
         }
         return _loc6_.§0!O§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §!!=§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§]!G§ = §,W§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>a§();
         }
      }
      
      public static function §=n§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§`t§)
            {
               §8e§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §?!1§.§0!O§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §&!E§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §&!E§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §&!E§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §&!E§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §&!E§.willTrigger(param1);
      }
   }
}
