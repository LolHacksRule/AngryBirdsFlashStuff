package §%B§
{
   import §"p§.§@8§;
   import com.rovio.assets.§!"'§;
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
   
   public class §^k§
   {
      
      private static const §"!$§:int = 128;
      
      private static var §1"0§:Boolean = true;
      
      private static var §0V§:int;
      
      private static var §+!§:Dictionary;
      
      private static var § `§:Dictionary;
      
      private static var §0!l§:Dictionary;
      
      public static const §;"6§:String = "Default_Channel";
      
      public static const §=+§:Boolean = false;
      
      private static var §!"&§:Boolean = true;
      
      private static var §>!s§:EventDispatcher = new EventDispatcher();
       
      
      public function §^k§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §!"&§ = param1;
      }
      
      public static function init() : void
      {
         §+!§ = new Dictionary();
         § `§ = new Dictionary();
         §0!l§ = new Dictionary();
         §0V§ = 0;
         §>7§(§;"6§,4,1);
      }
      
      public static function §>7§(param1:String, param2:int, param3:Number) : void
      {
         if(§'!?§(param1) != null)
         {
            return;
         }
         if(§0V§ >= §"!$§)
         {
            if(§=+§)
            {
               §@8§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §"!$§ + " reserved");
            }
            return;
         }
         if(§0V§ + param2 >= §"!$§)
         {
            param2 = §"!$§ - §0V§;
         }
         var _loc4_:§=!&§;
         (_loc4_ = new §=!&§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§9C§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§<"6§);
         if(!§1"0§)
         {
            _loc4_.§%!6§();
         }
         §+!§[param1.toLowerCase()] = _loc4_;
         §0V§ += param2;
      }
      
      public static function §'!?§(param1:String) : §=!&§
      {
         return §+!§[param1.toLowerCase()];
      }
      
      public static function §7q§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+!§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §3q§(param1:Boolean) : void
      {
         var _loc2_:§=!&§ = null;
         if(param1 == §1"0§)
         {
            return;
         }
         §1"0§ = param1;
         for each(_loc2_ in §+!§)
         {
            if(§1"0§)
            {
               _loc2_.§]!m§();
            }
            else
            {
               _loc2_.§%!6§();
            }
         }
      }
      
      public static function §3,§() : void
      {
         var _loc1_:§=!&§ = null;
         for each(_loc1_ in §+!§)
         {
            _loc1_.§3,§();
         }
         dispatchEvent(new §&!3§(§&!3§.§'!k§));
      }
      
      public static function § ",§() : Boolean
      {
         return §1"0§;
      }
      
      private static function §]3§(param1:String, param2:String) : §=!&§
      {
         if(!§!"&§)
         {
            return null;
         }
         var _loc3_:§=!&§ = §'!?§(param1);
         if(!_loc3_)
         {
            if(§=+§)
            {
               §@8§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§&!T§())
         {
            if(§=+§)
            {
               §@8§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §9!C§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §7!9§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§&!3§ = null;
         var _loc8_:§=!&§;
         if(!(_loc8_ = §]3§(param4,param2)))
         {
            return null;
         }
         if(§0!l§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = § `§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§=!]§);
            _loc9_.addEventListener(Event.ID3,§;z§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§%!a§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§%!a§);
            § `§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §&!3§(§&!3§.§@"<§)).§8!-§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§7!9§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §0!l§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §=!]§(param1:Event) : void
      {
         var _loc2_:§&!3§ = new §&!3§(§&!3§.§"" §);
         _loc2_.§8!-§ = §@Y§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §@Y§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in § `§)
         {
            _loc3_ = § `§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §;z§(param1:Event) : void
      {
      }
      
      private static function §%!a§(param1:ErrorEvent) : void
      {
         var _loc2_:§8!T§ = new §8!T§(§8!T§.§3v§);
         var _loc3_:String = §@Y§(Sound(param1.currentTarget));
         _loc2_.§8!-§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete § `§[_loc3_];
         if(§0!l§[_loc3_])
         {
            §7!9§(§0!l§[_loc3_]).§'Q§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §9C§(param1:DataEvent) : void
      {
         delete §0!l§[param1.data];
         dispatchEvent(new §&!3§(§&!3§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §<"6§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §7!9§
      {
         var _loc8_:Class = null;
         var _loc6_:§=!&§;
         if(!(_loc6_ = §]3§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = § `§[param1]) == null)
         {
            if(!(_loc8_ = §!"'§.§%!Q§(param1,false) as Class))
            {
               §@8§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            § `§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §"E§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§=!&§ = §'!?§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§3,§();
            dispatchEvent(new §&!3§(§&!3§.§@n§,"",param1));
         }
      }
      
      public static function §<!I§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§=+§)
            {
               §@8§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §^k§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §>!s§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §>!s§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §>!s§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §>!s§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §>!s§.willTrigger(param1);
      }
   }
}
