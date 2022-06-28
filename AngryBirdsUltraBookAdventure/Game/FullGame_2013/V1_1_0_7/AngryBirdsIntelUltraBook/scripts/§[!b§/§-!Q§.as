package §[!b§
{
   import §1!B§.§<m§;
   import com.rovio.assets.§,!j§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §-!Q§
   {
      
      private static const §!h§:int = 128;
      
      private static var §0e§:Boolean = true;
      
      private static var §@!f§:int;
      
      private static var §>m§:Dictionary;
      
      private static var §?@§:Dictionary;
      
      private static var §5!W§:Dictionary;
      
      public static const §3Q§:String = "Default_Channel";
      
      public static const §-6§:Boolean = false;
      
      private static var §>!c§:Boolean = true;
      
      private static var §`!6§:EventDispatcher = new EventDispatcher();
       
      
      public function §-!Q§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §>!c§ = param1;
      }
      
      public static function init() : void
      {
         §>m§ = new Dictionary();
         §?@§ = new Dictionary();
         §5!W§ = new Dictionary();
         §@!f§ = 0;
         §"3§(§3Q§,4,1);
      }
      
      public static function §"3§(param1:String, param2:int, param3:Number) : void
      {
         if(§]a§(param1) != null)
         {
            return;
         }
         if(§@!f§ >= §!h§)
         {
            if(§-6§)
            {
               §<m§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §!h§ + " reserved");
            }
            return;
         }
         if(§@!f§ + param2 >= §!h§)
         {
            param2 = §!h§ - §@!f§;
         }
         var _loc4_:§0-§;
         (_loc4_ = new §0-§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§3%§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§'@§);
         if(!§0e§)
         {
            _loc4_.§"A§();
         }
         §>m§[param1.toLowerCase()] = _loc4_;
         §@!f§ += param2;
      }
      
      public static function §]a§(param1:String) : §0-§
      {
         return §>m§[param1.toLowerCase()];
      }
      
      public static function §4"$§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §>m§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §,!=§(param1:Boolean) : void
      {
         var _loc2_:§0-§ = null;
         if(param1 == §0e§)
         {
            return;
         }
         §0e§ = param1;
         for each(_loc2_ in §>m§)
         {
            if(§0e§)
            {
               _loc2_.§^^§();
            }
            else
            {
               _loc2_.§"A§();
            }
         }
      }
      
      public static function §4!$§() : void
      {
         var _loc1_:§0-§ = null;
         for each(_loc1_ in §>m§)
         {
            _loc1_.§4!$§();
         }
         dispatchEvent(new §-!4§(§-!4§.§=G§));
      }
      
      public static function §&c§() : Boolean
      {
         return §0e§;
      }
      
      private static function §6Z§(param1:String, param2:String) : §0-§
      {
         if(!§>!c§)
         {
            return null;
         }
         var _loc3_:§0-§ = §]a§(param1);
         if(!_loc3_)
         {
            if(§-6§)
            {
               §<m§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§@m§())
         {
            if(§-6§)
            {
               §<m§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §]!7§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §,!W§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-!4§ = null;
         var _loc8_:§0-§;
         if(!(_loc8_ = §6Z§(param4,param2)))
         {
            return null;
         }
         if(§5!W§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §?@§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§<1§);
            _loc9_.addEventListener(Event.ID3,§>!L§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§'!]§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§'!]§);
            §?@§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §-!4§(§-!4§.§]!5§)).§3!N§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§,!W§ = _loc8_.§#3§(_loc9_,param2,param5,param6,param7);
         §5!W§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §<1§(param1:Event) : void
      {
         var _loc2_:§-!4§ = new §-!4§(§-!4§.§3!3§);
         _loc2_.§3!N§ = §7" §(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §7" §(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §?@§)
         {
            _loc3_ = §?@§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §>!L§(param1:Event) : void
      {
      }
      
      private static function §'!]§(param1:ErrorEvent) : void
      {
         var _loc2_:§]!H§ = new §]!H§(§]!H§.§&!o§);
         var _loc3_:String = §7" §(Sound(param1.currentTarget));
         _loc2_.§3!N§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §?@§[_loc3_];
         if(§5!W§[_loc3_])
         {
            §,!W§(§5!W§[_loc3_]).§@!M§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §3%§(param1:DataEvent) : void
      {
         delete §5!W§[param1.data];
         dispatchEvent(new §-!4§(§-!4§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §'@§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §#3§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §,!W§
      {
         var _loc8_:Class = null;
         var _loc6_:§0-§;
         if(!(_loc6_ = §6Z§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §?@§[param1]) == null)
         {
            if(!(_loc8_ = §,!j§.§!!N§(param1,false) as Class))
            {
               §<m§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §?@§[param1] = _loc7_;
         }
         return _loc6_.§#3§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §^B§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§0-§ = §]a§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§4!$§();
            dispatchEvent(new §-!4§(§-!4§.§,5§,"",param1));
         }
      }
      
      public static function §7"$§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§-6§)
            {
               §<m§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §-!Q§.§#3§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §`!6§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §`!6§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §`!6§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §`!6§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §`!6§.willTrigger(param1);
      }
   }
}
