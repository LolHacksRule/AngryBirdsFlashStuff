package §<!4§
{
   import §!6§.§3!5§;
   import com.rovio.assets.§@h§;
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
   
   public class §25§
   {
      
      private static const §1-§:int = 128;
      
      private static var §<!P§:Boolean = true;
      
      private static var §,?§:int;
      
      private static var §3X§:Dictionary;
      
      private static var §`!9§:Dictionary;
      
      private static var §6,§:Dictionary;
      
      public static const §@!-§:String = "Default_Channel";
      
      public static const §=!G§:Boolean = false;
      
      private static var §!=§:Boolean = true;
      
      private static var §!F§:EventDispatcher = new EventDispatcher();
       
      
      public function §25§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §!=§ = param1;
      }
      
      public static function init() : void
      {
         §3X§ = new Dictionary();
         §`!9§ = new Dictionary();
         §6,§ = new Dictionary();
         §,?§ = 0;
         §5!G§(§@!-§,4,1);
      }
      
      public static function §5!G§(param1:String, param2:int, param3:Number) : void
      {
         if(§'!1§(param1) != null)
         {
            return;
         }
         if(§,?§ >= §1-§)
         {
            if(§=!G§)
            {
               §3!5§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §1-§ + " reserved");
            }
            return;
         }
         if(§,?§ + param2 >= §1-§)
         {
            param2 = §1-§ - §,?§;
         }
         var _loc4_:§=,§;
         (_loc4_ = new §=,§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§,^§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§6!'§);
         if(!§<!P§)
         {
            _loc4_.§4c§();
         }
         §3X§[param1.toLowerCase()] = _loc4_;
         §,?§ += param2;
      }
      
      public static function §'!1§(param1:String) : §=,§
      {
         return §3X§[param1.toLowerCase()];
      }
      
      public static function §<!5§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §3X§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §[5§(param1:Boolean) : void
      {
         var _loc2_:§=,§ = null;
         if(param1 == §<!P§)
         {
            return;
         }
         §<!P§ = param1;
         for each(_loc2_ in §3X§)
         {
            if(§<!P§)
            {
               _loc2_.§`;§();
            }
            else
            {
               _loc2_.§4c§();
            }
         }
      }
      
      public static function §=!7§() : void
      {
         var _loc1_:§=,§ = null;
         for each(_loc1_ in §3X§)
         {
            _loc1_.§=!7§();
         }
         dispatchEvent(new §?D§(§?D§.§1!<§));
      }
      
      public static function §%'§() : Boolean
      {
         return §<!P§;
      }
      
      private static function §9?§(param1:String, param2:String) : §=,§
      {
         if(!§!=§)
         {
            return null;
         }
         var _loc3_:§=,§ = §'!1§(param1);
         if(!_loc3_)
         {
            if(§=!G§)
            {
               §3!5§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§=!<§())
         {
            if(§=!G§)
            {
               §3!5§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §'B§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §;<§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§?D§ = null;
         var _loc8_:§=,§;
         if(!(_loc8_ = §9?§(param4,param2)))
         {
            return null;
         }
         if(§6,§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §`!9§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§4!5§);
            _loc9_.addEventListener(Event.ID3,§=!&§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§5u§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5u§);
            §`!9§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §?D§(§?D§.§&K§)).§-!"§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§;<§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §6,§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §4!5§(param1:Event) : void
      {
         var _loc2_:§?D§ = new §?D§(§?D§.§8!$§);
         _loc2_.§-!"§ = §^!=§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §^!=§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §`!9§)
         {
            _loc3_ = §`!9§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §=!&§(param1:Event) : void
      {
      }
      
      private static function §5u§(param1:ErrorEvent) : void
      {
         var _loc2_:§6l§ = new §6l§(§6l§.§&!"§);
         var _loc3_:String = §^!=§(Sound(param1.currentTarget));
         _loc2_.§-!"§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §`!9§[_loc3_];
         if(§6,§[_loc3_])
         {
            §;<§(§6,§[_loc3_]).§4!'§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §,^§(param1:DataEvent) : void
      {
         delete §6,§[param1.data];
         dispatchEvent(new §?D§(§?D§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §6!'§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §;<§
      {
         var _loc8_:Class = null;
         var _loc6_:§=,§;
         if(!(_loc6_ = §9?§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §`!9§[param1]) == null)
         {
            if(!(_loc8_ = §@h§.§[@§(param1,false) as Class))
            {
               §3!5§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §`!9§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §0!5§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§=,§ = §'!1§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§=!7§();
            dispatchEvent(new §?D§(§?D§.§&y§,"",param1));
         }
      }
      
      public static function §#f§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§=!G§)
            {
               §3!5§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §25§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §!F§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §!F§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §!F§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §!F§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §!F§.willTrigger(param1);
      }
   }
}
