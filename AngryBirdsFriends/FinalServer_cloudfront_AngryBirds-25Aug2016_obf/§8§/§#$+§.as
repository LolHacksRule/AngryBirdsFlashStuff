package §8§#7
{
   import §!x§.§4"d§;
   import com.rovio.assets.§@`§;
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
   
   public class §#$+§
   {
      
      private static const §@Q§:int = 128;
      
      private static var §2#"§:Boolean = true;
      
      private static var §^9§:int;
      
      private static var § ";§:Dictionary;
      
      private static var §>#R§:Dictionary;
      
      private static var §%#g§:Dictionary;
      
      public static const §#"k§:String = "Default_Channel";
      
      public static const §'!o§:String = "UI_Channel";
      
      public static const §%#p§:Boolean = false;
      
      private static var §12§:Boolean = true;
      
      private static var §`#Y§:EventDispatcher = new EventDispatcher();
       
      
      public function §#$+§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §12§ = param1;
      }
      
      public static function init() : void
      {
         § ";§ = new Dictionary();
         §>#R§ = new Dictionary();
         §%#g§ = new Dictionary();
         §^9§ = 0;
         §9"]§(§#"k§,4,1);
         §9"]§(§'!o§,4,1);
      }
      
      public static function §9"]§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §#!C§(param1) != null)
         {
            return;
         }
         if(§^9§ >= §@Q§)
         {
            if(!§%#p§)
            {
            }
            return;
         }
         if(§^9§ + param2 >= §@Q§)
         {
            param2 = §@Q§ - §^9§;
         }
         var _loc4_:§7#!§;
         (_loc4_ = new §7#!§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§["g§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§+C§);
         § ";§[param1.toLowerCase()] = _loc4_;
         §^9§ += param2;
      }
      
      public static function §#!C§(param1:String) : §7#!§
      {
         if(!param1)
         {
            return null;
         }
         return § ";§[param1.toLowerCase()];
      }
      
      public static function §2!V§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § ";§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §-"Q§(param1:Boolean) : void
      {
         if(param1 == §2#"§)
         {
            return;
         }
         §2#"§ = param1;
         §`#g§(§2#"§);
      }
      
      public static function §<#H§(param1:Boolean) : void
      {
         var _loc2_:§7#!§ = null;
         for each(_loc2_ in § ";§)
         {
            if(param1)
            {
               _loc2_.§'#§();
            }
            else
            {
               _loc2_.§7#y§();
            }
         }
      }
      
      protected static function §`#g§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §#$-§() : void
      {
         var _loc1_:§7#!§ = null;
         for each(_loc1_ in § ";§)
         {
            _loc1_.§#$-§();
         }
         dispatchEvent(new §[!9§(§[!9§.§,s§));
      }
      
      public static function §#"r§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§7#!§ = null;
         for each(_loc2_ in § ";§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§2!4§) == -1)
            {
               _loc2_.§#"r§();
            }
         }
         dispatchEvent(new §[!9§(§[!9§.§,s§));
      }
      
      public static function §;$&§() : void
      {
         var _loc1_:§7#!§ = null;
         for each(_loc1_ in § ";§)
         {
            _loc1_.§;$&§();
         }
      }
      
      public static function get §=#T§() : Boolean
      {
         return §2#"§;
      }
      
      private static function §>$!§(param1:String, param2:String) : §7#!§
      {
         if(!§12§)
         {
            return null;
         }
         var _loc3_:§7#!§ = §#!C§(param1);
         if(!_loc3_)
         {
            if(§%#p§)
            {
               §4"d§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§#d§())
         {
            if(§%#p§)
            {
               §4"d§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §61§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §@!"§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§[!9§ = null;
         var _loc8_:§7#!§;
         if(!(_loc8_ = §>$!§(param4,param2)))
         {
            return null;
         }
         if(§%#g§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §>#R§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§9L§);
            _loc9_.addEventListener(Event.ID3,§%!§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§9!F§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9!F§);
            §>#R§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §[!9§(§[!9§.§ ^§)).§@!L§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§@!"§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §%#g§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §9L§(param1:Event) : void
      {
         var _loc2_:§[!9§ = new §[!9§(§[!9§.§<"-§);
         _loc2_.§@!L§ = §2[§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §2[§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §>#R§)
         {
            _loc3_ = §>#R§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §%!§(param1:Event) : void
      {
      }
      
      private static function §9!F§(param1:ErrorEvent) : void
      {
         var _loc2_:§,S§ = new §,S§(§,S§.§7!$§);
         var _loc3_:String = §2[§(Sound(param1.currentTarget));
         _loc2_.§@!L§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §>#R§[_loc3_];
         if(§%#g§[_loc3_])
         {
            §@!"§(§%#g§[_loc3_]).§+Z§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §["g§(param1:DataEvent) : void
      {
         delete §%#g§[param1.data];
         dispatchEvent(new §[!9§(§[!9§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §+C§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §@!"§
      {
         var _loc6_:§7#!§;
         if(!(_loc6_ = §>$!§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §3y§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §3y§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §>#R§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §@`§.§4!i§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §4"d§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §>#R§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §%!!§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7#!§ = §#!C§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#$-§();
            dispatchEvent(new §[!9§(§[!9§.§?#<§,"",param1));
         }
      }
      
      public static function §'E§(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §=#P§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §@!"§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) == 0)
         {
            if(§%#p§)
            {
               §4"d§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return null;
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return §#$+§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §`#Y§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §`#Y§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §`#Y§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §`#Y§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §`#Y§.willTrigger(param1);
      }
   }
}
