package §5^§
{
   import §9!G§.§]!e§;
   import com.rovio.assets.§5!+§;
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
   
   public class § !x§
   {
      
      private static const § "%§:int = 128;
      
      private static var §<!O§:Boolean = true;
      
      private static var §]""§:int;
      
      private static var § b§:Dictionary;
      
      private static var §#!<§:Dictionary;
      
      private static var § s§:Dictionary;
      
      public static const §+!`§:String = "Default_Channel";
      
      public static const §;!C§:Boolean = false;
      
      private static var §]!$§:Boolean = true;
      
      private static var §=9§:EventDispatcher = new EventDispatcher();
       
      
      public function § !x§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §]!$§ = param1;
      }
      
      public static function init() : void
      {
         § b§ = new Dictionary();
         §#!<§ = new Dictionary();
         § s§ = new Dictionary();
         §]""§ = 0;
         §'^§(§+!`§,4,1);
      }
      
      public static function §'^§(param1:String, param2:int, param3:Number) : void
      {
         if(§69§(param1) != null)
         {
            return;
         }
         if(§]""§ >= § "%§)
         {
            if(§;!C§)
            {
               §]!e§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + § "%§ + " reserved");
            }
            return;
         }
         if(§]""§ + param2 >= § "%§)
         {
            param2 = § "%§ - §]""§;
         }
         var _loc4_:§[?§;
         (_loc4_ = new §[?§(param1,param2,param3)).addEventListener(Event.SOUND_COMPLETE,§"!K§);
         _loc4_.addEventListener(ErrorEvent.ERROR,§#"9§);
         if(!§<!O§)
         {
            _loc4_.§'!k§();
         }
         § b§[param1.toLowerCase()] = _loc4_;
         §]""§ += param2;
      }
      
      public static function §69§(param1:String) : §[?§
      {
         return § b§[param1.toLowerCase()];
      }
      
      public static function §%5§() : Vector.<String>
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in § b§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public static function §9o§(param1:Boolean) : void
      {
         var _loc2_:§[?§ = null;
         if(param1 == §<!O§)
         {
            return;
         }
         §<!O§ = param1;
         for each(_loc2_ in § b§)
         {
            if(§<!O§)
            {
               _loc2_.§7j§();
            }
            else
            {
               _loc2_.§'!k§();
            }
         }
      }
      
      public static function § X§() : void
      {
         var _loc1_:§[?§ = null;
         for each(_loc1_ in § b§)
         {
            _loc1_.§ X§();
         }
         dispatchEvent(new §`M§(§`M§.§"Q§));
      }
      
      public static function §;K§() : Boolean
      {
         return §<!O§;
      }
      
      private static function §4e§(param1:String, param2:String) : §[?§
      {
         if(!§]!$§)
         {
            return null;
         }
         var _loc3_:§[?§ = §69§(param1);
         if(!_loc3_)
         {
            if(§;!C§)
            {
               §]!e§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§^!k§())
         {
            if(§;!C§)
            {
               §]!e§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §7e§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §]h§
      {
         var _loc11_:URLRequest = null;
         var _loc12_:SoundLoaderContext = null;
         var _loc13_:§`M§ = null;
         var _loc8_:§[?§;
         if(!(_loc8_ = §4e§(param4,param2)))
         {
            return null;
         }
         if(§ s§[param2])
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §#!<§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.COMPLETE,§;!_§);
            _loc9_.addEventListener(Event.ID3,§3""§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§["3§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§["3§);
            §#!<§[param2] = _loc9_;
            _loc11_ = new URLRequest(param1);
            _loc12_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc11_,_loc12_);
            (_loc13_ = new §`M§(§`M§.§^^§)).§#F§ = param2;
            dispatchEvent(_loc13_);
         }
         var _loc10_:§]h§ = _loc8_.playSound(_loc9_,param2,param5,param6,param7);
         § s§[param2] = _loc10_;
         return _loc10_;
      }
      
      private static function §;!_§(param1:Event) : void
      {
         var _loc2_:§`M§ = new §`M§(§`M§.§<Y§);
         _loc2_.§#F§ = §=!v§(Sound(param1.currentTarget));
         dispatchEvent(_loc2_);
      }
      
      private static function §=!v§(param1:Sound) : String
      {
         var _loc2_:* = null;
         var _loc3_:Sound = null;
         for(_loc2_ in §#!<§)
         {
            _loc3_ = §#!<§[_loc2_];
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private static function §3""§(param1:Event) : void
      {
      }
      
      private static function §["3§(param1:ErrorEvent) : void
      {
         var _loc2_:§9?§ = new §9?§(§9?§.§`""§);
         var _loc3_:String = §=!v§(Sound(param1.currentTarget));
         _loc2_.§#F§ = _loc3_;
         _loc2_.error = param1.text;
         _loc2_.errorID = param1.errorID;
         delete §#!<§[_loc3_];
         if(§ s§[_loc3_])
         {
            §]h§(§ s§[_loc3_]).§=`§();
         }
         dispatchEvent(_loc2_);
      }
      
      private static function §"!K§(param1:DataEvent) : void
      {
         delete § s§[param1.data];
         dispatchEvent(new §`M§(§`M§.SOUND_COMPLETE,param1.data));
      }
      
      private static function §#"9§(param1:ErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §]h§
      {
         var _loc8_:Class = null;
         var _loc6_:§[?§;
         if(!(_loc6_ = §4e§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §#!<§[param1]) == null)
         {
            if(!(_loc8_ = §5!+§.§,]§(param1,false) as Class))
            {
               §]!e§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §#!<§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §`"4§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§[?§ = §69§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§ X§();
            dispatchEvent(new §`M§(§`M§.§+l§,"",param1));
         }
      }
      
      public static function §1@§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§;!C§)
            {
               §]!e§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         § !x§.playSound(param1,param2);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §=9§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return §=9§.dispatchEvent(param1);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §=9§.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return §=9§.hasEventListener(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return §=9§.willTrigger(param1);
      }
   }
}
