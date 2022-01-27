package §+y§
{
   import §@V§.§`!5§;
   import com.rovio.assets.§<x§;
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
   
   public class §3V§
   {
      
      private static const §9H§:int = 128;
      
      private static var §%!6§:Boolean = true;
      
      private static var §5u§:int;
      
      private static var §+t§:Dictionary;
      
      private static var §2!'§:Dictionary;
      
      private static var § P§:Dictionary;
      
      public static const §2!;§:String = "Default_Channel";
      
      public static const §&-§:Boolean = false;
      
      private static var §'F§:Boolean = true;
      
      private static var §!2§:EventDispatcher = new EventDispatcher();
       
      
      public function §3V§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §'F§ = param1;
      }
      
      public static function init() : void
      {
         §+t§ = new Dictionary();
         §2!'§ = new Dictionary();
         § P§ = new Dictionary();
         §5u§ = 0;
         §?L§(§2!;§,4,1);
      }
      
      public static function §?L§(param1:String, param2:int, param3:Number) : void
      {
         if(§6q§(param1) != null)
         {
            return;
         }
         if(§5u§ >= §9H§)
         {
            if(§&-§)
            {
               §`!5§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §9H§ + " reserved");
            }
            return;
         }
         if(§5u§ + param2 >= §9H§)
         {
            param2 = §9H§ - §5u§;
         }
         var _loc4_:§7!#§;
         (_loc4_ = new §7!#§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§1!F§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§+^§);
         if(!§%!6§)
         {
            _loc4_.§continue§();
         }
         §+t§[param1.toLowerCase()] = _loc4_;
         §5u§ += param2;
      }
      
      public static function §6q§(param1:String) : §7!#§
      {
         return §+t§[param1.toLowerCase()];
      }
      
      public static function §-E§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+t§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §2!L§(param1:Boolean) : void
      {
         var _loc2_:§7!#§ = null;
         if(param1 == §%!6§)
         {
            return;
         }
         §%!6§ = param1;
         for each(_loc2_ in §+t§)
         {
            if(§%!6§)
            {
               _loc2_.§32§();
            }
            else
            {
               _loc2_.§continue§();
            }
         }
      }
      
      public static function §0x§() : void
      {
         var _loc1_:§7!#§ = null;
         for each(_loc1_ in §+t§)
         {
            _loc1_.§0x§();
         }
         dispatchEvent(new §`!1§(§`!1§.§[J§));
      }
      
      public static function §]!%§() : Boolean
      {
         return §%!6§;
      }
      
      private static function §8!+§(param1:String, param2:String) : §7!#§
      {
         if(!§'F§)
         {
            return null;
         }
         var _loc3_:§7!#§ = §6q§(param1);
         if(!_loc3_)
         {
            if(§&-§)
            {
               §`!5§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§30§())
         {
            if(§&-§)
            {
               §`!5§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §@0§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §#h§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§`!1§ = null;
         var _loc8_:§7!#§;
         if(!(_loc8_ = §8!+§(param4,param2)))
         {
            return null;
         }
         if(§ P§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §2!'§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§>9§);
            _loc9_.addEventListener(Event.ID3,§+b§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§'q§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§'q§);
            §2!'§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §`!1§(§`!1§.§[!K§)).§>T§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§#h§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         § P§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §>9§(param1:Event) : void
      {
         var _loc2_:§`!1§ = new §`!1§(§`!1§.§3`§);
         _loc2_.§>T§ = §7! §(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §7! §(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §2!'§)
         {
            _loc3_ = §2!'§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §+b§(param1:Event) : void
      {
      }
      
      private static function §'q§(param1:ErrorEvent) : void
      {
         var _loc2_:§]D§ = new §]D§(§]D§.§0!2§);
         var _loc3_:String = §7! §(Sound(param1.currentTarget));
         _loc2_.§>T§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §2!'§[_loc3_];
         if(§ P§[_loc3_])
         {
            §#h§(§ P§[_loc3_]).§2e§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §1!F§(param1:DataEvent) : void
      {
         delete § P§[param1.data];
         dispatchEvent(new §`!1§(§`!1§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §+^§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §#h§
      {
         var _loc8_:Class = null;
         var _loc6_:§7!#§;
         if(!(_loc6_ = §8!+§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §2!'§[param1]) == null)
         {
            if(!(_loc8_ = §<x§.§,! §(param1,false) as Class))
            {
               §`!5§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §2!'§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §5!A§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§7!#§ = §6q§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§0x§();
            dispatchEvent(new §`!1§(§`!1§.§<w§,"",param1));
         }
      }
      
      public static function §7!1§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§&-§)
            {
               §`!5§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §3V§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §!2§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §!2§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §!2§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §!2§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §!2§.willTrigger(param1);
      }
   }
}
