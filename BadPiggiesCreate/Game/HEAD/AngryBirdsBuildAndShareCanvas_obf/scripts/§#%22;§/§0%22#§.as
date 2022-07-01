package §#";§
{
   import §6]§.§,"0§;
   import com.rovio.assets.§69§;
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
   
   public class §0"#§
   {
      
      private static const §'f§:int = 128;
      
      private static var §'!U§:Boolean = true;
      
      private static var §,`§:int;
      
      private static var §+!s§:Dictionary;
      
      private static var §5-§:Dictionary;
      
      private static var §%L§:Dictionary;
      
      public static const §3!v§:String = "Default_Channel";
      
      public static const §6"$§:Boolean = false;
      
      private static var §6",§:Boolean = true;
      
      private static var §@J§:EventDispatcher = new EventDispatcher();
       
      
      public function §0"#§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §6",§ = param1;
      }
      
      public static function init() : void
      {
         §+!s§ = new Dictionary();
         §5-§ = new Dictionary();
         §%L§ = new Dictionary();
         §,`§ = 0;
         §4!m§(§3!v§,4,1);
      }
      
      public static function §4!m§(param1:String, param2:int, param3:Number) : void
      {
         if(§9!$§(param1) != null)
         {
            return;
         }
         if(§,`§ >= §'f§)
         {
            if(§6"$§)
            {
               §,"0§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §'f§ + " reserved");
            }
            return;
         }
         if(§,`§ + param2 >= §'f§)
         {
            param2 = §'f§ - §,`§;
         }
         var _loc4_:§,%§;
         (_loc4_ = new §,%§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§%!1§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§;!q§);
         if(!§'!U§)
         {
            _loc4_.§"g§();
         }
         §+!s§[param1.toLowerCase()] = _loc4_;
         §,`§ += param2;
      }
      
      public static function §9!$§(param1:String) : §,%§
      {
         return §+!s§[param1.toLowerCase()];
      }
      
      public static function §`!z§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+!s§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §5#§(param1:Boolean) : void
      {
         var _loc2_:§,%§ = null;
         if(param1 == §'!U§)
         {
            return;
         }
         §'!U§ = param1;
         for each(_loc2_ in §+!s§)
         {
            if(§'!U§)
            {
               _loc2_.§=x§();
            }
            else
            {
               _loc2_.§"g§();
            }
         }
      }
      
      public static function §4"#§() : void
      {
         var _loc1_:§,%§ = null;
         for each(_loc1_ in §+!s§)
         {
            _loc1_.§4"#§();
         }
         dispatchEvent(new §+J§(§+J§.§0!0§));
      }
      
      public static function §9y§() : Boolean
      {
         return §'!U§;
      }
      
      private static function §+8§(param1:String, param2:String) : §,%§
      {
         if(!§6",§)
         {
            return null;
         }
         var _loc3_:§,%§ = §9!$§(param1);
         if(!_loc3_)
         {
            if(§6"$§)
            {
               §,"0§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§+!k§())
         {
            if(§6"$§)
            {
               §,"0§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §+X§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §8V§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§+J§ = null;
         var _loc8_:§,%§;
         if(!(_loc8_ = §+8§(param4,param2)))
         {
            return null;
         }
         if(§%L§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §5-§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§=^§);
            _loc9_.addEventListener(Event.ID3,§^"3§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§@!K§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§@!K§);
            §5-§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §+J§(§+J§.§&#§)).§!"5§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§8V§ = _loc8_.§9"2§(_loc9_,param2,param5,param6,param7);
         §%L§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §=^§(param1:Event) : void
      {
         var _loc2_:§+J§ = new §+J§(§+J§.§"[§);
         _loc2_.§!"5§ = §,!L§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §,!L§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §5-§)
         {
            _loc3_ = §5-§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §^"3§(param1:Event) : void
      {
      }
      
      private static function §@!K§(param1:ErrorEvent) : void
      {
         var _loc2_:§+!c§ = new §+!c§(§+!c§.§<,§);
         var _loc3_:String = §,!L§(Sound(param1.currentTarget));
         _loc2_.§!"5§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §5-§[_loc3_];
         if(§%L§[_loc3_])
         {
            §8V§(§%L§[_loc3_]).§"",§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §%!1§(param1:DataEvent) : void
      {
         delete §%L§[param1.data];
         dispatchEvent(new §+J§(§+J§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §;!q§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §9"2§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §8V§
      {
         var _loc8_:Class = null;
         var _loc6_:§,%§;
         if(!(_loc6_ = §+8§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §5-§[param1]) == null)
         {
            if(!(_loc8_ = §69§.§ 0§(param1,false) as Class))
            {
               §,"0§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §5-§[param1] = _loc7_;
         }
         return _loc6_.§9"2§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §<"0§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§,%§ = §9!$§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§4"#§();
            dispatchEvent(new §+J§(§+J§.§'E§,"",param1));
         }
      }
      
      public static function §<!&§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§6"$§)
            {
               §,"0§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §0"#§.§9"2§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §@J§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §@J§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §@J§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §@J§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §@J§.willTrigger(param1);
      }
   }
}
