package §`"1§
{
   import §9"`§.§-"H§;
   import com.rovio.assets.§%!Z§;
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
   
   public class §=Q§
   {
      
      private static const §2U§:int = 64;
      
      private static var §-d§:Boolean = true;
      
      private static var §&"x§:int;
      
      private static var § !q§:Dictionary;
      
      private static var §!!L§:Dictionary;
      
      private static var §?"k§:Dictionary;
      
      public static const §@"=§:String = "Default_Channel";
      
      public static const §3x§:Boolean = false;
      
      private static var §-v§:Boolean = true;
      
      private static var §<"8§:EventDispatcher = new EventDispatcher();
       
      
      public function §=Q§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §-v§ = param1;
      }
      
      public static function init() : void
      {
         § !q§ = new Dictionary();
         §!!L§ = new Dictionary();
         §?"k§ = new Dictionary();
         §&"x§ = 0;
         §`"u§(§@"=§,4,1);
      }
      
      public static function §`"u§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §+1§(param1) != null)
         {
            return;
         }
         if(§&"x§ >= §2U§)
         {
            if(!§3x§)
            {
            }
            return;
         }
         if(§&"x§ + param2 >= §2U§)
         {
            param2 = §2U§ - §&"x§;
         }
         var _loc4_:§7!&§;
         (_loc4_ = new §7!&§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§6"N§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§0p§);
         § !q§[param1.toLowerCase()] = _loc4_;
         §&"x§ += param2;
      }
      
      public static function §+1§(param1:String) : §7!&§
      {
         if(!param1)
         {
            return null;
         }
         return § !q§[param1.toLowerCase()];
      }
      
      public static function §>!K§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § !q§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §9-§(param1:Boolean) : void
      {
         if(param1 == §-d§)
         {
            return;
         }
         §-d§ = param1;
         §2"6§(§-d§);
      }
      
      public static function §^"F§(param1:Boolean) : void
      {
         var _loc2_:§7!&§ = null;
         for each(_loc2_ in § !q§)
         {
            if(param1)
            {
               _loc2_.§4&§();
            }
            else
            {
               _loc2_.§>"<§();
            }
         }
      }
      
      protected static function §2"6§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §!#,§() : void
      {
         var _loc1_:§7!&§ = null;
         for each(_loc1_ in § !q§)
         {
            _loc1_.§!#,§();
         }
         dispatchEvent(new §&"X§(§&"X§.§`!h§));
      }
      
      public static function get §2!8§() : Boolean
      {
         return §-d§;
      }
      
      private static function §,W§(param1:String, param2:String) : §7!&§
      {
         if(!§-v§)
         {
            return null;
         }
         var _loc3_:§7!&§ = §+1§(param1);
         if(!_loc3_)
         {
            if(§3x§)
            {
               §-"H§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§]^§())
         {
            if(§3x§)
            {
               §-"H§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §+!x§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §0"M§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§&"X§ = null;
         var _loc8_:§7!&§;
         if(!(_loc8_ = §,W§(param4,param2)))
         {
            return null;
         }
         if(§?"k§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §!!L§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§ &§);
            _loc9_.addEventListener(Event.ID3,§`t§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§[F§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§[F§);
            §!!L§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §&"X§(§&"X§.§,!W§)).§6!X§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§0"M§ = _loc8_.§`!A§(_loc9_,param2,param5,param6,param7);
         §?"k§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function § &§(param1:Event) : void
      {
         var _loc2_:§&"X§ = new §&"X§(§&"X§.§>"7§);
         _loc2_.§6!X§ = §2!@§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §2!@§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §!!L§)
         {
            _loc3_ = §!!L§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §`t§(param1:Event) : void
      {
      }
      
      private static function §[F§(param1:ErrorEvent) : void
      {
         var _loc2_:§%!!§ = new §%!!§(§%!!§.§[H§);
         var _loc3_:String = §2!@§(Sound(param1.currentTarget));
         _loc2_.§6!X§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §!!L§[_loc3_];
         if(§?"k§[_loc3_])
         {
            §0"M§(§?"k§[_loc3_]).§ "R§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §6"N§(param1:DataEvent) : void
      {
         delete §?"k§[param1.data];
         dispatchEvent(new §&"X§(§&"X§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §0p§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §`!A§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §0"M§
      {
         var _loc6_:§7!&§;
         if(!(_loc6_ = §,W§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §-#,§(param1)))
         {
            return null;
         }
         return _loc6_.§`!A§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §-#,§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §!!L§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §%!Z§.§;",§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §-"H§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §!!L§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §&"=§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7!&§ = §+1§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§!#,§();
            dispatchEvent(new §&"X§(§&"X§.§#"+§,"",param1));
         }
      }
      
      public static function §5"w§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§3x§)
            {
               §-"H§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §=Q§.§`!A§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §<"8§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §<"8§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §<"8§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §<"8§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §<"8§.willTrigger(param1);
      }
   }
}
