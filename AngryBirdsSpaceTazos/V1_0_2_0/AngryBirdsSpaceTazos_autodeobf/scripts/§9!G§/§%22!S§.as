package §9!G§
{
   import §""<§.§#N§;
   import com.rovio.assets.§2!3§;
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
   
   public class §"!S§
   {
      
      private static const §,L§:int = 64;
      
      private static var §+"7§:Boolean = true;
      
      private static var §3%§:int;
      
      private static var §8!3§:Dictionary;
      
      private static var §?!n§:Dictionary;
      
      private static var §3"7§:Dictionary;
      
      public static const §@!w§:String = "Default_Channel";
      
      public static const §!u§:Boolean = false;
      
      private static var §;U§:Boolean = true;
      
      private static var §!"5§:EventDispatcher = new EventDispatcher();
       
      
      public function §"!S§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §;U§ = param1;
      }
      
      public static function init() : void
      {
         §8!3§ = new Dictionary();
         §?!n§ = new Dictionary();
         §3"7§ = new Dictionary();
         §3%§ = 0;
         §4+§(§@!w§,4,1);
      }
      
      public static function §4+§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §2"6§(param1) != null)
         {
            return;
         }
         if(§3%§ >= §,L§)
         {
            if(!§!u§)
            {
            }
            return;
         }
         if(§3%§ + param2 >= §,L§)
         {
            param2 = §,L§ - §3%§;
         }
         var _loc4_:§^!6§;
         (_loc4_ = new §^!6§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§1!=§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§4t§);
         §8!3§[param1.toLowerCase()] = _loc4_;
         §3%§ += param2;
      }
      
      public static function §2"6§(param1:String) : §^!6§
      {
         if(!param1)
         {
            return null;
         }
         return §8!3§[param1.toLowerCase()];
      }
      
      public static function § 0§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §8!3§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §#!P§(param1:Boolean) : void
      {
         if(param1 == §+"7§)
         {
            return;
         }
         §+"7§ = param1;
         §^V§(§+"7§);
      }
      
      public static function §%V§(param1:Boolean) : void
      {
         var _loc2_:§^!6§ = null;
         for each(_loc2_ in §8!3§)
         {
            if(param1)
            {
               _loc2_.§?M§();
            }
            else
            {
               _loc2_.§`!q§();
            }
         }
      }
      
      protected static function §^V§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §#9§() : void
      {
         var _loc1_:§^!6§ = null;
         for each(_loc1_ in §8!3§)
         {
            _loc1_.§#9§();
         }
         dispatchEvent(new §4"&§(§4"&§.§=!x§));
      }
      
      public static function get §1!Z§() : Boolean
      {
         return §+"7§;
      }
      
      private static function §4!y§(param1:String, param2:String) : §^!6§
      {
         if(!§;U§)
         {
            return null;
         }
         var _loc3_:§^!6§ = §2"6§(param1);
         if(!_loc3_)
         {
            if(§!u§)
            {
               §#N§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§#!B§())
         {
            if(§!u§)
            {
               §#N§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §""'§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §0!"§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§4"&§ = null;
         var _loc8_:§^!6§;
         if(!(_loc8_ = §4!y§(param4,param2)))
         {
            return null;
         }
         if(§3"7§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §?!n§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§%"'§);
            _loc9_.addEventListener(Event.ID3,§9-§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§1"8§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§1"8§);
            §?!n§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §4"&§(§4"&§.§8a§)).§'"$§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§0!"§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §3"7§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §%"'§(param1:Event) : void
      {
         var _loc2_:§4"&§ = new §4"&§(§4"&§.§]"5§);
         _loc2_.§'"$§ = §0W§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §0W§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §?!n§)
         {
            _loc3_ = §?!n§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §9-§(param1:Event) : void
      {
      }
      
      private static function §1"8§(param1:ErrorEvent) : void
      {
         var _loc2_:§,!M§ = new §,!M§(§,!M§.§3"E§);
         var _loc3_:String = §0W§(Sound(param1.currentTarget));
         _loc2_.§'"$§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §?!n§[_loc3_];
         if(§3"7§[_loc3_])
         {
            §0!"§(§3"7§[_loc3_]).§3!z§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §1!=§(param1:DataEvent) : void
      {
         delete §3"7§[param1.data];
         dispatchEvent(new §4"&§(§4"&§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §4t§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §0!"§
      {
         var _loc6_:§^!6§;
         if(!(_loc6_ = §4!y§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = getSound(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function getSound(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §?!n§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §2!3§.dynamic(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §#N§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §?!n§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §]R§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§^!6§ = §2"6§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#9§();
            dispatchEvent(new §4"&§(§4"&§.§"Y§,"",param1));
         }
      }
      
      public static function §?2§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§!u§)
            {
               §#N§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §"!S§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §!"5§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §!"5§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §!"5§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §!"5§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §!"5§.willTrigger(param1);
      }
   }
}
