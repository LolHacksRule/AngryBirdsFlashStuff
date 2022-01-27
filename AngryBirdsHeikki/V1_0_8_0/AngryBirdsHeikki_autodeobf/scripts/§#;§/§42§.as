package §#;§
{
   import § !3§.§!X§;
   import §,y§.§?!0§;
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
   
   public class §42§
   {
      
      private static const §+@§:int = 128;
      
      private static var §@1§:Boolean = true;
      
      private static var §`!"§:int;
      
      private static var §]+§:Dictionary;
      
      private static var §6C§:Dictionary;
      
      private static var §%E§:Dictionary;
      
      public static const §<!W§:String = "Default_Channel";
      
      public static const §7!8§:Boolean = false;
      
      private static var §[!2§:Boolean = true;
      
      private static var §%!$§:EventDispatcher = new EventDispatcher();
       
      
      public function §42§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §[!2§ = param1;
      }
      
      public static function init() : void
      {
         §]+§ = new Dictionary();
         §6C§ = new Dictionary();
         §%E§ = new Dictionary();
         §`!"§ = 0;
         §-!+§(§<!W§,4,1);
      }
      
      public static function §-!+§(param1:String, param2:int, param3:Number) : void
      {
         if(§`v§(param1) != null)
         {
            return;
         }
         if(§`!"§ >= §+@§)
         {
            if(§7!8§)
            {
               §!X§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §+@§ + " reserved");
            }
            return;
         }
         if(§`!"§ + param2 >= §+@§)
         {
            param2 = §+@§ - §`!"§;
         }
         var _loc4_:§;!@§;
         (_loc4_ = new §;!@§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§^[§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§-K§);
         if(!§@1§)
         {
            _loc4_.§9E§();
         }
         §]+§[param1.toLowerCase()] = _loc4_;
         §`!"§ += param2;
      }
      
      public static function §`v§(param1:String) : §;!@§
      {
         return §]+§[param1.toLowerCase()];
      }
      
      public static function §]!&§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §]+§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §4!E§(param1:Boolean) : void
      {
         var _loc2_:§;!@§ = null;
         if(param1 == §@1§)
         {
            return;
         }
         §@1§ = param1;
         for each(_loc2_ in §]+§)
         {
            if(§@1§)
            {
               _loc2_.§8U§();
            }
            else
            {
               _loc2_.§9E§();
            }
         }
      }
      
      public static function §<!_§() : void
      {
         var _loc1_:§;!@§ = null;
         for each(_loc1_ in §]+§)
         {
            _loc1_.§<!_§();
         }
         dispatchEvent(new §9Z§(§9Z§.§#u§));
      }
      
      public static function §?!H§() : Boolean
      {
         return §@1§;
      }
      
      private static function §!8§(param1:String, param2:String) : §;!@§
      {
         if(!§[!2§)
         {
            return null;
         }
         var _loc3_:§;!@§ = §`v§(param1);
         if(!_loc3_)
         {
            if(§7!8§)
            {
               §!X§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§ T§())
         {
            if(§7!8§)
            {
               §!X§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §+4§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §?!,§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§9Z§ = null;
         var _loc8_:§;!@§;
         if(!(_loc8_ = §!8§(param4,param2)))
         {
            return null;
         }
         if(§%E§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §6C§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§@O§);
            _loc9_.addEventListener(Event.ID3,§3u§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§1X§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§1X§);
            §6C§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §9Z§(§9Z§.§<!2§)).§0!K§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§?!,§ = _loc8_.§;!`§(_loc9_,param2,param5,param6,param7);
         §%E§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §@O§(param1:Event) : void
      {
         var _loc2_:§9Z§ = new §9Z§(§9Z§.§8!X§);
         _loc2_.§0!K§ = §5!#§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §5!#§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §6C§)
         {
            _loc3_ = §6C§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §3u§(param1:Event) : void
      {
      }
      
      private static function §1X§(param1:ErrorEvent) : void
      {
         var _loc2_:§ each§ = new § each§(§ each§.§-=§);
         var _loc3_:String = §5!#§(Sound(param1.currentTarget));
         _loc2_.§0!K§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §6C§[_loc3_];
         if(§%E§[_loc3_])
         {
            §?!,§(§%E§[_loc3_]).§ set§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §^[§(param1:DataEvent) : void
      {
         delete §%E§[param1.data];
         dispatchEvent(new §9Z§(§9Z§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §-K§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §;!`§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §?!,§
      {
         var _loc8_:Class = null;
         var _loc6_:§;!@§;
         if(!(_loc6_ = §!8§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §6C§[param1]) == null)
         {
            if(!(_loc8_ = §?!0§.§^e§(param1,false) as Class))
            {
               §!X§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §6C§[param1] = _loc7_;
         }
         return _loc6_.§;!`§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §`!F§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§;!@§ = §`v§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§<!_§();
            dispatchEvent(new §9Z§(§9Z§.§`!2§,"",param1));
         }
      }
      
      public static function §9!=§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§7!8§)
            {
               §!X§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §42§.§;!`§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §%!$§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%!$§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §%!$§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%!$§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%!$§.willTrigger(param1);
      }
   }
}
