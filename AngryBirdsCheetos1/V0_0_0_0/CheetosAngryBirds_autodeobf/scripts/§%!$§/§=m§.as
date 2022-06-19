package §%!$§
{
   import §0v§.§-'§;
   import §@,§.§4h§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §=m§
   {
      
      private static var §[!@§:Boolean = true;
      
      private static const §@!;§:int = 128;
      
      private static var §28§:int;
      
      private static var §in§:Dictionary;
      
      private static var §'!X§:Dictionary;
      
      public static const §1N§:String = "Default_Channel";
      
      public static const §0!?§:Boolean = false;
       
      
      public function §=m§()
      {
         super();
      }
      
      public static function init() : void
      {
         §in§ = new Dictionary();
         §'!X§ = new Dictionary();
         §28§ = 0;
         §,!1§(§1N§,4,1);
      }
      
      public static function §,!1§(param1:String, param2:int, param3:Number) : void
      {
         if(§,'§(param1) != null)
         {
            return;
         }
         if(§28§ >= §@!;§)
         {
            if(§0!?§)
            {
               §4h§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §@!;§ + " reserved");
            }
            return;
         }
         if(§28§ + param2 >= §@!;§)
         {
            param2 = §@!;§ - §28§;
         }
         var _loc4_:§8m§ = new §8m§(param1,param2,param3);
         if(!§[!@§)
         {
            _loc4_.§0[§();
         }
         §in§[param1.toLowerCase()] = _loc4_;
         §28§ += param2;
      }
      
      public static function §,'§(param1:String) : §8m§
      {
         return §in§[param1.toLowerCase()];
      }
      
      public static function §=!J§(param1:Boolean) : void
      {
         var _loc2_:§8m§ = null;
         if(param1 == §[!@§)
         {
            return;
         }
         §[!@§ = param1;
         for each(_loc2_ in §in§)
         {
            if(§[!@§)
            {
               _loc2_.§0!>§();
            }
            else
            {
               _loc2_.§0[§();
            }
         }
      }
      
      public static function §,w§() : void
      {
         var _loc1_:§8m§ = null;
         for each(_loc1_ in §in§)
         {
            _loc1_.§,w§();
         }
      }
      
      public static function §?§() : Boolean
      {
         return §[!@§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §5v§
      {
         var _loc7_:Class = null;
         var _loc5_:§8m§;
         if(!(_loc5_ = §,'§(param2)))
         {
            if(§0!?§)
            {
               §4h§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§04§())
         {
            if(§0!?§)
            {
               §4h§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §'!X§[param1]) == null)
         {
            if(!(_loc7_ = §-'§.§]`§(param1,false) as Class))
            {
               §4h§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §'!X§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §+f§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§8m§ = §,'§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§,w§();
         }
      }
      
      public static function §break§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§0!?§)
            {
               §4h§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §=m§.playSound(param1,param2);
      }
   }
}
