package §'0§
{
   import §@!;§.§!!=§;
   import com.rovio.assets.§5R§;
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
   
   public class §]!2§
   {
      
      private static const §1f§:int = 128;
      
      private static var §?U§:Boolean = true;
      
      private static var §^Y§:int;
      
      private static var §"!-§:Dictionary;
      
      private static var §=!?§:Dictionary;
      
      private static var §?!,§:Dictionary;
      
      public static const §"a§:String = "Default_Channel";
      
      public static const §@!<§:Boolean = false;
      
      private static var §6#§:Boolean = true;
      
      private static var §&!4§:EventDispatcher = new EventDispatcher();
       
      
      public function §]!2§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §6#§ = param1;
      }
      
      public static function init() : void
      {
         §"!-§ = new Dictionary();
         §=!?§ = new Dictionary();
         §?!,§ = new Dictionary();
         §^Y§ = 0;
         §+B§(§"a§,4,1);
      }
      
      public static function §+B§(param1:String, param2:int, param3:Number) : void
      {
         if(§;j§(param1) != null)
         {
            return;
         }
         if(§^Y§ >= §1f§)
         {
            if(§@!<§)
            {
               §!!=§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §1f§ + " reserved");
            }
            return;
         }
         if(§^Y§ + param2 >= §1f§)
         {
            param2 = §1f§ - §^Y§;
         }
         var _loc4_:§[>§;
         (_loc4_ = new §[>§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§&9§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§5!J§);
         if(!§?U§)
         {
            _loc4_.§-!8§();
         }
         §"!-§[param1.toLowerCase()] = _loc4_;
         §^Y§ += param2;
      }
      
      public static function §;j§(param1:String) : §[>§
      {
         return §"!-§[param1.toLowerCase()];
      }
      
      public static function §7w§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §"!-§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §]7§(param1:Boolean) : void
      {
         var _loc2_:§[>§ = null;
         if(param1 == §?U§)
         {
            return;
         }
         §?U§ = param1;
         for each(_loc2_ in §"!-§)
         {
            if(§?U§)
            {
               _loc2_.§`l§();
            }
            else
            {
               _loc2_.§-!8§();
            }
         }
      }
      
      public static function §^F§() : void
      {
         var _loc1_:§[>§ = null;
         for each(_loc1_ in §"!-§)
         {
            _loc1_.§^F§();
         }
         dispatchEvent(new §8g§(§8g§.§3X§));
      }
      
      public static function §'T§() : Boolean
      {
         return §?U§;
      }
      
      private static function §;u§(param1:String, param2:String) : §[>§
      {
         if(!§6#§)
         {
            return null;
         }
         var _loc3_:§[>§ = §;j§(param1);
         if(!_loc3_)
         {
            if(§@!<§)
            {
               §!!=§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§'!1§())
         {
            if(§@!<§)
            {
               §!!=§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function § Y§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §]!=§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§8g§ = null;
         var _loc8_:§[>§;
         if(!(_loc8_ = §;u§(param4,param2)))
         {
            return null;
         }
         if(§?!,§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §=!?§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§-E§);
            _loc9_.addEventListener(Event.ID3,§,G§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§1!L§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§1!L§);
            §=!?§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §8g§(§8g§.§7!K§)).§9!B§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§]!=§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §?!,§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §-E§(param1:Event) : void
      {
         var _loc2_:§8g§ = new §8g§(§8g§.§>!G§);
         _loc2_.§9!B§ = §,Z§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §,Z§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §=!?§)
         {
            _loc3_ = §=!?§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §,G§(param1:Event) : void
      {
      }
      
      private static function §1!L§(param1:ErrorEvent) : void
      {
         var _loc2_:§<w§ = new §<w§(§<w§.§8!6§);
         var _loc3_:String = §,Z§(Sound(param1.currentTarget));
         _loc2_.§9!B§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §=!?§[_loc3_];
         if(§?!,§[_loc3_])
         {
            §]!=§(§?!,§[_loc3_]).§#?§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §&9§(param1:DataEvent) : void
      {
         delete §?!,§[param1.data];
         dispatchEvent(new §8g§(§8g§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §5!J§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §]!=§
      {
         var _loc8_:Class = null;
         var _loc6_:§[>§;
         if(!(_loc6_ = §;u§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §=!?§[param1]) == null)
         {
            if(!(_loc8_ = §5R§.§6+§(param1,false) as Class))
            {
               §!!=§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §=!?§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §<!7§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§[>§ = §;j§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§^F§();
            dispatchEvent(new §8g§(§8g§.§"B§,"",param1));
         }
      }
      
      public static function §>!;§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§@!<§)
            {
               §!!=§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §]!2§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §&!4§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §&!4§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §&!4§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §&!4§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §&!4§.willTrigger(param1);
      }
   }
}
