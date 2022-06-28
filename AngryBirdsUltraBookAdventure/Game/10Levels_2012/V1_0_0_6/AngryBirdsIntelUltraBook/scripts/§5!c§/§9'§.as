package §5!c§
{
   import §"x§.§-8§;
   import com.rovio.assets.§`!t§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §9'§
   {
      
      private static const §%8§:int = 128;
      
      private static var §<!&§:Boolean = true;
      
      private static var §<%§:int;
      
      private static var §2C§:Dictionary;
      
      private static var §^!g§:Dictionary;
      
      public static const § ^§:String = "Default_Channel";
      
      public static const §!§:Boolean = false;
      
      private static var §!d§:Boolean = true;
      
      private static var §=O§:EventDispatcher = new EventDispatcher();
       
      
      public function §9'§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §!d§ = param1;
      }
      
      public static function init() : void
      {
         §2C§ = new Dictionary();
         §^!g§ = new Dictionary();
         §<%§ = 0;
         §+!S§(§ ^§,4,1);
      }
      
      public static function §+!S§(param1:String, param2:int, param3:Number) : void
      {
         if(§<!5§(param1) != null)
         {
            return;
         }
         if(§<%§ >= §%8§)
         {
            if(§!§)
            {
               §-8§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §%8§ + " reserved");
            }
            return;
         }
         if(§<%§ + param2 >= §%8§)
         {
            param2 = §%8§ - §<%§;
         }
         var _loc4_:§-!t§ = new §-!t§(param1,param2,param3);
         if(!§<!&§)
         {
            _loc4_.§]T§();
         }
         §2C§[param1.toLowerCase()] = _loc4_;
         §<%§ += param2;
      }
      
      public static function §<!5§(param1:String) : §-!t§
      {
         return §2C§[param1.toLowerCase()];
      }
      
      public static function §[!f§(param1:Boolean) : void
      {
         var _loc2_:§-!t§ = null;
         if(param1 == §<!&§)
         {
            return;
         }
         §<!&§ = param1;
         for each(_loc2_ in §2C§)
         {
            if(§<!&§)
            {
               _loc2_.§"!G§();
            }
            else
            {
               _loc2_.§]T§();
            }
         }
      }
      
      public static function §0D§() : void
      {
         var _loc1_:§-!t§ = null;
         for each(_loc1_ in §2C§)
         {
            _loc1_.§0D§();
         }
      }
      
      public static function §5h§() : Boolean
      {
         return §<!&§;
      }
      
      private static function §!!§(param1:String, param2:String) : §-!t§
      {
         if(!§!d§)
         {
            return null;
         }
         var _loc3_:§-!t§ = §<!5§(param1);
         if(!_loc3_)
         {
            if(§!§)
            {
               §-8§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§ !"§())
         {
            if(§!§)
            {
               §-8§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §&!<§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §try§
      {
         var _loc10_:URLRequest = null;
         var _loc11_:SoundLoaderContext = null;
         var _loc12_:§ !p§ = null;
         var _loc8_:§-!t§;
         if(!(_loc8_ = §!!§(param4,param2)))
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §^!g§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§>]§);
            _loc9_.addEventListener(Event.ID3,§'!W§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@!W§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!W§);
            §^!g§[param2] = _loc9_;
            _loc10_ = new URLRequest(param1);
            _loc11_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc10_,_loc11_);
            (_loc12_ = new § !p§(§ !p§.§7!<§)).§>3§ = param2;
            dispatchEvent(_loc12_);
         }
         return _loc8_.playSound(_loc9_,param2,param5,param6,param7);
      }
      
      private static function §>]§(param1:Event) : void
      {
         var _loc2_:§ !p§ = new § !p§(§ !p§.§,m§);
         _loc2_.§>3§ = §`!r§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §`!r§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §^!g§)
         {
            _loc3_ = §^!g§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §'!W§(param1:Event) : void
      {
      }
      
      private static function §@!W§(param1:ErrorEvent) : void
      {
         var _loc2_:§ E§ = new § E§(§ E§.§88§);
         _loc2_.§>3§ = §`!r§(Sound(param1.currentTarget));
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         dispatchEvent(_loc2_);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §try§
      {
         var _loc8_:Class = null;
         var _loc6_:§-!t§;
         if(!(_loc6_ = §!!§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §^!g§[param1]) == null)
         {
            if(!(_loc8_ = §`!t§.§=J§(param1,false) as Class))
            {
               §-8§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §^!g§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!,§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§-!t§ = §<!5§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§0D§();
         }
      }
      
      public static function §!!`§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§!§)
            {
               §-8§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §9'§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §=O§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §=O§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §=O§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §=O§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §=O§.willTrigger(param1);
      }
   }
}
