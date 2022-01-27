package §,"v§
{
   import §0"I§.§5!s§;
   import com.rovio.assets.§5"]§;
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
   
   public class §@§
   {
      
      private static const §8T§:int = 64;
      
      private static var §!"4§:Boolean = true;
      
      private static var §""+§:int;
      
      private static var §+!V§:Dictionary;
      
      private static var §+!%§:Dictionary;
      
      private static var §0"8§:Dictionary;
      
      public static const §<"5§:String = "Default_Channel";
      
      public static const §1""§:Boolean = false;
      
      private static var §8'§:Boolean = true;
      
      private static var §9e§:EventDispatcher = new EventDispatcher();
       
      
      public function §@§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §8'§ = param1;
      }
      
      public static function init() : void
      {
         §+!V§ = new Dictionary();
         §+!%§ = new Dictionary();
         §0"8§ = new Dictionary();
         §""+§ = 0;
         §"#'§(§<"5§,4,1);
      }
      
      public static function §"#'§(param1:String, param2:int, param3:Number) : void
      {
         if(!param1 || §]#%§(param1) != null)
         {
            return;
         }
         if(§""+§ >= §8T§)
         {
            if(!§1""§)
            {
            }
            return;
         }
         if(§""+§ + param2 >= §8T§)
         {
            param2 = §8T§ - §""+§;
         }
         var _loc4_:§,w§;
         (_loc4_ = new §,w§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§3#1§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§%`§);
         §+!V§[param1.toLowerCase()] = _loc4_;
         §""+§ += param2;
      }
      
      public static function §]#%§(param1:String) : §,w§
      {
         if(!param1)
         {
            return null;
         }
         return §+!V§[param1.toLowerCase()];
      }
      
      public static function §+#!§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in §+!V§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §&"l§(param1:Boolean) : void
      {
         if(param1 == §!"4§)
         {
            return;
         }
         §!"4§ = param1;
         §0!q§(§!"4§);
      }
      
      public static function §8!9§(param1:Boolean) : void
      {
         var _loc2_:§,w§ = null;
         for each(_loc2_ in §+!V§)
         {
            if(param1)
            {
               _loc2_.§'"O§();
            }
            else
            {
               _loc2_.§^!I§();
            }
         }
      }
      
      protected static function §0!q§(param1:Boolean) : void
      {
         var _loc2_:Number = !!param1 ? Number(1) : Number(0);
         SoundMixer.soundTransform = new SoundTransform(_loc2_);
      }
      
      public static function §+A§() : void
      {
         var _loc1_:§,w§ = null;
         for each(_loc1_ in §+!V§)
         {
            _loc1_.§+A§();
         }
         dispatchEvent(new §,#1§(§,#1§.§,""§));
      }
      
      public static function get §`"@§() : Boolean
      {
         return §!"4§;
      }
      
      private static function §9!?§(param1:String, param2:String) : §,w§
      {
         if(!§8'§)
         {
            return null;
         }
         var _loc3_:§,w§ = §]#%§(param1);
         if(!_loc3_)
         {
            if(§1""§)
            {
               §5!s§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§"-§())
         {
            if(§1""§)
            {
               §5!s§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §=!E§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §^!2§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§,#1§ = null;
         var _loc8_:§,w§;
         if(!(_loc8_ = §9!?§(param4,param2)))
         {
            return null;
         }
         if(§0"8§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §+!%§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§;N§);
            _loc9_.addEventListener(Event.ID3,§!!>§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§ #1§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§ #1§);
            §+!%§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §,#1§(§,#1§.§^"$§)).§7!'§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§^!2§ = _loc8_.§=Y§(_loc9_,param2,param5,param6,param7);
         §0"8§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §;N§(param1:Event) : void
      {
         var _loc2_:§,#1§ = new §,#1§(§,#1§.§];§);
         _loc2_.§7!'§ = §[#&§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §[#&§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §+!%§)
         {
            _loc3_ = §+!%§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §!!>§(param1:Event) : void
      {
      }
      
      private static function § #1§(param1:ErrorEvent) : void
      {
         var _loc2_:§]"=§ = new §]"=§(§]"=§.§-N§);
         var _loc3_:String = §[#&§(Sound(param1.currentTarget));
         _loc2_.§7!'§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §+!%§[_loc3_];
         if(§0"8§[_loc3_])
         {
            §^!2§(§0"8§[_loc3_]).§-'§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §3#1§(param1:DataEvent) : void
      {
         delete §0"8§[param1.data];
         dispatchEvent(new §,#1§(§,#1§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §%`§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function §=Y§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §^!2§
      {
         var _loc6_:§,w§;
         if(!(_loc6_ = §9!?§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if(!(_loc7_ = §+!B§(param1)))
         {
            return null;
         }
         return _loc6_.§=Y§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §+!B§(param1:String, param2:Boolean = true) : Sound
      {
         var _loc4_:Class = null;
         var _loc3_:Sound = §+!%§[param1];
         if(_loc3_ == null)
         {
            if(!(_loc4_ = §5"]§.§4!K§(param1,false,param2) as Class))
            {
               if(param2)
               {
                  §5!s§.log("Sound not in AssetCache: " + param1);
               }
               return null;
            }
            _loc3_ = new _loc4_();
            §+!%§[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public static function §@!D§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§,w§ = §]#%§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§+A§();
            dispatchEvent(new §,#1§(§,#1§.§@!-§,"",param1));
         }
      }
      
      public static function §9!5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§1""§)
            {
               §5!s§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §@§.§=Y§(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §9e§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §9e§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §9e§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §9e§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §9e§.willTrigger(param1);
      }
   }
}
