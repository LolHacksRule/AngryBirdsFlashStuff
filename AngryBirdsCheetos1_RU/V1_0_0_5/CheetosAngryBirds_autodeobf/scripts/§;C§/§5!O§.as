package §;C§
{
   import §!4§.§=!Z§;
   import §[-§.§#!,§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §5!O§
   {
      
      private static var §'!]§:Boolean = true;
      
      private static const §1<§:int = 128;
      
      private static var §%i§:int;
      
      private static var §'!T§:Dictionary;
      
      private static var §?d§:Dictionary;
      
      public static const §7!X§:String = "Default_Channel";
      
      public static const §%h§:Boolean = false;
      
      private static var §8?§:Boolean = true;
       
      
      public function §5!O§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §8?§ = param1;
      }
      
      public static function init() : void
      {
         §'!T§ = new Dictionary();
         §?d§ = new Dictionary();
         §%i§ = 0;
         §>n§(§7!X§,4,1);
      }
      
      public static function §>n§(param1:String, param2:int, param3:Number) : void
      {
         if(§?4§(param1) != null)
         {
            return;
         }
         if(§%i§ >= §1<§)
         {
            if(§%h§)
            {
               §=!Z§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §1<§ + " reserved");
            }
            return;
         }
         if(§%i§ + param2 >= §1<§)
         {
            param2 = §1<§ - §%i§;
         }
         var _loc4_:§&Z§ = new §&Z§(param1,param2,param3);
         if(!§'!]§)
         {
            _loc4_.§7!D§();
         }
         §'!T§[param1.toLowerCase()] = _loc4_;
         §%i§ += param2;
      }
      
      public static function §?4§(param1:String) : §&Z§
      {
         return §'!T§[param1.toLowerCase()];
      }
      
      public static function §#w§(param1:Boolean) : void
      {
         var _loc2_:§&Z§ = null;
         if(param1 == §'!]§)
         {
            return;
         }
         §'!]§ = param1;
         for each(_loc2_ in §'!T§)
         {
            if(§'!]§)
            {
               _loc2_.§`8§();
            }
            else
            {
               _loc2_.§7!D§();
            }
         }
      }
      
      public static function § for§() : void
      {
         var _loc1_:§&Z§ = null;
         for each(_loc1_ in §'!T§)
         {
            _loc1_.§ for§();
         }
      }
      
      public static function §51§() : Boolean
      {
         return §'!]§;
      }
      
      private static function §?!7§(param1:String, param2:String) : §&Z§
      {
         if(!§8?§)
         {
            return null;
         }
         var _loc3_:§&Z§ = §?4§(param1);
         if(!_loc3_)
         {
            if(§%h§)
            {
               §=!Z§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§4z§())
         {
            if(§%h§)
            {
               §=!Z§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §-!B§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : §"!D§
      {
         var _loc10_:URLRequest = null;
         var _loc11_:SoundLoaderContext = null;
         var _loc8_:§&Z§;
         if(!(_loc8_ = §?!7§(param4,param2)))
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §?d§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.ID3,§8x§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§5a§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§5a§);
            §?d§[param2] = _loc9_;
            _loc10_ = new URLRequest(param1);
            _loc11_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc10_,_loc11_);
         }
         return _loc8_.§-q§(_loc9_,param2,param5,param6,param7);
      }
      
      private static function §8x§(param1:Event) : void
      {
      }
      
      private static function §5a§(param1:ErrorEvent) : void
      {
      }
      
      public static function §-q§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : §"!D§
      {
         var _loc8_:Class = null;
         var _loc6_:§&Z§;
         if(!(_loc6_ = §?!7§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §?d§[param1]) == null)
         {
            if(!(_loc8_ = §#!,§.§-<§(param1,false) as Class))
            {
               §=!Z§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §?d§[param1] = _loc7_;
         }
         return _loc6_.§-q§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §<!1§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§&Z§ = §?4§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§ for§();
         }
      }
      
      public static function §7!5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§%h§)
            {
               §=!Z§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §5!O§.§-q§(param1,param2);
      }
   }
}
