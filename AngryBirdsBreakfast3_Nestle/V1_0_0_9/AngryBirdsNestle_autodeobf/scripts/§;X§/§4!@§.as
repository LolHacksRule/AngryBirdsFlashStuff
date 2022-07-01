package §;X§
{
   import §8!$§.§?p§;
   import com.rovio.assets.§1!C§;
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
   
   public class §4!@§
   {
      
      private static const §#!9§:int = 64;
      
      private static var §?!^§:Boolean = true;
      
      private static var §&" §:int;
      
      private static var §-!Y§:Dictionary;
      
      private static var §3I§:Dictionary;
      
      private static var §+O§:Dictionary;
      
      public static const §!!x§:String = "Default_Channel";
      
      public static const §4!v§:Boolean = false;
      
      private static var §#V§:Boolean = true;
      
      private static var §2`§:EventDispatcher = new EventDispatcher();
       
      
      public function §4!@§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §#V§ = param1;
      }
      
      public static function init() : void
      {
         §-!Y§ = new Dictionary();
         §3I§ = new Dictionary();
         §+O§ = new Dictionary();
         §&" § = 0;
         §=x§(§!!x§,4,1);
      }
      
      public static function §=x§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §6!w§(param1) != null)
         {
            return;
         }
         if(§&" § >= §#!9§)
         {
            if(!§4!v§)
            {
            }
            return;
         }
         if(§&" § + param2 >= §#!9§)
         {
            param2 = §#!9§ - §&" §;
         }
         var _loc4_:§>!a§;
         (_loc4_ = new §>!a§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§7!a§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§8[§);
         §-!Y§[param1.toLowerCase()] = _loc4_;
         §&" § += param2;
      }
      
      public static function §6!w§(param1:String) : §>!a§
      {
         if(!param1)
         {
            return null;
         }
         return §-!Y§[param1.toLowerCase()];
      }
      
      public static function §&!J§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §-!Y§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §,5§(param1:Boolean) : void
      {
         if(param1 == §?!^§)
         {
            return;
         }
         §?!^§ = param1;
         §[!H§(§?!^§);
      }
      
      public static function §7!G§(param1:Boolean) : void
      {
         var _loc2_:§>!a§ = null;
         for each(_loc2_ in §-!Y§)
         {
            if(param1)
            {
               _loc2_.§?!d§();
            }
            else
            {
               _loc2_.§9§();
            }
         }
      }
      
      protected static function §[!H§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function § true§() : void
      {
         var _loc1_:§>!a§ = null;
         for each(_loc1_ in §-!Y§)
         {
            _loc1_.§ true§();
         }
         dispatchEvent(new §#E§(§#E§.§1!5§));
      }
      
      public static function get §'!C§() : Boolean
      {
         return §?!^§;
      }
      
      private static function §;!-§(param1:String, param2:String) : §>!a§
      {
         if(!§#V§)
         {
            return null;
         }
         var _loc3_:§>!a§ = §6!w§(param1);
         if(!_loc3_)
         {
            if(§4!v§)
            {
               §?p§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§9C§())
         {
            if(§4!v§)
            {
               §?p§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §"J§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §&"7§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§#E§ = null;
         var _loc8_:§>!a§;
         if(!(_loc8_ = §;!-§(param4,param2)))
         {
            return null;
         }
         if(§+O§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §3I§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§5C§);
            _loc9_.addEventListener(Event.ID3,§,!M§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@!y§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!y§);
            §3I§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §#E§(§#E§.§^b§)).§-!&§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§&"7§ = _loc8_.§`!w§(_loc9_,param2,param5,param6,param7);
         §+O§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §5C§(param1:Event) : void
      {
         var _loc2_:§#E§ = new §#E§(§#E§.§<?§);
         _loc2_.§-!&§ = §-"6§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §-"6§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §3I§)
         {
            _loc3_ = §3I§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §,!M§(param1:Event) : void
      {
      }
      
      private static function §@!y§(param1:ErrorEvent) : void
      {
         var _loc2_:§&!@§ = new §&!@§(§&!@§.§%!d§);
         var _loc3_:String = §-"6§(Sound(param1.currentTarget));
         _loc2_.§-!&§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §3I§[_loc3_];
         if(§+O§[_loc3_])
         {
            §&"7§(§+O§[_loc3_]).§=!2§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §7!a§(param1:DataEvent) : void
      {
         delete §+O§[param1.data];
         dispatchEvent(new §#E§(§#E§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §8[§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §`!w§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §&"7§
      {
         var _loc6_:§>!a§;
         if(!(_loc6_ = §;!-§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §#F§(param1)))
         {
            return null;
         }
         return _loc6_.§`!w§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §#F§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §3I§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §1!C§.§"!&§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §?p§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §3I§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §`[§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§>!a§ = §6!w§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§ true§();
            dispatchEvent(new §#E§(§#E§.§;!H§,"",param1));
         }
      }
      
      public static function §#"§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§4!v§)
            {
               §?p§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §4!@§.§`!w§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §2`§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §2`§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §2`§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §2`§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §2`§.willTrigger(param1);
      }
   }
}
