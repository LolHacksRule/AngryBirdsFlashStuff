package §#!0§
{
   import §3!O§.§5q§;
   import com.rovio.assets.§^3§;
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
   
   public class §#-§
   {
      
      private static const §#G§:int = 128;
      
      private static var §&!C§:Boolean = true;
      
      private static var §=!!§:int;
      
      private static var §3y§:Dictionary;
      
      private static var §;;§:Dictionary;
      
      private static var §3W§:Dictionary;
      
      public static const §<r§:String = "Default_Channel";
      
      public static const §4N§:Boolean = false;
      
      private static var §47§:Boolean = true;
      
      private static var §2#§:EventDispatcher = new EventDispatcher();
       
      
      public function §#-§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §47§ = param1;
      }
      
      public static function init() : void
      {
         §3y§ = new Dictionary();
         §;;§ = new Dictionary();
         §3W§ = new Dictionary();
         §=!!§ = 0;
         §[R§(§<r§,4,1);
      }
      
      public static function §[R§(param1:String, param2:int, param3:Number) : void
      {
         if(§=f§(param1) != null)
         {
            return;
         }
         if(§=!!§ >= §#G§)
         {
            if(§4N§)
            {
               §5q§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §#G§ + " reserved");
            }
            return;
         }
         if(§=!!§ + param2 >= §#G§)
         {
            param2 = §#G§ - §=!!§;
         }
         var _loc4_:§'5§;
         (_loc4_ = new §'5§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§-v§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§4A§);
         if(!§&!C§)
         {
            _loc4_.§;M§();
         }
         §3y§[param1.toLowerCase()] = _loc4_;
         §=!!§ += param2;
      }
      
      public static function §=f§(param1:String) : §'5§
      {
         return §3y§[param1.toLowerCase()];
      }
      
      public static function §[!D§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §3y§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §5R§(param1:Boolean) : void
      {
         var _loc2_:§'5§ = null;
         if(param1 == §&!C§)
         {
            return;
         }
         §&!C§ = param1;
         for each(_loc2_ in §3y§)
         {
            if(§&!C§)
            {
               _loc2_.§9O§();
            }
            else
            {
               _loc2_.§;M§();
            }
         }
      }
      
      public static function §[!>§() : void
      {
         var _loc1_:§'5§ = null;
         for each(_loc1_ in §3y§)
         {
            _loc1_.§[!>§();
         }
         dispatchEvent(new §;t§(§;t§.§8_§));
      }
      
      public static function §]! §() : Boolean
      {
         return §&!C§;
      }
      
      private static function §>C§(param1:String, param2:String) : §'5§
      {
         if(!§47§)
         {
            return null;
         }
         var _loc3_:§'5§ = §=f§(param1);
         if(!_loc3_)
         {
            if(§4N§)
            {
               §5q§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§[3§())
         {
            if(§4N§)
            {
               §5q§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §>U§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §0!7§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§;t§ = null;
         var _loc8_:§'5§;
         if(!(_loc8_ = §>C§(param4,param2)))
         {
            return null;
         }
         if(§3W§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §;;§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§^8§);
            _loc9_.addEventListener(Event.ID3,§]e§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§0!B§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0!B§);
            §;;§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §;t§(§;t§.§+c§)).§9R§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§0!7§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §3W§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §^8§(param1:Event) : void
      {
         var _loc2_:§;t§ = new §;t§(§;t§.§1!#§);
         _loc2_.§9R§ = §?[§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §?[§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §;;§)
         {
            _loc3_ = §;;§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §]e§(param1:Event) : void
      {
      }
      
      private static function §0!B§(param1:ErrorEvent) : void
      {
         var _loc2_:§&z§ = new §&z§(§&z§.§%R§);
         var _loc3_:String = §?[§(Sound(param1.currentTarget));
         _loc2_.§9R§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §;;§[_loc3_];
         if(§3W§[_loc3_])
         {
            §0!7§(§3W§[_loc3_]).§]!1§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §-v§(param1:DataEvent) : void
      {
         delete §3W§[param1.data];
         dispatchEvent(new §;t§(§;t§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §4A§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §0!7§
      {
         var _loc8_:Class = null;
         var _loc6_:§'5§;
         if(!(_loc6_ = §>C§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §;;§[param1]) == null)
         {
            if(!(_loc8_ = §^3§.§+_§(param1,false) as Class))
            {
               §5q§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §;;§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §`s§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§'5§ = §=f§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§[!>§();
            dispatchEvent(new §;t§(§;t§.§=[§,"",param1));
         }
      }
      
      public static function §-!'§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§4N§)
            {
               §5q§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §#-§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §2#§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §2#§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §2#§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §2#§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §2#§.willTrigger(param1);
      }
   }
}
