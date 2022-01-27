package §3!S§
{
   import §`!w§.§^!$§;
   import com.rovio.assets.§1!h§;
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
   
   public class §<5§
   {
      
      private static const §9F§:int = 64;
      
      private static var §""0§:Boolean = true;
      
      private static var §!"D§:int;
      
      private static var §`D§:Dictionary;
      
      private static var §]!P§:Dictionary;
      
      private static var §&!m§:Dictionary;
      
      public static const §8"#§:String = "Default_Channel";
      
      public static const §++§:Boolean = false;
      
      private static var §<"D§:Boolean = true;
      
      private static var §,"4§:EventDispatcher = new EventDispatcher();
       
      
      public function §<5§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §<"D§ = param1;
      }
      
      public static function init() : void
      {
         §`D§ = new Dictionary();
         §]!P§ = new Dictionary();
         §&!m§ = new Dictionary();
         §!"D§ = 0;
         §@6§(§8"#§,4,1);
      }
      
      public static function §@6§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §^g§(param1) != null)
         {
            return;
         }
         if(§!"D§ >= §9F§)
         {
            if(!§++§)
            {
            }
            return;
         }
         if(§!"D§ + param2 >= §9F§)
         {
            param2 = §9F§ - §!"D§;
         }
         var _loc4_:§%q§;
         (_loc4_ = new §%q§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§,!Z§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§1""§);
         §`D§[param1.toLowerCase()] = _loc4_;
         §!"D§ += param2;
      }
      
      public static function §^g§(param1:String) : §%q§
      {
         if(!param1)
         {
            return null;
         }
         return §`D§[param1.toLowerCase()];
      }
      
      public static function §#"B§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §`D§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §4h§(param1:Boolean) : void
      {
         if(param1 == §""0§)
         {
            return;
         }
         §""0§ = param1;
         §&z§(§""0§);
      }
      
      public static function §@!x§(param1:Boolean) : void
      {
         var _loc2_:§%q§ = null;
         for each(_loc2_ in §`D§)
         {
            if(param1)
            {
               _loc2_.§^!_§();
            }
            else
            {
               _loc2_.§#!e§();
            }
         }
      }
      
      protected static function §&z§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §>!R§() : void
      {
         var _loc1_:§%q§ = null;
         for each(_loc1_ in §`D§)
         {
            _loc1_.§>!R§();
         }
         dispatchEvent(new §-T§(§-T§.§#"+§));
      }
      
      public static function get §`!8§() : Boolean
      {
         return §""0§;
      }
      
      private static function §-@§(param1:String, param2:String) : §%q§
      {
         if(!§<"D§)
         {
            return null;
         }
         var _loc3_:§%q§ = §^g§(param1);
         if(!_loc3_)
         {
            if(§++§)
            {
               §^!$§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§3!z§())
         {
            if(§++§)
            {
               §^!$§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §"l§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §"H§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-T§ = null;
         var _loc8_:§%q§;
         if(!(_loc8_ = §-@§(param4,param2)))
         {
            return null;
         }
         if(§&!m§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §]!P§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§;"1§);
            _loc9_.addEventListener(Event.ID3,§8!G§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§^n§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§^n§);
            §]!P§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §-T§(§-T§.§2U§)).§#0§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§"H§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §&!m§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §;"1§(param1:Event) : void
      {
         var _loc2_:§-T§ = new §-T§(§-T§.§!O§);
         _loc2_.§#0§ = §]!Y§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §]!Y§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §]!P§)
         {
            _loc3_ = §]!P§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §8!G§(param1:Event) : void
      {
      }
      
      private static function §^n§(param1:ErrorEvent) : void
      {
         var _loc2_:§?!%§ = new §?!%§(§?!%§.§="'§);
         var _loc3_:String = §]!Y§(Sound(param1.currentTarget));
         _loc2_.§#0§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §]!P§[_loc3_];
         if(§&!m§[_loc3_])
         {
            §"H§(§&!m§[_loc3_]).§^§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §,!Z§(param1:DataEvent) : void
      {
         delete §&!m§[param1.data];
         dispatchEvent(new §-T§(§-T§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §1""§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §"H§
      {
         var _loc6_:§%q§;
         if(!(_loc6_ = §-@§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = getSound(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function getSound(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §]!P§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §1!h§.§4!D§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §^!$§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §]!P§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §["'§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§%q§ = §^g§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>!R§();
            dispatchEvent(new §-T§(§-T§.§'!q§,"",param1));
         }
      }
      
      public static function §%!X§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§++§)
            {
               §^!$§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §<5§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §,"4§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §,"4§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §,"4§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §,"4§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §,"4§.willTrigger(param1);
      }
   }
}
