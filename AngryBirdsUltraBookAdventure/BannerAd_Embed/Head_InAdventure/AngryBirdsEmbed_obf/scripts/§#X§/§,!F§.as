package §#X§
{
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
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
   
   public class §,!F§
   {
      
      private static const §class§:int = 128;
      
      private static var §6N§:Boolean = true;
      
      private static var §2q§:int;
      
      private static var §<J§:Dictionary;
      
      private static var §[o§:Dictionary;
      
      private static var §7!7§:Dictionary;
      
      public static const §=!I§:String = "Default_Channel";
      
      public static const §@8§:Boolean = false;
      
      private static var §&-§:Boolean = true;
      
      private static var §3q§:EventDispatcher = new EventDispatcher();
       
      
      public function §,!F§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §&-§ = param1;
      }
      
      public static function init() : void
      {
         §<J§ = new Dictionary();
         §[o§ = new Dictionary();
         §7!7§ = new Dictionary();
         §2q§ = 0;
         §@o§(§=!I§,4,1);
      }
      
      public static function §@o§(param1:String, param2:int, param3:Number) : void
      {
         if(§=!H§(param1) != null)
         {
            return;
         }
         if(§2q§ >= §class§)
         {
            if(§@8§)
            {
               §7!+§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §class§ + " reserved");
            }
            return;
         }
         if(§2q§ + param2 >= §class§)
         {
            param2 = §class§ - §2q§;
         }
         var _loc4_:§;1§;
         (_loc4_ = new §;1§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§@q§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§!!K§);
         if(!§6N§)
         {
            _loc4_.§<g§();
         }
         §<J§[param1.toLowerCase()] = _loc4_;
         §2q§ += param2;
      }
      
      public static function §=!H§(param1:String) : §;1§
      {
         return §<J§[param1.toLowerCase()];
      }
      
      public static function §'E§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §<J§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §7!&§(param1:Boolean) : void
      {
         var _loc2_:§;1§ = null;
         if(param1 == §6N§)
         {
            return;
         }
         §6N§ = param1;
         for each(_loc2_ in §<J§)
         {
            if(§6N§)
            {
               _loc2_.§@z§();
            }
            else
            {
               _loc2_.§<g§();
            }
         }
      }
      
      public static function §?X§() : void
      {
         var _loc1_:§;1§ = null;
         for each(_loc1_ in §<J§)
         {
            _loc1_.§?X§();
         }
         dispatchEvent(new §3d§(§3d§.§^C§));
      }
      
      public static function §2?§() : Boolean
      {
         return §6N§;
      }
      
      private static function §9-§(param1:String, param2:String) : §;1§
      {
         if(!§&-§)
         {
            return null;
         }
         var _loc3_:§;1§ = §=!H§(param1);
         if(!_loc3_)
         {
            if(§@8§)
            {
               §7!+§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§]!!§())
         {
            if(§@8§)
            {
               §7!+§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §8u§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §=J§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§3d§ = null;
         var _loc8_:§;1§;
         if(!(_loc8_ = §9-§(param4,param2)))
         {
            return null;
         }
         if(§7!7§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §[o§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§'0§);
            _loc9_.addEventListener(Event.ID3,§2!8§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@W§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@W§);
            §[o§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §3d§(§3d§.§&5§)).§0!J§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§=J§ = _loc8_.§;v§(_loc9_,param2,param5,param6,param7);
         §7!7§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §'0§(param1:Event) : void
      {
         var _loc2_:§3d§ = new §3d§(§3d§.§;! §);
         _loc2_.§0!J§ = §-h§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §-h§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §[o§)
         {
            _loc3_ = §[o§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §2!8§(param1:Event) : void
      {
      }
      
      private static function §@W§(param1:ErrorEvent) : void
      {
         var _loc2_:§^U§ = new §^U§(§^U§.§^<§);
         var _loc3_:String = §-h§(Sound(param1.currentTarget));
         _loc2_.§0!J§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §[o§[_loc3_];
         if(§7!7§[_loc3_])
         {
            §=J§(§7!7§[_loc3_]).§3'§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §@q§(param1:DataEvent) : void
      {
         delete §7!7§[param1.data];
         dispatchEvent(new §3d§(§3d§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §!!K§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §;v§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §=J§
      {
         var _loc8_:Class = null;
         var _loc6_:§;1§;
         if(!(_loc6_ = §9-§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §[o§[param1]) == null)
         {
            if(!(_loc8_ = §]!>§.§8!@§(param1,false) as Class))
            {
               §7!+§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §[o§[param1] = _loc7_;
         }
         return _loc6_.§;v§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §@!9§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§;1§ = §=!H§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§?X§();
            dispatchEvent(new §3d§(§3d§.§2g§,"",param1));
         }
      }
      
      public static function §!!C§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§@8§)
            {
               §7!+§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §,!F§.§;v§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §3q§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3q§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §3q§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3q§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3q§.willTrigger(param1);
      }
   }
}
