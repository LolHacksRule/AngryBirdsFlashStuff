package §-!Q§
{
   import §7'§.§!y§;
   import §>^§.§!6§;
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
   
   public class §,!7§
   {
      
      private static const §7!K§:int = 128;
      
      private static var §1!b§:Boolean = true;
      
      private static var §-!,§:int;
      
      private static var § J§:Dictionary;
      
      private static var §-w§:Dictionary;
      
      private static var §7!1§:Dictionary;
      
      public static const §@!7§:String = "Default_Channel";
      
      public static const §+'§:Boolean = false;
      
      private static var §,!R§:Boolean = true;
      
      private static var § N§:EventDispatcher = new EventDispatcher();
       
      
      public function §,!7§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §,!R§ = param1;
      }
      
      public static function init() : void
      {
         § J§ = new Dictionary();
         §-w§ = new Dictionary();
         §7!1§ = new Dictionary();
         §-!,§ = 0;
         §<!-§(§@!7§,4,1);
      }
      
      public static function §<!-§(param1:String, param2:int, param3:Number) : void
      {
         if(§-!§(param1) != null)
         {
            return;
         }
         if(§-!,§ >= §7!K§)
         {
            if(§+'§)
            {
               §!6§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §7!K§ + " reserved");
            }
            return;
         }
         if(§-!,§ + param2 >= §7!K§)
         {
            param2 = §7!K§ - §-!,§;
         }
         var _loc4_:§^J§;
         (_loc4_ = new §^J§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§7!3§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§ !!§);
         if(!§1!b§)
         {
            _loc4_.§`j§();
         }
         § J§[param1.toLowerCase()] = _loc4_;
         §-!,§ += param2;
      }
      
      public static function §-!§(param1:String) : §^J§
      {
         return § J§[param1.toLowerCase()];
      }
      
      public static function §#6§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § J§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §!!A§(param1:Boolean) : void
      {
         var _loc2_:§^J§ = null;
         if(param1 == §1!b§)
         {
            return;
         }
         §1!b§ = param1;
         for each(_loc2_ in § J§)
         {
            if(§1!b§)
            {
               _loc2_.§2!^§();
            }
            else
            {
               _loc2_.§`j§();
            }
         }
      }
      
      public static function §13§() : void
      {
         var _loc1_:§^J§ = null;
         for each(_loc1_ in § J§)
         {
            _loc1_.§13§();
         }
         dispatchEvent(new §-=§(§-=§.§6E§));
      }
      
      public static function §^m§() : Boolean
      {
         return §1!b§;
      }
      
      private static function §2>§(param1:String, param2:String) : §^J§
      {
         if(!§,!R§)
         {
            return null;
         }
         var _loc3_:§^J§ = §-!§(param1);
         if(!_loc3_)
         {
            if(§+'§)
            {
               §!6§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§ O§())
         {
            if(§+'§)
            {
               §!6§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §@!#§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §;l§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§-=§ = null;
         var _loc8_:§^J§;
         if(!(_loc8_ = §2>§(param4,param2)))
         {
            return null;
         }
         if(§7!1§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §-w§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§;!U§);
            _loc9_.addEventListener(Event.ID3,§@!5§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§];§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§];§);
            §-w§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §-=§(§-=§.§>!'§)).§%%§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§;l§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §7!1§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §;!U§(param1:Event) : void
      {
         var _loc2_:§-=§ = new §-=§(§-=§.§=!N§);
         _loc2_.§%%§ = §-!;§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §-!;§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §-w§)
         {
            _loc3_ = §-w§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §@!5§(param1:Event) : void
      {
      }
      
      private static function §];§(param1:ErrorEvent) : void
      {
         var _loc2_:§@?§ = new §@?§(§@?§.§'!0§);
         var _loc3_:String = §-!;§(Sound(param1.currentTarget));
         _loc2_.§%%§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §-w§[_loc3_];
         if(§7!1§[_loc3_])
         {
            §;l§(§7!1§[_loc3_]).§8!K§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §7!3§(param1:DataEvent) : void
      {
         delete §7!1§[param1.data];
         dispatchEvent(new §-=§(§-=§.SOUND_COMPLETE,param1.data));
      }
      
      private static function § !!§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §;l§
      {
         var _loc8_:Class = null;
         var _loc6_:§^J§;
         if(!(_loc6_ = §2>§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §-w§[param1]) == null)
         {
            if(!(_loc8_ = §!y§.§%!C§(param1,false) as Class))
            {
               §!6§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §-w§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §+!A§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§^J§ = §-!§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§13§();
            dispatchEvent(new §-=§(§-=§.§90§,"",param1));
         }
      }
      
      public static function §5%§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§+'§)
            {
               §!6§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §,!7§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         § N§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return § N§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         § N§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return § N§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return § N§.willTrigger(param1);
      }
   }
}
