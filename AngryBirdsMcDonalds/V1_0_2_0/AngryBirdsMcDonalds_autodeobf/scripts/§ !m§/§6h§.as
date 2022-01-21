package § !m§
{
   import §7!d§.§'!5§;
   import §=<§.§1+§;
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
   
   public class §6h§
   {
      
      private static const §]R§:int = 128;
      
      private static var §?!>§:Boolean = true;
      
      private static var §=8§:int;
      
      private static var § !&§:Dictionary;
      
      private static var §]n§:Dictionary;
      
      private static var §1!W§:Dictionary;
      
      public static const §7!R§:String = "Default_Channel";
      
      public static const §-!i§:Boolean = false;
      
      private static var §[!j§:Boolean = true;
      
      private static var §,!T§:EventDispatcher = new EventDispatcher();
       
      
      public function §6h§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §[!j§ = param1;
      }
      
      public static function init() : void
      {
         § !&§ = new Dictionary();
         §]n§ = new Dictionary();
         §1!W§ = new Dictionary();
         §=8§ = 0;
         §9o§(§7!R§,4,1);
      }
      
      public static function §9o§(param1:String, param2:int, param3:Number) : void
      {
         if(§5!K§(param1) != null)
         {
            return;
         }
         if(§=8§ >= §]R§)
         {
            if(§-!i§)
            {
               §1+§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §]R§ + " reserved");
            }
            return;
         }
         if(§=8§ + param2 >= §]R§)
         {
            param2 = §]R§ - §=8§;
         }
         var _loc4_:§7O§;
         (_loc4_ = new §7O§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§@!D§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§!!c§);
         if(!§?!>§)
         {
            _loc4_.§!-§();
         }
         § !&§[param1.toLowerCase()] = _loc4_;
         §=8§ += param2;
      }
      
      public static function §5!K§(param1:String) : §7O§
      {
         return § !&§[param1.toLowerCase()];
      }
      
      public static function §?P§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § !&§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §#!2§(param1:Boolean) : void
      {
         var _loc2_:§7O§ = null;
         if(param1 == §?!>§)
         {
            return;
         }
         §?!>§ = param1;
         for each(_loc2_ in § !&§)
         {
            if(§?!>§)
            {
               _loc2_.§null§();
            }
            else
            {
               _loc2_.§!-§();
            }
         }
      }
      
      public static function §>!U§() : void
      {
         var _loc1_:§7O§ = null;
         for each(_loc1_ in § !&§)
         {
            _loc1_.§>!U§();
         }
         dispatchEvent(new §^P§(§^P§.§&L§));
      }
      
      public static function §7!X§() : Boolean
      {
         return §?!>§;
      }
      
      private static function §;]§(param1:String, param2:String) : §7O§
      {
         if(!§[!j§)
         {
            return null;
         }
         var _loc3_:§7O§ = §5!K§(param1);
         if(!_loc3_)
         {
            if(§-!i§)
            {
               §1+§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§2!D§())
         {
            if(§-!i§)
            {
               §1+§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §%!K§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : § !M§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^P§ = null;
         var _loc8_:§7O§;
         if(!(_loc8_ = §;]§(param4,param2)))
         {
            return null;
         }
         if(§1!W§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §]n§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§0!@§);
            _loc9_.addEventListener(Event.ID3,§+!R§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§>!A§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§>!A§);
            §]n§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §^P§(§^P§.§2!0§)).§!e§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§ !M§ = _loc8_.§-a§(_loc9_,param2,param5,param6,param7);
         §1!W§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §0!@§(param1:Event) : void
      {
         var _loc2_:§^P§ = new §^P§(§^P§.§ <§);
         _loc2_.§!e§ = §<!Y§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §<!Y§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §]n§)
         {
            _loc3_ = §]n§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §+!R§(param1:Event) : void
      {
      }
      
      private static function §>!A§(param1:ErrorEvent) : void
      {
         var _loc2_:§>!Y§ = new §>!Y§(§>!Y§.§@[§);
         var _loc3_:String = §<!Y§(Sound(param1.currentTarget));
         _loc2_.§!e§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §]n§[_loc3_];
         if(§1!W§[_loc3_])
         {
            § !M§(§1!W§[_loc3_]).§34§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §@!D§(param1:DataEvent) : void
      {
         delete §1!W§[param1.data];
         dispatchEvent(new §^P§(§^P§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §!!c§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §-a§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : § !M§
      {
         var _loc8_:Class = null;
         var _loc6_:§7O§;
         if(!(_loc6_ = §;]§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §]n§[param1]) == null)
         {
            if(!(_loc8_ = §'!5§.§-!P§(param1,false) as Class))
            {
               §1+§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §]n§[param1] = _loc7_;
         }
         return _loc6_.§-a§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §1x§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7O§ = §5!K§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>!U§();
            dispatchEvent(new §^P§(§^P§.§>@§,"",param1));
         }
      }
      
      public static function §5#§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§-!i§)
            {
               §1+§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §6h§.§-a§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §,!T§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §,!T§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §,!T§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §,!T§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §,!T§.willTrigger(param1);
      }
   }
}
