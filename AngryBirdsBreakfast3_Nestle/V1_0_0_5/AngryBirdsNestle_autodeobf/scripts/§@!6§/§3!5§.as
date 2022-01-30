package §@!6§
{
   import §0!$§.§#!-§;
   import com.rovio.assets.§<U§;
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
   
   public class §3!5§
   {
      
      private static const §]![§:int = 64;
      
      private static var §<!B§:Boolean = true;
      
      private static var §7!H§:int;
      
      private static var §?>§:Dictionary;
      
      private static var §'!T§:Dictionary;
      
      private static var §4w§:Dictionary;
      
      public static const §?w§:String = "Default_Channel";
      
      public static const §2!r§:Boolean = false;
      
      private static var §3!&§:Boolean = true;
      
      private static var §#!u§:EventDispatcher = new EventDispatcher();
       
      
      public function §3!5§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §3!&§ = param1;
      }
      
      public static function init() : void
      {
         §?>§ = new Dictionary();
         §'!T§ = new Dictionary();
         §4w§ = new Dictionary();
         §7!H§ = 0;
         §`Z§(§?w§,4,1);
      }
      
      public static function §`Z§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §`!'§(param1) != null)
         {
            return;
         }
         if(§7!H§ >= §]![§)
         {
            if(!§2!r§)
            {
            }
            return;
         }
         if(§7!H§ + param2 >= §]![§)
         {
            param2 = §]![§ - §7!H§;
         }
         var _loc4_:§%N§;
         (_loc4_ = new §%N§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§3!c§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§5g§);
         §?>§[param1.toLowerCase()] = _loc4_;
         §7!H§ += param2;
      }
      
      public static function §`!'§(param1:String) : §%N§
      {
         if(!param1)
         {
            return null;
         }
         return §?>§[param1.toLowerCase()];
      }
      
      public static function § 7§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §?>§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §0,§(param1:Boolean) : void
      {
         if(param1 == §<!B§)
         {
            return;
         }
         §<!B§ = param1;
         §,c§(§<!B§);
      }
      
      public static function §,J§(param1:Boolean) : void
      {
         var _loc2_:§%N§ = null;
         for each(_loc2_ in §?>§)
         {
            if(param1)
            {
               _loc2_.§?"2§();
            }
            else
            {
               _loc2_.§ "1§();
            }
         }
      }
      
      protected static function §,c§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §,!8§() : void
      {
         var _loc1_:§%N§ = null;
         for each(_loc1_ in §?>§)
         {
            _loc1_.§,!8§();
         }
         dispatchEvent(new §?!B§(§?!B§.§5!R§));
      }
      
      public static function get §!"3§() : Boolean
      {
         return §<!B§;
      }
      
      private static function §=Z§(param1:String, param2:String) : §%N§
      {
         if(!§3!&§)
         {
            return null;
         }
         var _loc3_:§%N§ = §`!'§(param1);
         if(!_loc3_)
         {
            if(§2!r§)
            {
               §#!-§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§"!8§())
         {
            if(§2!r§)
            {
               §#!-§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §>-§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §-Z§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§?!B§ = null;
         var _loc8_:§%N§;
         if(!(_loc8_ = §=Z§(param4,param2)))
         {
            return null;
         }
         if(§4w§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §'!T§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§8?§);
            _loc9_.addEventListener(Event.ID3,§0T§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§&P§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§&P§);
            §'!T§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §?!B§(§?!B§.§`;§)).§`3§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§-Z§ = _loc8_.§<!9§(_loc9_,param2,param5,param6,param7);
         §4w§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §8?§(param1:Event) : void
      {
         var _loc2_:§?!B§ = new §?!B§(§?!B§.§%!9§);
         _loc2_.§`3§ = §;!,§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §;!,§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §'!T§)
         {
            _loc3_ = §'!T§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §0T§(param1:Event) : void
      {
      }
      
      private static function §&P§(param1:ErrorEvent) : void
      {
         var _loc2_:§!q§ = new §!q§(§!q§.§%!_§);
         var _loc3_:String = §;!,§(Sound(param1.currentTarget));
         _loc2_.§`3§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §'!T§[_loc3_];
         if(§4w§[_loc3_])
         {
            §-Z§(§4w§[_loc3_]).§0!#§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §3!c§(param1:DataEvent) : void
      {
         delete §4w§[param1.data];
         dispatchEvent(new §?!B§(§?!B§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §5g§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §<!9§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §-Z§
      {
         var _loc6_:§%N§;
         if(!(_loc6_ = §=Z§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §7`§(param1)))
         {
            return null;
         }
         return _loc6_.§<!9§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7`§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §'!T§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §<U§.§5"0§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §#!-§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §'!T§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §55§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§%N§ = §`!'§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§,!8§();
            dispatchEvent(new §?!B§(§?!B§.§;!g§,"",param1));
         }
      }
      
      public static function §class§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§2!r§)
            {
               §#!-§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §3!5§.§<!9§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §#!u§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §#!u§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §#!u§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §#!u§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §#!u§.willTrigger(param1);
      }
   }
}
