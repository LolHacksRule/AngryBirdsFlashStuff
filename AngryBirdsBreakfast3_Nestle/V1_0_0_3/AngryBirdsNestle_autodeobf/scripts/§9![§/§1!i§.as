package §9![§
{
   import §=!7§.§1!7§;
   import com.rovio.assets.§^1§;
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
   
   public class §1!i§
   {
      
      private static const §#'§:int = 64;
      
      private static var §;!!§:Boolean = true;
      
      private static var §4%§:int;
      
      private static var §0'§:Dictionary;
      
      private static var § " §:Dictionary;
      
      private static var §^Z§:Dictionary;
      
      public static const §'!1§:String = "Default_Channel";
      
      public static const §]!@§:Boolean = false;
      
      private static var §+!$§:Boolean = true;
      
      private static var § !_§:EventDispatcher = new EventDispatcher();
       
      
      public function §1!i§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §+!$§ = param1;
      }
      
      public static function init() : void
      {
         §0'§ = new Dictionary();
         § " § = new Dictionary();
         §^Z§ = new Dictionary();
         §4%§ = 0;
         §[=§(§'!1§,4,1);
      }
      
      public static function §[=§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §?1§(param1) != null)
         {
            return;
         }
         if(§4%§ >= §#'§)
         {
            if(!§]!@§)
            {
            }
            return;
         }
         if(§4%§ + param2 >= §#'§)
         {
            param2 = §#'§ - §4%§;
         }
         var _loc4_:§'r§;
         (_loc4_ = new §'r§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§!"&§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§7u§);
         §0'§[param1.toLowerCase()] = _loc4_;
         §4%§ += param2;
      }
      
      public static function §?1§(param1:String) : §'r§
      {
         if(!param1)
         {
            return null;
         }
         return §0'§[param1.toLowerCase()];
      }
      
      public static function §5L§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §0'§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §-b§(param1:Boolean) : void
      {
         if(param1 == §;!!§)
         {
            return;
         }
         §;!!§ = param1;
         §;!f§(§;!!§);
      }
      
      public static function §4"5§(param1:Boolean) : void
      {
         var _loc2_:§'r§ = null;
         for each(_loc2_ in §0'§)
         {
            if(param1)
            {
               _loc2_.§!e§();
            }
            else
            {
               _loc2_.§#!4§();
            }
         }
      }
      
      protected static function §;!f§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function § !S§() : void
      {
         var _loc1_:§'r§ = null;
         for each(_loc1_ in §0'§)
         {
            _loc1_.§ !S§();
         }
         dispatchEvent(new §&!G§(§&!G§.§=W§));
      }
      
      public static function get §>o§() : Boolean
      {
         return §;!!§;
      }
      
      private static function §3!D§(param1:String, param2:String) : §'r§
      {
         if(!§+!$§)
         {
            return null;
         }
         var _loc3_:§'r§ = §?1§(param1);
         if(!_loc3_)
         {
            if(§]!@§)
            {
               §1!7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§4V§())
         {
            if(§]!@§)
            {
               §1!7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §6"&§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4Y§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§&!G§ = null;
         var _loc8_:§'r§;
         if(!(_loc8_ = §3!D§(param4,param2)))
         {
            return null;
         }
         if(§^Z§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = § " §[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§`6§);
            _loc9_.addEventListener(Event.ID3,§`"3§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§%o§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%o§);
            § " §[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §&!G§(§&!G§.§-!6§)).§'!=§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§4Y§ = _loc8_.§+!Y§(_loc9_,param2,param5,param6,param7);
         §^Z§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §`6§(param1:Event) : void
      {
         var _loc2_:§&!G§ = new §&!G§(§&!G§.§`!p§);
         _loc2_.§'!=§ = §8]§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §8]§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in § " §)
         {
            _loc3_ = § " §[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §`"3§(param1:Event) : void
      {
      }
      
      private static function §%o§(param1:ErrorEvent) : void
      {
         var _loc2_:dynamic = new dynamic(dynamic.§0!&§);
         var _loc3_:String = §8]§(Sound(param1.currentTarget));
         _loc2_.§'!=§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete § " §[_loc3_];
         if(§^Z§[_loc3_])
         {
            §4Y§(§^Z§[_loc3_]).§`"'§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §!"&§(param1:DataEvent) : void
      {
         delete §^Z§[param1.data];
         dispatchEvent(new §&!G§(§&!G§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §7u§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §+!Y§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4Y§
      {
         var _loc6_:§'r§;
         if(!(_loc6_ = §3!D§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §4!-§(param1)))
         {
            return null;
         }
         return _loc6_.§+!Y§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §4!-§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = § " §[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §^1§.§+!I§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §1!7§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            § " §[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §=!3§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§'r§ = §?1§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§ !S§();
            dispatchEvent(new §&!G§(§&!G§.§'!K§,"",param1));
         }
      }
      
      public static function §1!t§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§]!@§)
            {
               §1!7§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §1!i§.§+!Y§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         § !_§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return § !_§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         § !_§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return § !_§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return § !_§.willTrigger(param1);
      }
   }
}
