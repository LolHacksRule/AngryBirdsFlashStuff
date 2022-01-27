package §,!1§
{
   import §"1§.§3'§;
   import com.rovio.assets.§[G§;
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
   
   public class §]e§
   {
      
      private static const §do§:int = 128;
      
      private static var §'!2§:Boolean = true;
      
      private static var §,A§:int;
      
      private static var §9+§:Dictionary;
      
      private static var §0[§:Dictionary;
      
      private static var §`3§:Dictionary;
      
      public static const §6n§:String = "Default_Channel";
      
      public static const §>k§:Boolean = false;
      
      private static var §,<§:Boolean = true;
      
      private static var § null§:EventDispatcher = new EventDispatcher();
       
      
      public function §]e§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §,<§ = param1;
      }
      
      public static function init() : void
      {
         §9+§ = new Dictionary();
         §0[§ = new Dictionary();
         §`3§ = new Dictionary();
         §,A§ = 0;
         §#x§(§6n§,4,1);
      }
      
      public static function §#x§(param1:String, param2:int, param3:Number) : void
      {
         if(§'!?§(param1) != null)
         {
            return;
         }
         if(§,A§ >= §do§)
         {
            if(§>k§)
            {
               §3'§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §do§ + " reserved");
            }
            return;
         }
         if(§,A§ + param2 >= §do§)
         {
            param2 = §do§ - §,A§;
         }
         var _loc4_:§+L§;
         (_loc4_ = new §+L§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§;@§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§#T§);
         if(!§'!2§)
         {
            _loc4_.§ !G§();
         }
         §9+§[param1.toLowerCase()] = _loc4_;
         §,A§ += param2;
      }
      
      public static function §'!?§(param1:String) : §+L§
      {
         return §9+§[param1.toLowerCase()];
      }
      
      public static function § !<§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §9+§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §5!0§(param1:Boolean) : void
      {
         var _loc2_:§+L§ = null;
         if(param1 == §'!2§)
         {
            return;
         }
         §'!2§ = param1;
         for each(_loc2_ in §9+§)
         {
            if(§'!2§)
            {
               _loc2_.§]E§();
            }
            else
            {
               _loc2_.§ !G§();
            }
         }
      }
      
      public static function §>$§() : void
      {
         var _loc1_:§+L§ = null;
         for each(_loc1_ in §9+§)
         {
            _loc1_.§>$§();
         }
         dispatchEvent(new §2!L§(§2!L§.§7S§));
      }
      
      public static function §#!E§() : Boolean
      {
         return §'!2§;
      }
      
      private static function §[1§(param1:String, param2:String) : §+L§
      {
         if(!§,<§)
         {
            return null;
         }
         var _loc3_:§+L§ = §'!?§(param1);
         if(!_loc3_)
         {
            if(§>k§)
            {
               §3'§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§%!#§())
         {
            if(§>k§)
            {
               §3'§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §-e§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §"?§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§2!L§ = null;
         var _loc8_:§+L§;
         if(!(_loc8_ = §[1§(param4,param2)))
         {
            return null;
         }
         if(§`3§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §0[§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§9%§);
            _loc9_.addEventListener(Event.ID3,§5!L§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§ !A§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§ !A§);
            §0[§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §2!L§(§2!L§.§+!N§)).§>]§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§"?§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §`3§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §9%§(param1:Event) : void
      {
         var _loc2_:§2!L§ = new §2!L§(§2!L§.§93§);
         _loc2_.§>]§ = §[X§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §[X§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §0[§)
         {
            _loc3_ = §0[§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §5!L§(param1:Event) : void
      {
      }
      
      private static function § !A§(param1:ErrorEvent) : void
      {
         var _loc2_:§7Y§ = new §7Y§(§7Y§.§]t§);
         var _loc3_:String = §[X§(Sound(param1.currentTarget));
         _loc2_.§>]§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §0[§[_loc3_];
         if(§`3§[_loc3_])
         {
            §"?§(§`3§[_loc3_]).§7"§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §;@§(param1:DataEvent) : void
      {
         delete §`3§[param1.data];
         dispatchEvent(new §2!L§(§2!L§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §#T§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §"?§
      {
         var _loc8_:Class = null;
         var _loc6_:§+L§;
         if(!(_loc6_ = §[1§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §0[§[param1]) == null)
         {
            if(!(_loc8_ = §[G§.§6u§(param1,false) as Class))
            {
               §3'§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §0[§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7&§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§+L§ = §'!?§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>$§();
            dispatchEvent(new §2!L§(§2!L§.§9l§,"",param1));
         }
      }
      
      public static function §<9§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§>k§)
            {
               §3'§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §]e§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         § null§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return § null§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         § null§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return § null§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return § null§.willTrigger(param1);
      }
   }
}
