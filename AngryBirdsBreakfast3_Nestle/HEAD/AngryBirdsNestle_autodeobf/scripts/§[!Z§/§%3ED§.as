package §[!Z§
{
   import §24§.;
   import com.rovio.assets.§=!V§;
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
   
   public class §>D§
   {
      
      private static const §?!&§:int = 64;
      
      private static var §[!y§:Boolean = true;
      
      private static var §`"1§:int;
      
      private static var §["1§:Dictionary;
      
      private static var §&N§:Dictionary;
      
      private static var §57§:Dictionary;
      
      public static const §]!<§:String = "Default_Channel";
      
      public static const §<! §:Boolean = false;
      
      private static var §&"2§:Boolean = true;
      
      private static var §4S§:EventDispatcher = new EventDispatcher();
       
      
      public function §>D§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §&"2§ = param1;
      }
      
      public static function init() : void
      {
         §["1§ = new Dictionary();
         §&N§ = new Dictionary();
         §57§ = new Dictionary();
         §`"1§ = 0;
         §0"6§(§]!<§,4,1);
      }
      
      public static function §0"6§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §<d§(param1) != null)
         {
            return;
         }
         if(§`"1§ >= §?!&§)
         {
            if(!§<! §)
            {
            }
            return;
         }
         if(§`"1§ + param2 >= §?!&§)
         {
            param2 = §?!&§ - §`"1§;
         }
         var _loc4_:§&b§;
         (_loc4_ = new §&b§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§,!§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§&!+§);
         §["1§[param1.toLowerCase()] = _loc4_;
         §`"1§ += param2;
      }
      
      public static function §<d§(param1:String) : §&b§
      {
         if(!param1)
         {
            return null;
         }
         return §["1§[param1.toLowerCase()];
      }
      
      public static function §"X§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §["1§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §,"§(param1:Boolean) : void
      {
         if(param1 == §[!y§)
         {
            return;
         }
         §[!y§ = param1;
         §'N§(§[!y§);
      }
      
      public static function §%Q§(param1:Boolean) : void
      {
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §["1§)
         {
            if(param1)
            {
               _loc2_.§&",§();
            }
            else
            {
               _loc2_.§'D§();
            }
         }
      }
      
      protected static function §'N§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §>!%§() : void
      {
         var _loc1_:§&b§ = null;
         for each(_loc1_ in §["1§)
         {
            _loc1_.§>!%§();
         }
         dispatchEvent(new §4<§(§4<§.§7![§));
      }
      
      public static function get §3!%§() : Boolean
      {
         return §[!y§;
      }
      
      private static function §%p§(param1:String, param2:String) : §&b§
      {
         if(!§&"2§)
         {
            return null;
         }
         var _loc3_:§&b§ = §<d§(param1);
         if(!_loc3_)
         {
            if(§<! §)
            {
               §#7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§]!U§())
         {
            if(§<! §)
            {
               §#7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §%V§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §`v§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§4<§ = null;
         var _loc8_:§&b§;
         if(!(_loc8_ = §%p§(param4,param2)))
         {
            return null;
         }
         if(§57§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §&N§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§4"5§);
            _loc9_.addEventListener(Event.ID3,§ &§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§4!1§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§4!1§);
            §&N§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §4<§(§4<§.§1!N§)).§@!z§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§`v§ = _loc8_.§9!q§(_loc9_,param2,param5,param6,param7);
         §57§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §4"5§(param1:Event) : void
      {
         var _loc2_:§4<§ = new §4<§(§4<§.§1!`§);
         _loc2_.§@!z§ = §!n§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §!n§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §&N§)
         {
            _loc3_ = §&N§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function § &§(param1:Event) : void
      {
      }
      
      private static function §4!1§(param1:ErrorEvent) : void
      {
         var _loc2_:§1!%§ = new §1!%§(§1!%§.§2B§);
         var _loc3_:String = §!n§(Sound(param1.currentTarget));
         _loc2_.§@!z§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §&N§[_loc3_];
         if(§57§[_loc3_])
         {
            §`v§(§57§[_loc3_]).§,^§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §,!§(param1:DataEvent) : void
      {
         delete §57§[param1.data];
         dispatchEvent(new §4<§(§4<§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §&!+§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §9!q§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §`v§
      {
         var _loc6_:§&b§;
         if(!(_loc6_ = §%p§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §#!L§(param1)))
         {
            return null;
         }
         return _loc6_.§9!q§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §#!L§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §&N§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §=!V§.§?!O§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §#7§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §&N§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §6A§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§&b§ = §<d§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>!%§();
            dispatchEvent(new §4<§(§4<§.§>[§,"",param1));
         }
      }
      
      public static function §4W§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§<! §)
            {
               §#7§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §>D§.§9!q§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §4S§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §4S§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §4S§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §4S§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §4S§.willTrigger(param1);
      }
   }
}
