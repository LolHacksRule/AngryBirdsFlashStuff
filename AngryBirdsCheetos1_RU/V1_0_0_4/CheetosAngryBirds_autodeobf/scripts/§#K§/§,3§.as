package §#K§
{
   import §@y§.§"!X§;
   import §^!&§.§;C§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundLoaderContext;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §,3§
   {
      
      private static var §<'§:Boolean = true;
      
      private static const §2M§:int = 128;
      
      private static var §``§:int;
      
      private static var §]s§:Dictionary;
      
      private static var §=s§:Dictionary;
      
      public static const §8'§:String = "Default_Channel";
      
      public static const §+!'§:Boolean = false;
      
      private static var §%!3§:Boolean = true;
       
      
      public function §,3§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §%!3§ = param1;
      }
      
      public static function init() : void
      {
         §]s§ = new Dictionary();
         §=s§ = new Dictionary();
         §``§ = 0;
         §1!W§(§8'§,4,1);
      }
      
      public static function §1!W§(param1:String, param2:int, param3:Number) : void
      {
         if(§'!4§(param1) != null)
         {
            return;
         }
         if(§``§ >= §2M§)
         {
            if(§+!'§)
            {
               §;C§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §2M§ + " reserved");
            }
            return;
         }
         if(§``§ + param2 >= §2M§)
         {
            param2 = §2M§ - §``§;
         }
         var _loc4_:§"!;§ = new §"!;§(param1,param2,param3);
         if(!§<'§)
         {
            _loc4_.§=!I§();
         }
         §]s§[param1.toLowerCase()] = _loc4_;
         §``§ += param2;
      }
      
      public static function §'!4§(param1:String) : §"!;§
      {
         return §]s§[param1.toLowerCase()];
      }
      
      public static function § !Z§(param1:Boolean) : void
      {
         var _loc2_:§"!;§ = null;
         if(param1 == §<'§)
         {
            return;
         }
         §<'§ = param1;
         for each(_loc2_ in §]s§)
         {
            if(§<'§)
            {
               _loc2_.§#!T§();
            }
            else
            {
               _loc2_.§=!I§();
            }
         }
      }
      
      public static function §`8§() : void
      {
         var _loc1_:§"!;§ = null;
         for each(_loc1_ in §]s§)
         {
            _loc1_.§`8§();
         }
      }
      
      public static function §[%§() : Boolean
      {
         return §<'§;
      }
      
      private static function §%q§(param1:String, param2:String) : §"!;§
      {
         if(!§%!3§)
         {
            return null;
         }
         var _loc3_:§"!;§ = §'!4§(param1);
         if(!_loc3_)
         {
            if(§+!'§)
            {
               §;C§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param2 + " because this channel does not exist " + param1);
            }
            return null;
         }
         if(!_loc3_.§1!-§())
         {
            if(§+!'§)
            {
               §;C§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param2 + " this channel is full " + param1);
            }
            return null;
         }
         return _loc3_;
      }
      
      public static function §0G§(param1:String, param2:String, param3:int = 1000, param4:String = "Default_Channel", param5:int = 0, param6:Number = -1, param7:Number = 0) : § K§
      {
         var _loc10_:URLRequest = null;
         var _loc11_:SoundLoaderContext = null;
         var _loc8_:§"!;§;
         if(!(_loc8_ = §%q§(param4,param2)))
         {
            return null;
         }
         var _loc9_:Sound;
         if((_loc9_ = §=s§[param2]) == null)
         {
            (_loc9_ = new Sound()).addEventListener(Event.ID3,§+!I§);
            _loc9_.addEventListener(IOErrorEvent.IO_ERROR,§<!1§);
            _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§<!1§);
            §=s§[param2] = _loc9_;
            _loc10_ = new URLRequest(param1);
            _loc11_ = new SoundLoaderContext(param3,true);
            _loc9_.load(_loc10_,_loc11_);
         }
         return _loc8_.§7!=§(_loc9_,param2,param5,param6,param7);
      }
      
      private static function §+!I§(param1:Event) : void
      {
      }
      
      private static function §<!1§(param1:ErrorEvent) : void
      {
      }
      
      public static function §7!=§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Number = 0) : § K§
      {
         var _loc8_:Class = null;
         var _loc6_:§"!;§;
         if(!(_loc6_ = §%q§(param2,param1)))
         {
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §=s§[param1]) == null)
         {
            if(!(_loc8_ = §"!X§.§1!0§(param1,false) as Class))
            {
               §;C§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §=s§[param1] = _loc7_;
         }
         return _loc6_.§7!=§(_loc7_,param1,param3,param4,param5);
      }
      
      public static function §&[§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§"!;§ = §'!4§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§`8§();
         }
      }
      
      public static function §0y§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§+!'§)
            {
               §;C§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §,3§.§7!=§(param1,param2);
      }
   }
}
