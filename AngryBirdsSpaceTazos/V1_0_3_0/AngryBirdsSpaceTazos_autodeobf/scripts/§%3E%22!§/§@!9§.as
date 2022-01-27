package §>"!§
{
   import §6!C§.§6E§;
   import com.rovio.assets.§>!;§;
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
   
   public class §@!9§
   {
      
      private static const §!§:int = 64;
      
      private static var §5!e§:Boolean = true;
      
      private static var §5""§:int;
      
      private static var §-">§:Dictionary;
      
      private static var §@!V§:Dictionary;
      
      private static var §>;§:Dictionary;
      
      public static const §,"%§:String = "Default_Channel";
      
      public static const §5p§:Boolean = false;
      
      private static var §!t§:Boolean = true;
      
      private static var §9l§:EventDispatcher = new EventDispatcher();
       
      
      public function §@!9§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §!t§ = param1;
      }
      
      public static function init() : void
      {
         §-">§ = new Dictionary();
         §@!V§ = new Dictionary();
         §>;§ = new Dictionary();
         §5""§ = 0;
         §#!-§(§,"%§,4,1);
      }
      
      public static function §#!-§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §!y§(param1) != null)
         {
            return;
         }
         if(§5""§ >= §!§)
         {
            if(!§5p§)
            {
            }
            return;
         }
         if(§5""§ + param2 >= §!§)
         {
            param2 = §!§ - §5""§;
         }
         var _loc4_:§-p§;
         (_loc4_ = new §-p§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§0"C§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§"!Q§);
         §-">§[param1.toLowerCase()] = _loc4_;
         §5""§ += param2;
      }
      
      public static function §!y§(param1:String) : §-p§
      {
         if(!param1)
         {
            return null;
         }
         return §-">§[param1.toLowerCase()];
      }
      
      public static function §!D§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §-">§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §7!u§(param1:Boolean) : void
      {
         if(param1 == §5!e§)
         {
            return;
         }
         §5!e§ = param1;
         §-!f§(§5!e§);
      }
      
      public static function §>"B§(param1:Boolean) : void
      {
         var _loc2_:§-p§ = null;
         for each(_loc2_ in §-">§)
         {
            if(param1)
            {
               _loc2_.§[;§();
            }
            else
            {
               _loc2_.§#]§();
            }
         }
      }
      
      protected static function §-!f§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §["6§() : void
      {
         var _loc1_:§-p§ = null;
         for each(_loc1_ in §-">§)
         {
            _loc1_.§["6§();
         }
         dispatchEvent(new §?"$§(§?"$§.§@"-§));
      }
      
      public static function get §!j§() : Boolean
      {
         return §5!e§;
      }
      
      private static function §#"&§(param1:String, param2:String) : §-p§
      {
         if(!§!t§)
         {
            return null;
         }
         var _loc3_:§-p§ = §!y§(param1);
         if(!_loc3_)
         {
            if(§5p§)
            {
               §6E§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§ !O§())
         {
            if(§5p§)
            {
               §6E§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §'!E§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §"";§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§?"$§ = null;
         var _loc8_:§-p§;
         if(!(_loc8_ = §#"&§(param4,param2)))
         {
            return null;
         }
         if(§>;§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §@!V§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§^!-§);
            _loc9_.addEventListener(Event.ID3,§+!j§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§8!o§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§8!o§);
            §@!V§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §?"$§(§?"$§.§["=§)).§-!T§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§"";§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §>;§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §^!-§(param1:Event) : void
      {
         var _loc2_:§?"$§ = new §?"$§(§?"$§.§7"+§);
         _loc2_.§-!T§ = §,"2§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §,"2§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §@!V§)
         {
            _loc3_ = §@!V§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §+!j§(param1:Event) : void
      {
      }
      
      private static function §8!o§(param1:ErrorEvent) : void
      {
         var _loc2_:§?D§ = new §?D§(§?D§.§#!@§);
         var _loc3_:String = §,"2§(Sound(param1.currentTarget));
         _loc2_.§-!T§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §@!V§[_loc3_];
         if(§>;§[_loc3_])
         {
            §"";§(§>;§[_loc3_]).§;!V§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §0"C§(param1:DataEvent) : void
      {
         delete §>;§[param1.data];
         dispatchEvent(new §?"$§(§?"$§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §"!Q§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §"";§
      {
         var _loc6_:§-p§;
         if(!(_loc6_ = §#"&§(param2,param1)))
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
         var _loc3_:Sound = §@!V§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §>!;§.§+!u§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §6E§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §@!V§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §"!y§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§-p§ = §!y§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§["6§();
            dispatchEvent(new §?"$§(§?"$§.§-!C§,"",param1));
         }
      }
      
      public static function §#?§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§5p§)
            {
               §6E§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §@!9§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §9l§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §9l§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §9l§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §9l§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §9l§.willTrigger(param1);
      }
   }
}
