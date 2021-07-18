package §^!0§
{
   import §@R§.§4,§;
   import §]!6§.§false§;
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
   
   public class §&M§
   {
      
      private static const §2!S§:int = 128;
      
      private static var §5C§:Boolean = true;
      
      private static var §5!L§:int;
      
      private static var §'!Z§:Dictionary;
      
      private static var §%!M§:Dictionary;
      
      private static var §63§:Dictionary;
      
      public static const §'!Q§:String = "Default_Channel";
      
      public static const §>s§:Boolean = false;
      
      private static var §&!-§:Boolean = true;
      
      private static var §8§:EventDispatcher = new EventDispatcher();
       
      
      public function §&M§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §&!-§ = param1;
      }
      
      public static function init() : void
      {
         §'!Z§ = new Dictionary();
         §%!M§ = new Dictionary();
         §63§ = new Dictionary();
         §5!L§ = 0;
         §1!V§(§'!Q§,4,1);
      }
      
      public static function §1!V§(param1:String, param2:int, param3:Number) : void
      {
         if(§2!W§(param1) != null)
         {
            return;
         }
         if(§5!L§ >= §2!S§)
         {
            if(§>s§)
            {
               §4,§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §2!S§ + " reserved");
            }
            return;
         }
         if(§5!L§ + param2 >= §2!S§)
         {
            param2 = §2!S§ - §5!L§;
         }
         var _loc4_:§&^§;
         (_loc4_ = new §&^§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§[!^§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§4!&§);
         if(!§5C§)
         {
            _loc4_.§6!;§();
         }
         §'!Z§[param1.toLowerCase()] = _loc4_;
         §5!L§ += param2;
      }
      
      public static function §2!W§(param1:String) : §&^§
      {
         return §'!Z§[param1.toLowerCase()];
      }
      
      public static function §,!!§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §'!Z§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §6!=§(param1:Boolean) : void
      {
         var _loc2_:§&^§ = null;
         if(param1 == §5C§)
         {
            return;
         }
         §5C§ = param1;
         for each(_loc2_ in §'!Z§)
         {
            if(§5C§)
            {
               _loc2_.§2!X§();
            }
            else
            {
               _loc2_.§6!;§();
            }
         }
      }
      
      public static function §=!7§() : void
      {
         var _loc1_:§&^§ = null;
         for each(_loc1_ in §'!Z§)
         {
            _loc1_.§=!7§();
         }
         dispatchEvent(new §^0§(§^0§.§#]§));
      }
      
      public static function §`L§() : Boolean
      {
         return §5C§;
      }
      
      private static function §"!e§(param1:String, param2:String) : §&^§
      {
         if(!§&!-§)
         {
            return null;
         }
         var _loc3_:§&^§ = §2!W§(param1);
         if(!_loc3_)
         {
            if(§>s§)
            {
               §4,§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§`!Q§())
         {
            if(§>s§)
            {
               §4,§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §3l§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §4E§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§^0§ = null;
         var _loc8_:§&^§;
         if(!(_loc8_ = §"!e§(param4,param2)))
         {
            return null;
         }
         if(§63§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §%!M§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§1_§);
            _loc9_.addEventListener(Event.ID3,§&!5§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§?!0§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§?!0§);
            §%!M§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §^0§(§^0§.§]t§)).§5=§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§4E§ = _loc8_.§6!#§(_loc9_,param2,param5,param6,param7);
         §63§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §1_§(param1:Event) : void
      {
         var _loc2_:§^0§ = new §^0§(§^0§.§7j§);
         _loc2_.§5=§ = §=!a§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §=!a§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §%!M§)
         {
            _loc3_ = §%!M§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §&!5§(param1:Event) : void
      {
      }
      
      private static function §?!0§(param1:ErrorEvent) : void
      {
         var _loc2_:§?W§ = new §?W§(§?W§.§>m§);
         var _loc3_:String = §=!a§(Sound(param1.currentTarget));
         _loc2_.§5=§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §%!M§[_loc3_];
         if(§63§[_loc3_])
         {
            §4E§(§63§[_loc3_]).§6`§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §[!^§(param1:DataEvent) : void
      {
         delete §63§[param1.data];
         dispatchEvent(new §^0§(§^0§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §4!&§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §6!#§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §4E§
      {
         var _loc8_:Class = null;
         var _loc6_:§&^§;
         if(!(_loc6_ = §"!e§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §%!M§[param1]) == null)
         {
            if(!(_loc8_ = §false§.§5#§(param1,false) as Class))
            {
               §4,§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §%!M§[param1] = _loc7_;
         }
         return _loc6_.§6!#§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §7!<§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§&^§ = §2!W§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§=!7§();
            dispatchEvent(new §^0§(§^0§.§?!1§,"",param1));
         }
      }
      
      public static function §<!_§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§>s§)
            {
               §4,§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §&M§.§6!#§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §8§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §8§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §8§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §8§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §8§.willTrigger(param1);
      }
   }
}
