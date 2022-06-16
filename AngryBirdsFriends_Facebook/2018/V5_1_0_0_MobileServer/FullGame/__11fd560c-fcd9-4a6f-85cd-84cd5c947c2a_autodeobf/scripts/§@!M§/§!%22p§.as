package §@!M§
{
   import §]!6§.§6Y§;
   import com.rovio.assets.§!"f§;
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
   
   public class §!"p§
   {
      
      private static const §]#%§:int = 128;
      
      private static var §?v§:Boolean = true;
      
      private static var §4!T§:int;
      
      private static var §'#u§:Dictionary;
      
      private static var §8!5§:Dictionary;
      
      private static var §'+§:Dictionary;
      
      public static const §^#@§:String = "Default_Channel";
      
      public static const §+!;§:String = "UI_Channel";
      
      public static const §,I§:Boolean = false;
      
      private static var §9J§:Boolean = true;
      
      private static var §#"I§:EventDispatcher = new EventDispatcher();
       
      
      public function §!"p§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §9J§ = param1;
      }
      
      public static function init() : void
      {
         §'#u§ = new Dictionary();
         §8!5§ = new Dictionary();
         §'+§ = new Dictionary();
         §4!T§ = 0;
         §5#4§(§^#@§,4,0.8);
         §5#4§(§+!;§,4,0.9);
      }
      
      public static function §5#4§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §;!b§(param1) != null)
         {
            return;
         }
         if(§4!T§ >= §]#%§)
         {
            if(!§,I§)
            {
            }
            return;
         }
         if(§4!T§ + param2 >= §]#%§)
         {
            param2 = §]#%§ - §4!T§;
         }
         var _loc4_:§0!p§;
         (_loc4_ = new §0!p§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§`,§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§,#%§);
         §'#u§[param1.toLowerCase()] = _loc4_;
         §4!T§ += param2;
      }
      
      public static function §;!b§(param1:String) : §0!p§
      {
         if(!param1)
         {
            return null;
         }
         return §'#u§[param1.toLowerCase()];
      }
      
      public static function §]"p§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §'#u§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §-!9§(param1:Boolean) : void
      {
         if(param1 == §?v§)
         {
            return;
         }
         §?v§ = param1;
         §1#8§(§?v§);
      }
      
      public static function §!N§(param1:Boolean) : void
      {
         var _loc2_:§0!p§ = null;
         for each(_loc2_ in §'#u§)
         {
            if(param1)
            {
               _loc2_.§?#,§();
            }
            else
            {
               _loc2_.§%! §();
            }
         }
      }
      
      protected static function §1#8§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §>#p§() : void
      {
         var _loc1_:§0!p§ = null;
         for each(_loc1_ in §'#u§)
         {
            _loc1_.§>#p§();
         }
         dispatchEvent(new §?"<§(§?"<§.§;"H§));
      }
      
      public static function §7$3§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§0!p§ = null;
         for each(_loc2_ in §'#u§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§=q§) == -1)
            {
               _loc2_.§7$3§();
            }
         }
         dispatchEvent(new §?"<§(§?"<§.§;"H§));
      }
      
      public static function §8#l§() : void
      {
         var _loc1_:§0!p§ = null;
         for each(_loc1_ in §'#u§)
         {
            _loc1_.§8#l§();
         }
      }
      
      public static function get §<x§() : Boolean
      {
         return §?v§;
      }
      
      private static function §7#t§(param1:String, param2:String) : §0!p§
      {
         if(!§9J§)
         {
            return null;
         }
         var _loc3_:§0!p§ = §;!b§(param1);
         if(!_loc3_)
         {
            if(§,I§)
            {
               §6Y§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§4h§())
         {
            if(§,I§)
            {
               §6Y§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §[!X§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §^#p§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§?"<§ = null;
         var _loc8_:§0!p§;
         if(!(_loc8_ = §7#t§(param4,param2)))
         {
            return null;
         }
         if(§'+§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §8!5§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§6;§);
            _loc9_.addEventListener(Event.ID3,§>"8§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§;?§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§;?§);
            §8!5§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §?"<§(§?"<§.§,"9§)).§ ,§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§^#p§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §'+§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §6;§(param1:Event) : void
      {
         var _loc2_:§?"<§ = new §?"<§(§?"<§.§9#T§);
         _loc2_.§ ,§ = §0"K§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §0"K§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §8!5§)
         {
            _loc3_ = §8!5§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §>"8§(param1:Event) : void
      {
      }
      
      private static function §;?§(param1:ErrorEvent) : void
      {
         var _loc2_:§+N§ = new §+N§(§+N§.§2#k§);
         var _loc3_:String = §0"K§(Sound(param1.currentTarget));
         _loc2_.§ ,§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §8!5§[_loc3_];
         if(§'+§[_loc3_])
         {
            §^#p§(§'+§[_loc3_]).§;#C§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §`,§(param1:DataEvent) : void
      {
         delete §'+§[param1.data];
         dispatchEvent(new §?"<§(§?"<§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §,#%§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §^#p§
      {
         var _loc6_:§0!p§;
         if(!(_loc6_ = §7#t§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §-!w§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §-!w§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §8!5§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §!"f§.§##?§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §6Y§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §8!5§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §5#u§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§0!p§ = §;!b§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>#p§();
            dispatchEvent(new §?"<§(§?"<§.§#$8§,"",param1));
         }
      }
      
      public static function §4#3§(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §%!R§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §^#p§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) == 0)
         {
            return §!"p§.playSound(param1,param2,param3,param4,param5);
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return §!"p§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §#"I§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §#"I§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §#"I§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §#"I§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §#"I§.willTrigger(param1);
      }
      
      public static function §2!G§(param1:String, param2:Number) : void
      {
         var _loc3_:§0!p§ = null;
         for each(_loc3_ in §'#u§)
         {
            if(_loc3_.§=q§ == param1)
            {
               _loc3_.§""e§(param2);
               break;
            }
         }
      }
      
      public static function §%B§(param1:String) : Number
      {
         var _loc2_:§0!p§ = null;
         for each(_loc2_ in §'#u§)
         {
            if(_loc2_.§=q§ == param1)
            {
               return _loc2_.§0#x§;
            }
         }
         return 0;
      }
      
      public static function §+#0§(param1:String, param2:String) : Boolean
      {
         if(!param1 || !param2)
         {
            return false;
         }
         var _loc3_:§0!p§ = §'#u§[param2.toLowerCase()];
         if(_loc3_)
         {
            return _loc3_.§?W§(param1) != null;
         }
         return false;
      }
   }
}
