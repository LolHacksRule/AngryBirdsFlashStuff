package §2!6§
{
   import §&N§.§@,§;
   import §-0§.§^a§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §%!$§
   {
      
      private static var §=m§:Boolean = true;
      
      private static const §[!@§:int = 128;
      
      private static var §@!;§:int;
      
      private static var §28§:Dictionary;
      
      private static var §in§:Dictionary;
      
      public static const §'!X§:String = "Default_Channel";
      
      public static const §1N§:Boolean = false;
       
      
      public function §%!$§()
      {
         super();
      }
      
      public static function init() : void
      {
         §28§ = new Dictionary();
         §in§ = new Dictionary();
         §@!;§ = 0;
         §0!?§(§'!X§,4,1);
      }
      
      public static function §0!?§(param1:String, param2:int, param3:Number) : void
      {
         if(§,!1§(param1) != null)
         {
            return;
         }
         if(§@!;§ >= §[!@§)
         {
            if(§1N§)
            {
               §@,§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §[!@§ + " reserved");
            }
            return;
         }
         if(§@!;§ + param2 >= §[!@§)
         {
            param2 = §[!@§ - §@!;§;
         }
         var _loc4_:§ W§ = new § W§(param1,param2,param3);
         if(!§=m§)
         {
            _loc4_.§'!G§();
         }
         §28§[param1.toLowerCase()] = _loc4_;
         §@!;§ += param2;
      }
      
      public static function §,!1§(param1:String) : § W§
      {
         return §28§[param1.toLowerCase()];
      }
      
      public static function §,'§(param1:Boolean) : void
      {
         var _loc2_:§ W§ = null;
         if(param1 == §=m§)
         {
            return;
         }
         §=m§ = param1;
         for each(_loc2_ in §28§)
         {
            if(§=m§)
            {
               _loc2_.§0[§();
            }
            else
            {
               _loc2_.§'!G§();
            }
         }
      }
      
      public static function §=!J§() : void
      {
         var _loc1_:§ W§ = null;
         for each(_loc1_ in §28§)
         {
            _loc1_.§=!J§();
         }
      }
      
      public static function §;!I§() : Boolean
      {
         return §=m§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §break§
      {
         var _loc7_:Class = null;
         var _loc5_:§ W§;
         if(!(_loc5_ = §,!1§(param2)))
         {
            if(§1N§)
            {
               §@,§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§0s§())
         {
            if(§1N§)
            {
               §@,§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §in§[param1]) == null)
         {
            if(!(_loc7_ = §^a§.§;x§(param1,false) as Class))
            {
               §@,§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §in§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §,w§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§ W§ = §,!1§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§=!J§();
         }
      }
      
      public static function §+f§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§1N§)
            {
               §@,§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §%!$§.playSound(param1,param2);
      }
   }
}
