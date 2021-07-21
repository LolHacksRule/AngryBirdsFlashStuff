package §+[§
{
   import §'6§.§?!L§;
   import com.rovio.assets.§%!?§;
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
   
   public class §%G§
   {
      
      private static const §3N§:int = 128;
      
      private static var §95§:Boolean = true;
      
      private static var §#t§:int;
      
      private static var §1u§:Dictionary;
      
      private static var §'Z§:Dictionary;
      
      private static var §&J§:Dictionary;
      
      public static const §'§:String = "Default_Channel";
      
      public static const §`E§:Boolean = false;
      
      private static var §class§:Boolean = true;
      
      private static var §5X§:EventDispatcher = new EventDispatcher();
       
      
      public function §%G§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §class§ = param1;
      }
      
      public static function init() : void
      {
         §1u§ = new Dictionary();
         §'Z§ = new Dictionary();
         §&J§ = new Dictionary();
         §#t§ = 0;
         §>,§(§'§,4,1);
      }
      
      public static function §>,§(param1:String, param2:int, param3:Number) : void
      {
         if(§>Q§(param1) != null)
         {
            return;
         }
         if(§#t§ >= §3N§)
         {
            if(§`E§)
            {
               §?!L§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §3N§ + " reserved");
            }
            return;
         }
         if(§#t§ + param2 >= §3N§)
         {
            param2 = §3N§ - §#t§;
         }
         var _loc4_:§6a§;
         (_loc4_ = new §6a§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§^z§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§7!'§);
         if(!§95§)
         {
            _loc4_.§?T§();
         }
         §1u§[param1.toLowerCase()] = _loc4_;
         §#t§ += param2;
      }
      
      public static function §>Q§(param1:String) : §6a§
      {
         return §1u§[param1.toLowerCase()];
      }
      
      public static function §3m§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §1u§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §78§(param1:Boolean) : void
      {
         var _loc2_:§6a§ = null;
         if(param1 == §95§)
         {
            return;
         }
         §95§ = param1;
         for each(_loc2_ in §1u§)
         {
            if(§95§)
            {
               _loc2_.§?#§();
            }
            else
            {
               _loc2_.§?T§();
            }
         }
      }
      
      public static function §^R§() : void
      {
         var _loc1_:§6a§ = null;
         for each(_loc1_ in §1u§)
         {
            _loc1_.§^R§();
         }
         dispatchEvent(new §8!6§(§8!6§.§-G§));
      }
      
      public static function §8`§() : Boolean
      {
         return §95§;
      }
      
      private static function §3!?§(param1:String, param2:String) : §6a§
      {
         if(!§class§)
         {
            return null;
         }
         var _loc3_:§6a§ = §>Q§(param1);
         if(!_loc3_)
         {
            if(§`E§)
            {
               §?!L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§?Y§())
         {
            if(§`E§)
            {
               §?!L§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §]!@§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4J§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§8!6§ = null;
         var _loc8_:§6a§;
         if(!(_loc8_ = §3!?§(param4,param2)))
         {
            return null;
         }
         if(§&J§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §'Z§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§>Y§);
            _loc9_.addEventListener(Event.ID3,§8!<§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§6!%§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§6!%§);
            §'Z§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §8!6§(§8!6§.§=!'§)).§0V§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§4J§ = _loc8_.§48§(_loc9_,param2,param5,param6,param7);
         §&J§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §>Y§(param1:Event) : void
      {
         var _loc2_:§8!6§ = new §8!6§(§8!6§.§;h§);
         _loc2_.§0V§ = §6!3§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §6!3§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §'Z§)
         {
            _loc3_ = §'Z§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §8!<§(param1:Event) : void
      {
      }
      
      private static function §6!%§(param1:ErrorEvent) : void
      {
         var _loc2_:§?7§ = new §?7§(§?7§.§#!H§);
         var _loc3_:String = §6!3§(Sound(param1.currentTarget));
         _loc2_.§0V§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §'Z§[_loc3_];
         if(§&J§[_loc3_])
         {
            §4J§(§&J§[_loc3_]).§7`§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §^z§(param1:DataEvent) : void
      {
         delete §&J§[param1.data];
         dispatchEvent(new §8!6§(§8!6§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §7!'§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §48§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4J§
      {
         var _loc8_:Class = null;
         var _loc6_:§6a§;
         if(!(_loc6_ = §3!?§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §'Z§[param1]) == null)
         {
            if(!(_loc8_ = §%!?§.§4"§(param1,false) as Class))
            {
               §?!L§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §'Z§[param1] = _loc7_;
         }
         return _loc6_.§48§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §8e§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§6a§ = §>Q§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§^R§();
            dispatchEvent(new §8!6§(§8!6§.§>!$§,"",param1));
         }
      }
      
      public static function §'[§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§`E§)
            {
               §?!L§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §%G§.§48§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §5X§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §5X§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §5X§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §5X§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §5X§.willTrigger(param1);
      }
   }
}
