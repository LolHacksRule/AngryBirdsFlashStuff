package §="2§
{
   import §5t§.Log;
   import com.rovio.assets.§5_§;
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
   
   public class §?!r§
   {
      
      private static const §8!4§:int = 128;
      
      private static var §0e§:Boolean = true;
      
      private static var §1#^§:int;
      
      private static var §0!h§:Dictionary;
      
      private static var §+"F§:Dictionary;
      
      private static var §?#2§:Dictionary;
      
      public static const §2!1§:String = "Default_Channel";
      
      public static const §<"-§:Boolean = false;
      
      private static var §4!;§:Boolean = true;
      
      private static var §3!K§:EventDispatcher = new EventDispatcher();
       
      
      public function §?!r§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §4!;§ = param1;
      }
      
      public static function init() : void
      {
         §0!h§ = new Dictionary();
         §+"F§ = new Dictionary();
         §?#2§ = new Dictionary();
         §1#^§ = 0;
         §,"d§(§2!1§,4,1);
      }
      
      public static function §,"d§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §2R§(param1) != null)
         {
            return;
         }
         if(§1#^§ >= §8!4§)
         {
            if(!§<"-§)
            {
            }
            return;
         }
         if(§1#^§ + param2 >= §8!4§)
         {
            param2 = §8!4§ - §1#^§;
         }
         var _loc4_:§="f§;
         (_loc4_ = new §="f§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§7j§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§5!9§);
         §0!h§[param1.toLowerCase()] = _loc4_;
         §1#^§ += param2;
      }
      
      public static function §2R§(param1:String) : §="f§
      {
         if(!param1)
         {
            return null;
         }
         return §0!h§[param1.toLowerCase()];
      }
      
      public static function §9##§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §0!h§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §2r§(param1:Boolean) : void
      {
         if(param1 == §0e§)
         {
            return;
         }
         §0e§ = param1;
         §>!^§(§0e§);
      }
      
      public static function §4#$§(param1:Boolean) : void
      {
         var _loc2_:§="f§ = null;
         for each(_loc2_ in §0!h§)
         {
            if(param1)
            {
               _loc2_.§!!j§();
            }
            else
            {
               _loc2_.§3!o§();
            }
         }
      }
      
      protected static function §>!^§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §0"#§() : void
      {
         var _loc1_:§="f§ = null;
         for each(_loc1_ in §0!h§)
         {
            _loc1_.§0"#§();
         }
         dispatchEvent(new §^L§(§^L§.§3#O§));
      }
      
      public static function get §`"5§() : Boolean
      {
         return §0e§;
      }
      
      private static function §-o§(param1:String, param2:String) : §="f§
      {
         if(!§4!;§)
         {
            return null;
         }
         var _loc3_:§="f§ = §2R§(param1);
         if(!_loc3_)
         {
            if(§<"-§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§>#H§())
         {
            if(§<"-§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §3!,§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4!5§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^L§ = null;
         var _loc8_:§="f§;
         if(!(_loc8_ = §-o§(param4,param2)))
         {
            return null;
         }
         if(§?#2§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §+"F§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§-H§);
            _loc9_.addEventListener(Event.ID3,§#"`§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§9![§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§9![§);
            §+"F§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §^L§(§^L§.§ !!§)).§<"S§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§4!5§ = _loc8_.§"#_§(_loc9_,param2,param5,param6,param7);
         §?#2§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §-H§(param1:Event) : void
      {
         var _loc2_:§^L§ = new §^L§(§^L§.§3q§);
         _loc2_.§<"S§ = §7"2§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §7"2§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §+"F§)
         {
            _loc3_ = §+"F§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §#"`§(param1:Event) : void
      {
      }
      
      private static function §9![§(param1:ErrorEvent) : void
      {
         var _loc2_:§&I§ = new §&I§(§&I§.§&c§);
         var _loc3_:String = §7"2§(Sound(param1.currentTarget));
         _loc2_.§<"S§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §+"F§[_loc3_];
         if(§?#2§[_loc3_])
         {
            §4!5§(§?#2§[_loc3_]).§!"^§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §7j§(param1:DataEvent) : void
      {
         delete §?#2§[param1.data];
         dispatchEvent(new §^L§(§^L§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §5!9§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §"#_§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4!5§
      {
         var _loc6_:§="f§;
         if(!(_loc6_ = §-o§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §1"Z§(param1)))
         {
            return null;
         }
         return _loc6_.§"#_§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1"Z§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §+"F§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §5_§.§`"G§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  Log.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §+"F§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §9"4§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§="f§ = §2R§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§0"#§();
            dispatchEvent(new §^L§(§^L§.§=b§,"",param1));
         }
      }
      
      public static function §]!H§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§<"-§)
            {
               Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §?!r§.§"#_§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §3!K§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §3!K§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §3!K§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §3!K§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §3!K§.willTrigger(param1);
      }
   }
}
