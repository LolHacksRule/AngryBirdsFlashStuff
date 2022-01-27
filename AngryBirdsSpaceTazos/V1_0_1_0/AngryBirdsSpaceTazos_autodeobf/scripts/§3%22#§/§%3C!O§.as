package §3"#§
{
   import §0N§.§2!@§;
   import com.rovio.assets.§ !h§;
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §<!O§
   {
      
      private static const §?%§:int = 64;
      
      private static var §9"5§:Boolean = true;
      
      private static var §"!b§:int;
      
      private static var §]"§:Dictionary;
      
      private static var §@!Z§:Dictionary;
      
      private static var §!<§:Dictionary;
      
      public static const §>m§:String = "Default_Channel";
      
      public static const §4!N§:Boolean = false;
      
      private static var §,P§:Boolean = true;
      
      private static var §=L§:EventDispatcher = new EventDispatcher();
       
      
      public function §<!O§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §,P§ = param1;
      }
      
      public static function init() : void
      {
         §]"§ = new Dictionary();
         §@!Z§ = new Dictionary();
         §!<§ = new Dictionary();
         §"!b§ = 0;
         §;!D§(§>m§,4,1);
      }
      
      public static function §;!D§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §4d§(param1) != null)
         {
            return;
         }
         if(§"!b§ >= §?%§)
         {
            if(!§4!N§)
            {
            }
            return;
         }
         if(§"!b§ + param2 >= §?%§)
         {
            param2 = §?%§ - §"!b§;
         }
         var _loc4_:§5!W§;
         (_loc4_ = new §5!W§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§2;§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§ 3§);
         §]"§[param1.toLowerCase()] = _loc4_;
         §"!b§ += param2;
      }
      
      public static function §4d§(param1:String) : §5!W§
      {
         if(!param1)
         {
            return null;
         }
         return §]"§[param1.toLowerCase()];
      }
      
      public static function §`"$§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §]"§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §!p§(param1:Boolean) : void
      {
         if(param1 == §9"5§)
         {
            return;
         }
         §9"5§ = param1;
         §>!9§(§9"5§);
      }
      
      public static function §]t§(param1:Boolean) : void
      {
         var _loc2_:§5!W§ = null;
         for each(_loc2_ in §]"§)
         {
            if(param1)
            {
               _loc2_.§`!d§();
            }
            else
            {
               _loc2_.§%!?§();
            }
         }
      }
      
      protected static function §>!9§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §'N§() : void
      {
         var _loc1_:§5!W§ = null;
         for each(_loc1_ in §]"§)
         {
            _loc1_.§'N§();
         }
         dispatchEvent(new §@U§(§@U§.§1v§));
      }
      
      public static function get §?!2§() : Boolean
      {
         return §9"5§;
      }
      
      private static function §7p§(param1:String, param2:String) : §5!W§
      {
         if(!§,P§)
         {
            return null;
         }
         var _loc3_:§5!W§ = §4d§(param1);
         if(!_loc3_)
         {
            if(§4!N§)
            {
               §2!@§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§`K§())
         {
            if(§4!N§)
            {
               §2!@§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §!!y§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §3![§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§@U§ = null;
         var _loc8_:§5!W§;
         if(!(_loc8_ = §7p§(param4,param2)))
         {
            return null;
         }
         if(§!<§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §@!Z§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§3!F§);
            _loc9_.addEventListener(Event.ID3,§=!V§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§[!=§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§[!=§);
            §@!Z§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §@U§(§@U§.§;![§)).§7@§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§3![§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         §!<§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §3!F§(param1:Event) : void
      {
         var _loc2_:§@U§ = new §@U§(§@U§.§2!X§);
         _loc2_.§7@§ = §?!"§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §?!"§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §@!Z§)
         {
            _loc3_ = §@!Z§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §=!V§(param1:Event) : void
      {
      }
      
      private static function §[!=§(param1:ErrorEvent) : void
      {
         var _loc2_:§9"E§ = new §9"E§(§9"E§.§3!8§);
         var _loc3_:String = §?!"§(Sound(param1.currentTarget));
         _loc2_.§7@§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §@!Z§[_loc3_];
         if(§!<§[_loc3_])
         {
            §3![§(§!<§[_loc3_]).§,v§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §2;§(param1:DataEvent) : void
      {
         delete §!<§[param1.data];
         dispatchEvent(new §@U§(§@U§.SOUND_COMPLETE,param1.data));
      }
      
      private static function § 3§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §3![§
      {
         var _loc6_:§5!W§;
         if(!(_loc6_ = §7p§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = getSound(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function getSound(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §@!Z§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = § !h§.§["3§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §2!@§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §@!Z§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §,!z§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§5!W§ = §4d§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§'N§();
            dispatchEvent(new §@U§(§@U§.§^"B§,"",param1));
         }
      }
      
      public static function §`h§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§4!N§)
            {
               §2!@§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §<!O§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §=L§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §=L§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §=L§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §=L§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §=L§.willTrigger(param1);
      }
   }
}
