package §3"V§
{
   import §6"p§.§^"t§;
   import com.rovio.assets.§[a§;
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
   
   public class § b§
   {
      
      private static const §2!m§:int = 128;
      
      private static var § !u§:Boolean = true;
      
      private static var §+"S§:int;
      
      private static var §^0§:Dictionary;
      
      private static var § ?§:Dictionary;
      
      private static var §9q§:Dictionary;
      
      public static const §1#-§:String = "Default_Channel";
      
      public static const §;$5§:String = "UI_Channel";
      
      public static const §##v§:Boolean = false;
      
      private static var §8"§:Boolean = true;
      
      private static var §%#@§:EventDispatcher = new EventDispatcher();
       
      
      public function § b§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §8"§ = param1;
      }
      
      public static function init() : void
      {
         §^0§ = new Dictionary();
         § ?§ = new Dictionary();
         §9q§ = new Dictionary();
         §+"S§ = 0;
         §%#C§(§1#-§,4,0.8);
         §%#C§(§;$5§,4,0.9);
      }
      
      public static function §%#C§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §]!L§(param1) != null)
         {
            return;
         }
         if(§+"S§ >= §2!m§)
         {
            if(!§##v§)
            {
            }
            return;
         }
         if(§+"S§ + param2 >= §2!m§)
         {
            param2 = §2!m§ - §+"S§;
         }
         var _loc4_:§3,§;
         (_loc4_ = new §3,§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§0$E§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§?!N§);
         §^0§[param1.toLowerCase()] = _loc4_;
         §+"S§ += param2;
      }
      
      public static function §]!L§(param1:String) : §3,§
      {
         if(!param1)
         {
            return null;
         }
         return §^0§[param1.toLowerCase()];
      }
      
      public static function §]X§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §^0§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §7$E§(param1:Boolean) : void
      {
         if(param1 == § !u§)
         {
            return;
         }
         § !u§ = param1;
         §0!v§(§ !u§);
      }
      
      public static function §"$1§(param1:Boolean) : void
      {
         var _loc2_:§3,§ = null;
         for each(_loc2_ in §^0§)
         {
            if(param1)
            {
               _loc2_.§"!"§();
            }
            else
            {
               _loc2_.§>$8§();
            }
         }
      }
      
      protected static function §0!v§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §#! §() : void
      {
         var _loc1_:§3,§ = null;
         for each(_loc1_ in §^0§)
         {
            _loc1_.§#! §();
         }
         dispatchEvent(new §%d§(§%d§.§25§));
      }
      
      public static function §[#;§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§3,§ = null;
         for each(_loc2_ in §^0§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§&$"§) == -1)
            {
               _loc2_.§[#;§();
            }
         }
         dispatchEvent(new §%d§(§%d§.§25§));
      }
      
      public static function §&"O§() : void
      {
         var _loc1_:§3,§ = null;
         for each(_loc1_ in §^0§)
         {
            _loc1_.§&"O§();
         }
      }
      
      public static function get §[$+§() : Boolean
      {
         return § !u§;
      }
      
      private static function §[C§(param1:String, param2:String) : §3,§
      {
         if(!§8"§)
         {
            return null;
         }
         var _loc3_:§3,§ = §]!L§(param1);
         if(!_loc3_)
         {
            if(§##v§)
            {
               §^"t§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§9";§())
         {
            if(§##v§)
            {
               §^"t§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §>#1§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §9$8§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§%d§ = null;
         var _loc8_:§3,§;
         if(!(_loc8_ = §[C§(param4,param2)))
         {
            return null;
         }
         if(§9q§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = § ?§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§"R§);
            _loc9_.addEventListener(Event.ID3,§ #l§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§?A§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§?A§);
            § ?§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §%d§(§%d§.§<#e§)).§9$,§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§9$8§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §9q§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §"R§(param1:Event) : void
      {
         var _loc2_:§%d§ = new §%d§(§%d§.§+!§);
         _loc2_.§9$,§ = §["w§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §["w§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in § ?§)
         {
            _loc3_ = § ?§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function § #l§(param1:Event) : void
      {
      }
      
      private static function §?A§(param1:ErrorEvent) : void
      {
         var _loc2_:§`"g§ = new §`"g§(§`"g§.§+#B§);
         var _loc3_:String = §["w§(Sound(param1.currentTarget));
         _loc2_.§9$,§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete § ?§[_loc3_];
         if(§9q§[_loc3_])
         {
            §9$8§(§9q§[_loc3_]).§[!p§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §0$E§(param1:DataEvent) : void
      {
         delete §9q§[param1.data];
         dispatchEvent(new §%d§(§%d§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §?!N§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §9$8§
      {
         var _loc6_:§3,§;
         if(!(_loc6_ = §[C§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §[l§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §[l§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = § ?§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §[a§.§8#k§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §^"t§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            § ?§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §8!7§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§3,§ = §]!L§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#! §();
            dispatchEvent(new §%d§(§%d§.§6!_§,"",param1));
         }
      }
      
      public static function §@#;§(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §^"8§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §9$8§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) <= 1)
         {
            return § b§.playSound(param1,param2,param3,param4,param5);
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return § b§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §%#@§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §%#@§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §%#@§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §%#@§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §%#@§.willTrigger(param1);
      }
      
      public static function §;k§(param1:String, param2:Number) : void
      {
         var _loc3_:§3,§ = null;
         for each(_loc3_ in §^0§)
         {
            if(_loc3_.§&$"§ == param1)
            {
               _loc3_.§4#e§(param2);
               break;
            }
         }
      }
      
      public static function §^!,§(param1:String) : Number
      {
         var _loc2_:§3,§ = null;
         for each(_loc2_ in §^0§)
         {
            if(_loc2_.§&$"§ == param1)
            {
               return _loc2_.§;I§;
            }
         }
         return 0;
      }
      
      public static function §,!&§(param1:String, param2:String) : Boolean
      {
         if(!param1 || !param2)
         {
            return false;
         }
         var _loc3_:§3,§ = §^0§[param2.toLowerCase()];
         if(_loc3_)
         {
            return _loc3_.§8"K§(param1) != null;
         }
         return false;
      }
   }
}
