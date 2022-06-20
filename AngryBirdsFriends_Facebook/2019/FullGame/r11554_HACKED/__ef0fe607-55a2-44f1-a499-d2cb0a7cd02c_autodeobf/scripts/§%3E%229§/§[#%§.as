package §>"9§
{
   import §9#K§.§=#f§;
   import com.rovio.assets.§2"O§;
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
   
   public class §[#%§
   {
      
      private static const §8S§:int = 128;
      
      private static var §2"q§:Boolean = true;
      
      private static var § #]§:int;
      
      private static var §8!;§:Dictionary;
      
      private static var §-$ §:Dictionary;
      
      private static var §9u§:Dictionary;
      
      public static const §0"f§:String = "Default_Channel";
      
      public static const §-"I§:String = "UI_Channel";
      
      public static const §-c§:Boolean = false;
      
      private static var §^#2§:Boolean = true;
      
      private static var §""t§:EventDispatcher = new EventDispatcher();
       
      
      public function §[#%§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §^#2§ = param1;
      }
      
      public static function init() : void
      {
         §8!;§ = new Dictionary();
         §-$ § = new Dictionary();
         §9u§ = new Dictionary();
         § #]§ = 0;
         §8!3§(§0"f§,4,0.8);
         §8!3§(§-"I§,4,0.9);
      }
      
      public static function §8!3§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §<"!§(param1) != null)
         {
            return;
         }
         if(§ #]§ >= §8S§)
         {
            if(!§-c§)
            {
            }
            return;
         }
         if(§ #]§ + param2 >= §8S§)
         {
            param2 = §8S§ - § #]§;
         }
         var _loc4_:§'#X§;
         (_loc4_ = new §'#X§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§#[§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§'#3§);
         §8!;§[param1.toLowerCase()] = _loc4_;
         § #]§ += param2;
      }
      
      public static function §<"!§(param1:String) : §'#X§
      {
         if(!param1)
         {
            return null;
         }
         return §8!;§[param1.toLowerCase()];
      }
      
      public static function §`!-§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §8!;§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §=E§(param1:Boolean) : void
      {
         if(param1 == §2"q§)
         {
            return;
         }
         §2"q§ = param1;
         §"#c§(§2"q§);
      }
      
      public static function §6"f§(param1:Boolean) : void
      {
         var _loc2_:§'#X§ = null;
         for each(_loc2_ in §8!;§)
         {
            if(param1)
            {
               _loc2_.§`"h§();
            }
            else
            {
               _loc2_.§;" §();
            }
         }
      }
      
      protected static function §"#c§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §^L§() : void
      {
         var _loc1_:§'#X§ = null;
         for each(_loc1_ in §8!;§)
         {
            _loc1_.§^L§();
         }
         dispatchEvent(new §4#8§(§4#8§.§5!d§));
      }
      
      public static function §<"I§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§'#X§ = null;
         for each(_loc2_ in §8!;§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§-!O§) == -1)
            {
               _loc2_.§<"I§();
            }
         }
         dispatchEvent(new §4#8§(§4#8§.§5!d§));
      }
      
      public static function §%x§() : void
      {
         var _loc1_:§'#X§ = null;
         for each(_loc1_ in §8!;§)
         {
            _loc1_.§%x§();
         }
      }
      
      public static function get §6!§() : Boolean
      {
         return §2"q§;
      }
      
      private static function §0#"§(param1:String, param2:String) : §'#X§
      {
         if(!§^#2§)
         {
            return null;
         }
         var _loc3_:§'#X§ = §<"!§(param1);
         if(!_loc3_)
         {
            if(§-c§)
            {
               §=#f§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§#x§())
         {
            if(§-c§)
            {
               §=#f§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §'#-§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §1"T§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§4#8§ = null;
         var _loc8_:§'#X§;
         if(!(_loc8_ = §0#"§(param4,param2)))
         {
            return null;
         }
         if(§9u§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §-$ §[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§6"U§);
            _loc9_.addEventListener(Event.ID3,§`#m§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§&$3§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§&$3§);
            §-$ §[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §4#8§(§4#8§.§ "N§)).§##§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§1"T§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §9u§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §6"U§(param1:Event) : void
      {
         var _loc2_:§4#8§ = new §4#8§(§4#8§.§;T§);
         _loc2_.§##§ = §@#"§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §@#"§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §-$ §)
         {
            _loc3_ = §-$ §[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §`#m§(param1:Event) : void
      {
      }
      
      private static function §&$3§(param1:ErrorEvent) : void
      {
         var _loc2_:§5!n§ = new §5!n§(§5!n§.§>"x§);
         var _loc3_:String = §@#"§(Sound(param1.currentTarget));
         _loc2_.§##§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §-$ §[_loc3_];
         if(§9u§[_loc3_])
         {
            §1"T§(§9u§[_loc3_]).§<"^§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §#[§(param1:DataEvent) : void
      {
         delete §9u§[param1.data];
         dispatchEvent(new §4#8§(§4#8§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §'#3§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §1"T§
      {
         var _loc6_:§'#X§;
         if(!(_loc6_ = §0#"§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §+"&§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §+"&§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §-$ §[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §2"O§.§`>§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §=#f§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §-$ §[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §3$A§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§'#X§ = §<"!§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§^L§();
            dispatchEvent(new §4#8§(§4#8§.§]^§,"",param1));
         }
      }
      
      public static function § [§(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §!"0§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §1"T§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) <= 1)
         {
            return §[#%§.playSound(param1,param2,param3,param4,param5);
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return §[#%§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §""t§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §""t§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §""t§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §""t§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §""t§.willTrigger(param1);
      }
      
      public static function §""k§(param1:String, param2:Number) : void
      {
         var _loc3_:§'#X§ = null;
         for each(_loc3_ in §8!;§)
         {
            if(_loc3_.§-!O§ == param1)
            {
               _loc3_.§6F§(param2);
               break;
            }
         }
      }
      
      public static function §`!q§(param1:String) : Number
      {
         var _loc2_:§'#X§ = null;
         for each(_loc2_ in §8!;§)
         {
            if(_loc2_.§-!O§ == param1)
            {
               return _loc2_.§6"]§;
            }
         }
         return 0;
      }
      
      public static function §!$&§(param1:String, param2:String) : Boolean
      {
         if(!param1 || !param2)
         {
            return false;
         }
         var _loc3_:§'#X§ = §8!;§[param2.toLowerCase()];
         if(_loc3_)
         {
            return _loc3_.§<#z§(param1) != null;
         }
         return false;
      }
   }
}
