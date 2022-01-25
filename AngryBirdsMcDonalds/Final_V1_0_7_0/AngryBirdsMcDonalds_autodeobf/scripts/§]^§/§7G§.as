package §]^§
{
   import §0i§.§4!%§;
   import §<l§.§@0§;
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
   
   public class §7G§
   {
      
      private static const §?!c§:int = 128;
      
      private static var §7c§:Boolean = true;
      
      private static var §2!§:int;
      
      private static var §'^§:Dictionary;
      
      private static var §?!M§:Dictionary;
      
      private static var §;A§:Dictionary;
      
      public static const § !G§:String = "Default_Channel";
      
      public static const §null§:Boolean = false;
      
      private static var §3'§:Boolean = true;
      
      private static var §2#§:EventDispatcher = new EventDispatcher();
       
      
      public function §7G§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §3'§ = param1;
      }
      
      public static function init() : void
      {
         §'^§ = new Dictionary();
         §?!M§ = new Dictionary();
         §;A§ = new Dictionary();
         §2!§ = 0;
         §&!V§(§ !G§,4,1);
      }
      
      public static function §&!V§(param1:String, param2:int, param3:Number) : void
      {
         if(§+!X§(param1) != null)
         {
            return;
         }
         if(§2!§ >= §?!c§)
         {
            if(§null§)
            {
               §4!%§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §?!c§ + " reserved");
            }
            return;
         }
         if(§2!§ + param2 >= §?!c§)
         {
            param2 = §?!c§ - §2!§;
         }
         var _loc4_:§5!§;
         (_loc4_ = new §5!§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§>?§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§0!6§);
         if(!§7c§)
         {
            _loc4_.§`!S§();
         }
         §'^§[param1.toLowerCase()] = _loc4_;
         §2!§ += param2;
      }
      
      public static function §+!X§(param1:String) : §5!§
      {
         return §'^§[param1.toLowerCase()];
      }
      
      public static function §0!h§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §'^§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §9Y§(param1:Boolean) : void
      {
         var _loc2_:§5!§ = null;
         if(param1 == §7c§)
         {
            return;
         }
         §7c§ = param1;
         for each(_loc2_ in §'^§)
         {
            if(§7c§)
            {
               _loc2_.§0d§();
            }
            else
            {
               _loc2_.§`!S§();
            }
         }
      }
      
      public static function §]!Z§() : void
      {
         var _loc1_:§5!§ = null;
         for each(_loc1_ in §'^§)
         {
            _loc1_.§]!Z§();
         }
         dispatchEvent(new §?!5§(§?!5§.§=!c§));
      }
      
      public static function §5o§() : Boolean
      {
         return §7c§;
      }
      
      private static function §8%§(param1:String, param2:String) : §5!§
      {
         if(!§3'§)
         {
            return null;
         }
         var _loc3_:§5!§ = §+!X§(param1);
         if(!_loc3_)
         {
            if(§null§)
            {
               §4!%§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§ !+§())
         {
            if(§null§)
            {
               §4!%§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §]!a§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §1!K§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§?!5§ = null;
         var _loc8_:§5!§;
         if(!(_loc8_ = §8%§(param4,param2)))
         {
            return null;
         }
         if(§;A§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §?!M§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§8s§);
            _loc9_.addEventListener(Event.ID3,§5!F§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§<$§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§<$§);
            §?!M§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §?!5§(§?!5§.§,e§)).§4;§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§1!K§ = _loc8_.§4W§(_loc9_,param2,param5,param6,param7);
         §;A§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §8s§(param1:Event) : void
      {
         var _loc2_:§?!5§ = new §?!5§(§?!5§.§^!0§);
         _loc2_.§4;§ = §&!e§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §&!e§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §?!M§)
         {
            _loc3_ = §?!M§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §5!F§(param1:Event) : void
      {
      }
      
      private static function §<$§(param1:ErrorEvent) : void
      {
         var _loc2_:§^Z§ = new §^Z§(§^Z§.§"=§);
         var _loc3_:String = §&!e§(Sound(param1.currentTarget));
         _loc2_.§4;§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §?!M§[_loc3_];
         if(§;A§[_loc3_])
         {
            §1!K§(§;A§[_loc3_]).§0!K§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §>?§(param1:DataEvent) : void
      {
         delete §;A§[param1.data];
         dispatchEvent(new §?!5§(§?!5§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §0!6§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §4W§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §1!K§
      {
         var _loc8_:Class = null;
         var _loc6_:§5!§;
         if(!(_loc6_ = §8%§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §?!M§[param1]) == null)
         {
            if(!(_loc8_ = §@0§.§5+§(param1,false) as Class))
            {
               §4!%§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §?!M§[param1] = _loc7_;
         }
         return _loc6_.§4W§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §&!X§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§5!§ = §+!X§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§]!Z§();
            dispatchEvent(new §?!5§(§?!5§.§74§,"",param1));
         }
      }
      
      public static function §`!D§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§null§)
            {
               §4!%§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §7G§.§4W§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §2#§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §2#§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §2#§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §2#§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §2#§.willTrigger(param1);
      }
   }
}
