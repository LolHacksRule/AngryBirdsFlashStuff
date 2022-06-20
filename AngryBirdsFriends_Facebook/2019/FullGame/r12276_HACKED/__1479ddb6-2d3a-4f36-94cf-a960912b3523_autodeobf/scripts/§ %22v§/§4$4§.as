package § "v§
{
   import §#"3§.§4!h§;
   import com.rovio.assets.§=@§;
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
   
   public class §4$4§
   {
      
      private static const §7#+§:int = 128;
      
      private static var §,e§:Boolean = true;
      
      private static var §@$,§:int;
      
      private static var §8$6§:Dictionary;
      
      private static var §'S§:Dictionary;
      
      private static var § !W§:Dictionary;
      
      public static const §6!H§:String = "Default_Channel";
      
      public static const §1#l§:String = "UI_Channel";
      
      public static const §7O§:Boolean = false;
      
      private static var §@!2§:Boolean = true;
      
      private static var §"!+§:EventDispatcher = new EventDispatcher();
       
      
      public function §4$4§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §@!2§ = param1;
      }
      
      public static function init() : void
      {
         §8$6§ = new Dictionary();
         §'S§ = new Dictionary();
         § !W§ = new Dictionary();
         §@$,§ = 0;
         §<!A§(§6!H§,4,0.8);
         §<!A§(§1#l§,4,0.9);
      }
      
      public static function §<!A§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §`!U§(param1) != null)
         {
            return;
         }
         if(§@$,§ >= §7#+§)
         {
            if(!§7O§)
            {
            }
            return;
         }
         if(§@$,§ + param2 >= §7#+§)
         {
            param2 = §7#+§ - §@$,§;
         }
         var _loc4_:§8M§;
         (_loc4_ = new §8M§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§7!-§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§+#w§);
         §8$6§[param1.toLowerCase()] = _loc4_;
         §@$,§ += param2;
      }
      
      public static function §`!U§(param1:String) : §8M§
      {
         if(!param1)
         {
            return null;
         }
         return §8$6§[param1.toLowerCase()];
      }
      
      public static function §`!x§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §8$6§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §2$§(param1:Boolean) : void
      {
         if(param1 == §,e§)
         {
            return;
         }
         §,e§ = param1;
         §2$=§(§,e§);
      }
      
      public static function §2"g§(param1:Boolean) : void
      {
         var _loc2_:§8M§ = null;
         for each(_loc2_ in §8$6§)
         {
            if(param1)
            {
               _loc2_.§,#L§();
            }
            else
            {
               _loc2_.§]!D§();
            }
         }
      }
      
      protected static function §2$=§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §?#l§() : void
      {
         var _loc1_:§8M§ = null;
         for each(_loc1_ in §8$6§)
         {
            _loc1_.§?#l§();
         }
         dispatchEvent(new §9!p§(§9!p§.§8!^§));
      }
      
      public static function §3V§(param1:Vector.<String> = null) : void
      {
         var _loc2_:§8M§ = null;
         for each(_loc2_ in §8$6§)
         {
            if(param1 == null || param1.indexOf(_loc2_.§-#3§) == -1)
            {
               _loc2_.§3V§();
            }
         }
         dispatchEvent(new §9!p§(§9!p§.§8!^§));
      }
      
      public static function §4!S§() : void
      {
         var _loc1_:§8M§ = null;
         for each(_loc1_ in §8$6§)
         {
            _loc1_.§4!S§();
         }
      }
      
      public static function get §%#u§() : Boolean
      {
         return §,e§;
      }
      
      private static function §"#G§(param1:String, param2:String) : §8M§
      {
         if(!§@!2§)
         {
            return null;
         }
         var _loc3_:§8M§ = §`!U§(param1);
         if(!_loc3_)
         {
            if(§7O§)
            {
               §4!h§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§%#A§())
         {
            if(§7O§)
            {
               §4!h§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §<#<§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §+o§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§9!p§ = null;
         var _loc8_:§8M§;
         if(!(_loc8_ = §"#G§(param4,param2)))
         {
            return null;
         }
         if(§ !W§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §'S§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§1!q§);
            _loc9_.addEventListener(Event.ID3,§0$4§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§#T§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§#T§);
            §'S§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §9!p§(§9!p§.§,$;§)).§9§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§+o§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         § !W§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §1!q§(param1:Event) : void
      {
         var _loc2_:§9!p§ = new §9!p§(§9!p§.§+"V§);
         _loc2_.§9§ = §]t§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §]t§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §'S§)
         {
            _loc3_ = §'S§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §0$4§(param1:Event) : void
      {
      }
      
      private static function §#T§(param1:ErrorEvent) : void
      {
         var _loc2_:§5#[§ = new §5#[§(§5#[§.§?!u§);
         var _loc3_:String = §]t§(Sound(param1.currentTarget));
         _loc2_.§9§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §'S§[_loc3_];
         if(§ !W§[_loc3_])
         {
            §+o§(§ !W§[_loc3_]).§%'§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §7!-§(param1:DataEvent) : void
      {
         delete § !W§[param1.data];
         dispatchEvent(new §9!p§(§9!p§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §+#w§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §+o§
      {
         var _loc6_:§8M§;
         if(!(_loc6_ = §"#G§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §&#w§(param1)))
         {
            return null;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §&#w§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §'S§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §=@§.§9!x§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §4!h§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §'S§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §'!?§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§8M§ = §`!U§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§?#l§();
            dispatchEvent(new §9!p§(§9!p§.§ $B§,"",param1));
         }
      }
      
      public static function dynamic(param1:String) : Boolean
      {
         var _loc2_:int = int(param1.charAt(param1.length - 1));
         return _loc2_ != 0;
      }
      
      public static function §'"j§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §+o§
      {
         var _loc6_:int;
         if((_loc6_ = int(param1.charAt(param1.length - 1))) <= 1)
         {
            return §4$4§.playSound(param1,param2,param3,param4,param5);
         }
         _loc6_ = (_loc6_ = Math.random() * _loc6_) + 1;
         param1 = param1.slice(0,param1.length - 1) + _loc6_;
         return §4$4§.playSound(param1,param2,param3,param4,param5);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §"!+§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §"!+§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §"!+§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §"!+§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §"!+§.willTrigger(param1);
      }
      
      public static function §!!k§(param1:String, param2:Number) : void
      {
         var _loc3_:§8M§ = null;
         for each(_loc3_ in §8$6§)
         {
            if(_loc3_.§-#3§ == param1)
            {
               _loc3_.§,#G§(param2);
               break;
            }
         }
      }
      
      public static function §4!0§(param1:String) : Number
      {
         var _loc2_:§8M§ = null;
         for each(_loc2_ in §8$6§)
         {
            if(_loc2_.§-#3§ == param1)
            {
               return _loc2_.§6!g§;
            }
         }
         return 0;
      }
      
      public static function §1!F§(param1:String, param2:String) : Boolean
      {
         if(!param1 || !param2)
         {
            return false;
         }
         var _loc3_:§8M§ = §8$6§[param2.toLowerCase()];
         if(_loc3_)
         {
            return _loc3_.§2"S§(param1) != null;
         }
         return false;
      }
   }
}
