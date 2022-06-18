package §3!A§
{
   import §-p§.§&2§;
   import com.rovio.assets.§53§;
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
   
   public class §9!0§
   {
      
      private static const §8k§:int = 128;
      
      private static var § [§:Boolean = true;
      
      private static var §!!4§:int;
      
      private static var §?M§:Dictionary;
      
      private static var §7j§:Dictionary;
      
      private static var §1!!§:Dictionary;
      
      public static const §7z§:String = "Default_Channel";
      
      public static const §8i§:Boolean = false;
      
      private static var §4Z§:Boolean = true;
      
      private static var §,=§:EventDispatcher = new EventDispatcher();
       
      
      public function §9!0§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §4Z§ = param1;
      }
      
      public static function init() : void
      {
         §?M§ = new Dictionary();
         §7j§ = new Dictionary();
         §1!!§ = new Dictionary();
         §!!4§ = 0;
         §;U§(§7z§,4,1);
      }
      
      public static function §;U§(param1:String, param2:int, param3:Number) : void
      {
         if(§"&§(param1) != null)
         {
            return;
         }
         if(§!!4§ >= §8k§)
         {
            if(§8i§)
            {
               §&2§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §8k§ + " reserved");
            }
            return;
         }
         if(§!!4§ + param2 >= §8k§)
         {
            param2 = §8k§ - §!!4§;
         }
         var _loc4_:§,!%§;
         (_loc4_ = new §,!%§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§'y§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§try§);
         if(!§ [§)
         {
            _loc4_.§8p§();
         }
         §?M§[param1.toLowerCase()] = _loc4_;
         §!!4§ += param2;
      }
      
      public static function §"&§(param1:String) : §,!%§
      {
         return §?M§[param1.toLowerCase()];
      }
      
      public static function §]E§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §?M§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §[F§(param1:Boolean) : void
      {
         var _loc2_:§,!%§ = null;
         if(param1 == § [§)
         {
            return;
         }
         § [§ = param1;
         for each(_loc2_ in §?M§)
         {
            if(§ [§)
            {
               _loc2_.§9!B§();
            }
            else
            {
               _loc2_.§8p§();
            }
         }
      }
      
      public static function §"P§() : void
      {
         var _loc1_:§,!%§ = null;
         for each(_loc1_ in §?M§)
         {
            _loc1_.§"P§();
         }
         dispatchEvent(new §+x§(§+x§.§3!?§));
      }
      
      public static function §&%§() : Boolean
      {
         return § [§;
      }
      
      private static function §@[§(param1:String, param2:String) : §,!%§
      {
         if(!§4Z§)
         {
            return null;
         }
         var _loc3_:§,!%§ = §"&§(param1);
         if(!_loc3_)
         {
            if(§8i§)
            {
               §&2§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§6!I§())
         {
            if(§8i§)
            {
               §&2§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §2!&§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §;;§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§+x§ = null;
         var _loc8_:§,!%§;
         if(!(_loc8_ = §@[§(param4,param2)))
         {
            return null;
         }
         if(§1!!§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §7j§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§6z§);
            _loc9_.addEventListener(Event.ID3,§ '§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§!f§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§!f§);
            §7j§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §+x§(§+x§.§`i§)).§2!%§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§;;§ = _loc8_.§-! §(_loc9_,param2,param5,param6,param7);
         §1!!§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §6z§(param1:Event) : void
      {
         var _loc2_:§+x§ = new §+x§(§+x§.§0K§);
         _loc2_.§2!%§ = §]`§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §]`§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §7j§)
         {
            _loc3_ = §7j§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function § '§(param1:Event) : void
      {
      }
      
      private static function §!f§(param1:ErrorEvent) : void
      {
         var _loc2_:§7!&§ = new §7!&§(§7!&§.§@o§);
         var _loc3_:String = §]`§(Sound(param1.currentTarget));
         _loc2_.§2!%§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §7j§[_loc3_];
         if(§1!!§[_loc3_])
         {
            §;;§(§1!!§[_loc3_]).§^+§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §'y§(param1:DataEvent) : void
      {
         delete §1!!§[param1.data];
         dispatchEvent(new §+x§(§+x§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §try§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §-! §(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §;;§
      {
         var _loc8_:Class = null;
         var _loc6_:§,!%§;
         if(!(_loc6_ = §@[§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §7j§[param1]) == null)
         {
            if(!(_loc8_ = §53§.§[N§(param1,false) as Class))
            {
               §&2§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §7j§[param1] = _loc7_;
         }
         return _loc6_.§-! §(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §5!'§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§,!%§ = §"&§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§"P§();
            dispatchEvent(new §+x§(§+x§.§`!6§,"",param1));
         }
      }
      
      public static function §?n§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§8i§)
            {
               §&2§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §9!0§.§-! §(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §,=§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §,=§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §,=§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §,=§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §,=§.willTrigger(param1);
      }
   }
}
