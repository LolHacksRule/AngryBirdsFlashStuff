package §@D§
{
   import §+!"§.§5!<§;
   import com.rovio.assets.§'!H§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §6I§
   {
      
      private static var §@9§:Boolean = true;
      
      private static const native:int = 128;
      
      private static var §>%§:int;
      
      private static var §9!=§:Dictionary;
      
      private static var §]Y§:Dictionary;
      
      public static const §&!-§:String = "Default_Channel";
      
      public static const §5y§:Boolean = false;
      
      private static var §1p§:Boolean = true;
       
      
      public function §6I§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §1p§ = param1;
      }
      
      public static function init() : void
      {
         §9!=§ = new Dictionary();
         §]Y§ = new Dictionary();
         §>%§ = 0;
         §"!'§(§&!-§,4,1);
      }
      
      public static function §"!'§(param1:String, param2:int, param3:Number) : void
      {
         if(§3t§(param1) != null)
         {
            return;
         }
         if(§>%§ >= native)
         {
            if(§5y§)
            {
               §5!<§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + native + " reserved");
            }
            return;
         }
         if(§>%§ + param2 >= native)
         {
            param2 = native - §>%§;
         }
         var _loc4_:§;A§ = new §;A§(param1,param2,param3);
         if(!§@9§)
         {
            _loc4_.§99§();
         }
         §9!=§[param1.toLowerCase()] = _loc4_;
         §>%§ += param2;
      }
      
      public static function §3t§(param1:String) : §;A§
      {
         return §9!=§[param1.toLowerCase()];
      }
      
      public static function §3Y§(param1:Boolean) : void
      {
         var _loc2_:§;A§ = null;
         if(param1 == §@9§)
         {
            return;
         }
         §@9§ = param1;
         for each(_loc2_ in §9!=§)
         {
            if(§@9§)
            {
               _loc2_.§^$§();
            }
            else
            {
               _loc2_.§99§();
            }
         }
      }
      
      public static function §%,§() : void
      {
         var _loc1_:§;A§ = null;
         for each(_loc1_ in §9!=§)
         {
            _loc1_.§%,§();
         }
      }
      
      public static function §`9§() : Boolean
      {
         return §@9§;
      }
      
      public static function § ;§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §`!%§
      {
         var _loc8_:Class = null;
         if(!§1p§)
         {
            return null;
         }
         var _loc6_:§;A§;
         if(!(_loc6_ = §3t§(param2)))
         {
            if(§5y§)
            {
               §5!<§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§>Q§())
         {
            if(§5y§)
            {
               §5!<§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §]Y§[param1]) == null)
         {
            if(!(_loc8_ = §'!H§.§&!G§(param1,false) as Class))
            {
               §5!<§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §]Y§[param1] = _loc7_;
         }
         return _loc6_.§ ;§(_loc7_,param3,param4,param5);
      }
      
      public static function §9w§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§;A§ = §3t§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§%,§();
         }
      }
      
      public static function §`$§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§5y§)
            {
               §5!<§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §6I§.§ ;§(param1,param2);
      }
   }
}
