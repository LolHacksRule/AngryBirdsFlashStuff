package §8#K§
{
   import §1#v§.§;!Y§;
   import com.rovio.assets.§6$A§;
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
   
   public class §3Z§
   {
      
      private static const §5!C§:int = 128;
      
      private static var §2?§:Boolean = true;
      
      private static var §!#i§:int;
      
      private static var §#"f§:Dictionary;
      
      private static var §#"'§:Dictionary;
      
      private static var §1$>§:Dictionary;
      
      public static const §8#R§:String = "Default_Channel";
      
      public static const §[!F§:String = "UI_Channel";
      
      public static const §5A§:Boolean = false;
      
      private static var §=!1§:Boolean = true;
      
      private static var §4#2§:EventDispatcher = new EventDispatcher();
       
      
      public function §3Z§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §=!1§ = param1;
      }
      
      public static function init() : void
      {
         §#"f§ = new Dictionary();
         §#"'§ = new Dictionary();
         §1$>§ = new Dictionary();
         §!#i§ = 0;
         §'#E§(§8#R§,4,0.8);
         §'#E§(§[!F§,4,0.9);
      }
      
      public static function §'#E§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §["C§(param1) != null)
         {
            return;
         }
         if(§!#i§ >= §5!C§)
         {
            if(!§5A§)
            {
            }
            return;
         }
         if(§!#i§ + param2 >= §5!C§)
         {
            param2 = §5!C§ - §!#i§;
         }
         var _loc4_:§@!m§;
         (_loc4_ = new §@!m§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§^T§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§5#i§);
         §#"f§[param1.toLowerCase()] = _loc4_;
         §!#i§ += param2;
      }
      
      public static function §["C§(param1:String) : §@!m§
      {
         if(!param1)
         {
            return null;
         }
         return §#"f§[param1.toLowerCase()];
      }
      
      public static function §1"M§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §#"f§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §[!§(param1:Boolean) : void
      {
         if(param1 == §2?§)
         {
            return;
         }
         §2?§ = param1;
         §%"m§(§2?§);
      }
      
      public static function §&@§(param1:Boolean) : void
      {
         var _loc2_:§@!m§ = null;
         for each(_loc2_ in §#"f§)
         {
            if(param1)
            {
               _loc2_.§1z§();
            }
            else
            {
               _loc2_.§1$?§();
            }
         }
      }
      
      protected static function §%"m§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §3j§() : void
      {
         var _loc1_:§@!m§ = null;
         for each(_loc1_ in §#"f§)
         {
            _loc1_.§3j§();
         }
         dispatchEvent(new §1^§(§1^§.§6!I§));
      }
      
      public static function §6"@§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§@!m§ = null;
         for each(_loc2_ in §#"f§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§!I§) == -1)
            {
               _loc2_.§6"@§();
            }
         }
         dispatchEvent(new §1^§(§1^§.§6!I§));
      }
      
      public static function §"x§() : void
      {
         var _loc1_:§@!m§ = null;
         for each(_loc1_ in §#"f§)
         {
            _loc1_.§"x§();
         }
      }
      
      public static function get §&"A§() : Boolean
      {
         return §2?§;
      }
      
      private static function §##D§(param1:String, param2:String) : §@!m§
      {
         if(!§=!1§)
         {
            return null;
         }
         var _loc3_:§@!m§ = §["C§(param1);
         if(!_loc3_)
         {
            if(§5A§)
            {
               §;!Y§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§08§())
         {
            if(§5A§)
            {
               §;!Y§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §0#3§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §-!o§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§1^§ = null;
         var _loc8_:§@!m§;
         if(!(_loc8_ = §##D§(param4,param2)))
         {
            return null;
         }
         if(§1$>§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §#"'§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§9"h§);
            _loc9_.addEventListener(Event.ID3,§,!O§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§?z§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§?z§);
            §#"'§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §1^§(§1^§.§^"7§)).§^"4§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§-!o§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §1$>§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §9"h§(param1:Event) : void
      {
         var _loc2_:§1^§ = new §1^§(§1^§.§[!n§);
         _loc2_.§^"4§ = §=2§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §=2§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §#"'§)
         {
            _loc3_ = §#"'§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §,!O§(param1:Event) : void
      {
      }
      
      private static function §?z§(param1:ErrorEvent) : void
      {
         var _loc2_:§0!,§ = new §0!,§(§0!,§.§5!%§);
         var _loc3_:String = §=2§(Sound(param1.currentTarget));
         _loc2_.§^"4§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §#"'§[_loc3_];
         if(§1$>§[_loc3_])
         {
            §-!o§(§1$>§[_loc3_]).§9#b§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §^T§(param1:DataEvent) : void
      {
         delete §1$>§[param1.data];
         dispatchEvent(new §1^§(§1^§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §5#i§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §-!o§
      {
         var _loc6_:§@!m§;
         if(!(_loc6_ = §##D§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §]3§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §]3§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §#"'§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §6$A§.§1!m§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §;!Y§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §#"'§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §&$?§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§@!m§ = §["C§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§3j§();
            dispatchEvent(new §1^§(§1^§.§-#N§,"",param1));
         }
      }
      
      public static function §>#Q§(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §8!K§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §-!o§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) <= 1)
         {
            return §3Z§.playSound(param1,param2,param3,param4,param5);
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return §3Z§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §4#2§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §4#2§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §4#2§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §4#2§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §4#2§.willTrigger(param1);
      }
      
      public static function §1#j§(param1:String, param2:Number) : void
      {
         var _loc3_:§@!m§ = null;
         for each(_loc3_ in §#"f§)
         {
            if(_loc3_.§!I§ == param1)
            {
               _loc3_.§6B§(param2);
               break;
            }
         }
      }
      
      public static function § "m§(param1:String) : Number
      {
         var _loc2_:§@!m§ = null;
         for each(_loc2_ in §#"f§)
         {
            if(_loc2_.§!I§ == param1)
            {
               return _loc2_.§>!N§;
            }
         }
         return 0;
      }
      
      public static function §&#D§(param1:String, param2:String) : Boolean
      {
         if(!param1 || !param2)
         {
            return false;
         }
         var _loc3_:§@!m§ = §#"f§[param2.toLowerCase()];
         if(_loc3_)
         {
            return _loc3_.§!p§(param1) != null;
         }
         return false;
      }
   }
}
