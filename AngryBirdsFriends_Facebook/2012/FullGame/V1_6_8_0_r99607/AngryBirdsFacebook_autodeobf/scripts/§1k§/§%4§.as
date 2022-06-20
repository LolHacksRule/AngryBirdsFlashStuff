package §1k§
{
   import §0!?§.§'!$§;
   import com.rovio.assets.§#!J§;
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
   
   public class §%4§
   {
      
      private static const §<!Z§:int = 128;
      
      private static var §^!?§:Boolean = true;
      
      private static var §0]§:int;
      
      private static var §!"C§:Dictionary;
      
      private static var §;"$§:Dictionary;
      
      private static var §=!9§:Dictionary;
      
      public static const §>5§:String = "Default_Channel";
      
      public static const §!L§:Boolean = false;
      
      private static var §4"?§:Boolean = true;
      
      private static var §<9§:EventDispatcher = new EventDispatcher();
       
      
      public function §%4§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §4"?§ = param1;
      }
      
      public static function init() : void
      {
         §!"C§ = new Dictionary();
         §;"$§ = new Dictionary();
         §=!9§ = new Dictionary();
         §0]§ = 0;
         §>$§(§>5§,4,1);
      }
      
      public static function §>$§(param1:String, param2:int, param3:Number) : void
      {
         if(§+!y§(param1) != null)
         {
            return;
         }
         if(§0]§ >= §<!Z§)
         {
            if(§!L§)
            {
               §'!$§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §<!Z§ + " reserved");
            }
            return;
         }
         if(§0]§ + param2 >= §<!Z§)
         {
            param2 = §<!Z§ - §0]§;
         }
         var _loc4_:§ !M§;
         (_loc4_ = new § !M§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§;1§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§&!c§);
         if(!§^!?§)
         {
            _loc4_.§ w§();
         }
         §!"C§[param1.toLowerCase()] = _loc4_;
         §0]§ += param2;
      }
      
      public static function §+!y§(param1:String) : § !M§
      {
         return §!"C§[param1.toLowerCase()];
      }
      
      public static function §3!_§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §!"C§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §>!6§(param1:Boolean) : void
      {
         var _loc2_:§ !M§ = null;
         if(param1 == §^!?§)
         {
            return;
         }
         §^!?§ = param1;
         for each(_loc2_ in §!"C§)
         {
            if(§^!?§)
            {
               _loc2_.§"O§();
            }
            else
            {
               _loc2_.§ w§();
            }
         }
      }
      
      public static function §9!0§() : void
      {
         var _loc1_:§ !M§ = null;
         for each(_loc1_ in §!"C§)
         {
            _loc1_.§9!0§();
         }
         dispatchEvent(new §7" §(§7" §.§!"0§));
      }
      
      public static function §3!1§() : Boolean
      {
         return §^!?§;
      }
      
      private static function §@=§(param1:String, param2:String) : § !M§
      {
         if(!§4"?§)
         {
            return null;
         }
         var _loc3_:§ !M§ = §+!y§(param1);
         if(!_loc3_)
         {
            if(§!L§)
            {
               §'!$§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§'T§())
         {
            if(§!L§)
            {
               §'!$§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §2"#§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §'"9§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§7" § = null;
         var _loc8_:§ !M§;
         if(!(_loc8_ = §@=§(param4,param2)))
         {
            return null;
         }
         if(§=!9§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §;"$§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§@2§);
            _loc9_.addEventListener(Event.ID3,§5!w§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§ "2§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§ "2§);
            §;"$§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §7" §(§7" §.§=!!§)).§?!i§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§'"9§ = _loc8_.§>f§(_loc9_,param2,param5,param6,param7);
         §=!9§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §@2§(param1:Event) : void
      {
         var _loc2_:§7" § = new §7" §(§7" §.§?!6§);
         _loc2_.§?!i§ = §;!&§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §;!&§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §;"$§)
         {
            _loc3_ = §;"$§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §5!w§(param1:Event) : void
      {
      }
      
      private static function § "2§(param1:ErrorEvent) : void
      {
         var _loc2_:§]"!§ = new §]"!§(§]"!§.§+!B§);
         var _loc3_:String = §;!&§(Sound(param1.currentTarget));
         _loc2_.§?!i§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §;"$§[_loc3_];
         if(§=!9§[_loc3_])
         {
            §'"9§(§=!9§[_loc3_]).§^!5§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §;1§(param1:DataEvent) : void
      {
         delete §=!9§[param1.data];
         dispatchEvent(new §7" §(§7" §.SOUND_COMPLETE,param1.data));
      }
      
      private static function §&!c§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §>f§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §'"9§
      {
         var _loc8_:Class = null;
         var _loc6_:§ !M§;
         if(!(_loc6_ = §@=§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §;"$§[param1]) == null)
         {
            if(!(_loc8_ = §#!J§.§1!Y§(param1,false) as Class))
            {
               §'!$§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §;"$§[param1] = _loc7_;
         }
         return _loc6_.§>f§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §&"@§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§ !M§ = §+!y§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§9!0§();
            dispatchEvent(new §7" §(§7" §.§[!B§,"",param1));
         }
      }
      
      public static function §#"?§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§!L§)
            {
               §'!$§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §%4§.§>f§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §<9§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §<9§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §<9§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §<9§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §<9§.willTrigger(param1);
      }
   }
}
