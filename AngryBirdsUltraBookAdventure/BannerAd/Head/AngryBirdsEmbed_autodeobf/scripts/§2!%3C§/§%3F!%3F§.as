package §2!<§
{
   import §2§.§0!<§;
   import com.rovio.assets.§7!D§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §?!?§
   {
      
      private static var §3!E§:Boolean = true;
      
      private static const §=!-§:int = 128;
      
      private static var §@!4§:int;
      
      private static var §%d§:Dictionary;
      
      private static var §0'§:Dictionary;
      
      public static const §,w§:String = "Default_Channel";
      
      public static const §@J§:Boolean = false;
      
      private static var §^o§:Boolean = true;
       
      
      public function §?!?§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §^o§ = param1;
      }
      
      public static function init() : void
      {
         §%d§ = new Dictionary();
         §0'§ = new Dictionary();
         §@!4§ = 0;
         §&P§(§,w§,4,1);
      }
      
      public static function §&P§(param1:String, param2:int, param3:Number) : void
      {
         if(§5!%§(param1) != null)
         {
            return;
         }
         if(§@!4§ >= §=!-§)
         {
            if(§@J§)
            {
               §0!<§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §=!-§ + " reserved");
            }
            return;
         }
         if(§@!4§ + param2 >= §=!-§)
         {
            param2 = §=!-§ - §@!4§;
         }
         var _loc4_:§ 2§ = new § 2§(param1,param2,param3);
         if(!§3!E§)
         {
            _loc4_.§9P§();
         }
         §%d§[param1.toLowerCase()] = _loc4_;
         §@!4§ += param2;
      }
      
      public static function §5!%§(param1:String) : § 2§
      {
         return §%d§[param1.toLowerCase()];
      }
      
      public static function §8!§(param1:Boolean) : void
      {
         var _loc2_:§ 2§ = null;
         if(param1 == §3!E§)
         {
            return;
         }
         §3!E§ = param1;
         for each(_loc2_ in §%d§)
         {
            if(§3!E§)
            {
               _loc2_.§9!C§();
            }
            else
            {
               _loc2_.§9P§();
            }
         }
      }
      
      public static function §%!%§() : void
      {
         var _loc1_:§ 2§ = null;
         for each(_loc1_ in §%d§)
         {
            _loc1_.§%!%§();
         }
      }
      
      public static function §"!=§() : Boolean
      {
         return §3!E§;
      }
      
      public static function §#'§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §4I§
      {
         var _loc8_:Class = null;
         if(!§^o§)
         {
            return null;
         }
         var _loc6_:§ 2§;
         if(!(_loc6_ = §5!%§(param2)))
         {
            if(§@J§)
            {
               §0!<§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§>#§())
         {
            if(§@J§)
            {
               §0!<§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §0'§[param1]) == null)
         {
            if(!(_loc8_ = §7!D§.§?0§(param1,false) as Class))
            {
               §0!<§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §0'§[param1] = _loc7_;
         }
         return _loc6_.§#'§(_loc7_,param3,param4,param5);
      }
      
      public static function §<!,§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§ 2§ = §5!%§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§%!%§();
         }
      }
      
      public static function §9o§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§@J§)
            {
               §0!<§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §?!?§.§#'§(param1,param2);
      }
   }
}
