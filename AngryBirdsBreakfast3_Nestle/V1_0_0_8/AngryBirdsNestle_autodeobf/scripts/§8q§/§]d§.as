package §8q§
{
   import §;4§.§]!%§;
   import com.rovio.assets.§2"&§;
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
   
   public class §]d§
   {
      
      private static const §='§:int = 64;
      
      private static var §8?§:Boolean = true;
      
      private static var §4?§:int;
      
      private static var §,"-§:Dictionary;
      
      private static var §""6§:Dictionary;
      
      private static var §>-§:Dictionary;
      
      public static const § t§:String = "Default_Channel";
      
      public static const §`6§:Boolean = false;
      
      private static var §1]§:Boolean = true;
      
      private static var §[2§:EventDispatcher = new EventDispatcher();
       
      
      public function §]d§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §1]§ = param1;
      }
      
      public static function init() : void
      {
         §,"-§ = new Dictionary();
         §""6§ = new Dictionary();
         §>-§ = new Dictionary();
         §4?§ = 0;
         §[!$§(§ t§,4,1);
      }
      
      public static function §[!$§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §`!?§(param1) != null)
         {
            return;
         }
         if(§4?§ >= §='§)
         {
            if(!§`6§)
            {
            }
            return;
         }
         if(§4?§ + param2 >= §='§)
         {
            param2 = §='§ - §4?§;
         }
         var _loc4_:§]$§;
         (_loc4_ = new §]$§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§[;§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§8,§);
         §,"-§[param1.toLowerCase()] = _loc4_;
         §4?§ += param2;
      }
      
      public static function §`!?§(param1:String) : §]$§
      {
         if(!param1)
         {
            return null;
         }
         return §,"-§[param1.toLowerCase()];
      }
      
      public static function §@"4§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §,"-§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §7!_§(param1:Boolean) : void
      {
         if(param1 == §8?§)
         {
            return;
         }
         §8?§ = param1;
         §0k§(§8?§);
      }
      
      public static function §;"5§(param1:Boolean) : void
      {
         var _loc2_:§]$§ = null;
         for each(_loc2_ in §,"-§)
         {
            if(param1)
            {
               _loc2_.§;b§();
            }
            else
            {
               _loc2_.§+W§();
            }
         }
      }
      
      protected static function §0k§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §]!u§() : void
      {
         var _loc1_:§]$§ = null;
         for each(_loc1_ in §,"-§)
         {
            _loc1_.§]!u§();
         }
         dispatchEvent(new §+!C§(§+!C§.§#!k§));
      }
      
      public static function get §&1§() : Boolean
      {
         return §8?§;
      }
      
      private static function §;e§(param1:String, param2:String) : §]$§
      {
         if(!§1]§)
         {
            return null;
         }
         var _loc3_:§]$§ = §`!?§(param1);
         if(!_loc3_)
         {
            if(§`6§)
            {
               §]!%§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§0!g§())
         {
            if(§`6§)
            {
               §]!%§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §>^§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §+m§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§+!C§ = null;
         var _loc8_:§]$§;
         if(!(_loc8_ = §;e§(param4,param2)))
         {
            return null;
         }
         if(§>-§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §""6§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§<!!§);
            _loc9_.addEventListener(Event.ID3,§`h§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§'8§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§'8§);
            §""6§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §+!C§(§+!C§.§-a§)).§3!l§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§+m§ = _loc8_.§^!J§(_loc9_,param2,param5,param6,param7);
         §>-§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §<!!§(param1:Event) : void
      {
         var _loc2_:§+!C§ = new §+!C§(§+!C§.§3!!§);
         _loc2_.§3!l§ = §<!%§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §<!%§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §""6§)
         {
            _loc3_ = §""6§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §`h§(param1:Event) : void
      {
      }
      
      private static function §'8§(param1:ErrorEvent) : void
      {
         var _loc2_:§;!V§ = new §;!V§(§;!V§.§0"!§);
         var _loc3_:String = §<!%§(Sound(param1.currentTarget));
         _loc2_.§3!l§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §""6§[_loc3_];
         if(§>-§[_loc3_])
         {
            §+m§(§>-§[_loc3_]).§7!J§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §[;§(param1:DataEvent) : void
      {
         delete §>-§[param1.data];
         dispatchEvent(new §+!C§(§+!C§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §8,§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §^!J§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §+m§
      {
         var _loc6_:§]$§;
         if(!(_loc6_ = §;e§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §^W§(param1)))
         {
            return null;
         }
         return _loc6_.§^!J§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §^W§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §""6§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §2"&§.§<$§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §]!%§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §""6§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §<"+§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§]$§ = §`!?§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§]!u§();
            dispatchEvent(new §+!C§(§+!C§.§9"1§,"",param1));
         }
      }
      
      public static function §;!X§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§`6§)
            {
               §]!%§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §]d§.§^!J§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §[2§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §[2§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §[2§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §[2§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §[2§.willTrigger(param1);
      }
   }
}
