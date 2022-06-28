package §?!?§
{
   import §0!<§.§#y§;
   import com.rovio.assets.§,u§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §3!E§
   {
      
      private static var §=!-§:Boolean = true;
      
      private static const §@!4§:int = 128;
      
      private static var §%d§:int;
      
      private static var §0'§:Dictionary;
      
      private static var §,w§:Dictionary;
      
      public static const §@J§:String = "Default_Channel";
      
      public static const §^o§:Boolean = false;
      
      private static var §&P§:Boolean = true;
       
      
      public function §3!E§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §&P§ = param1;
      }
      
      public static function init() : void
      {
         §0'§ = new Dictionary();
         §,w§ = new Dictionary();
         §%d§ = 0;
         §5!%§(§@J§,4,1);
      }
      
      public static function §5!%§(param1:String, param2:int, param3:Number) : void
      {
         if(§8!§(param1) != null)
         {
            return;
         }
         if(§%d§ >= §@!4§)
         {
            if(§^o§)
            {
               §#y§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §@!4§ + " reserved");
            }
            return;
         }
         if(§%d§ + param2 >= §@!4§)
         {
            param2 = §@!4§ - §%d§;
         }
         var _loc4_:§%B§ = new §%B§(param1,param2,param3);
         if(!§=!-§)
         {
            _loc4_.§9!C§();
         }
         §0'§[param1.toLowerCase()] = _loc4_;
         §%d§ += param2;
      }
      
      public static function §8!§(param1:String) : §%B§
      {
         return §0'§[param1.toLowerCase()];
      }
      
      public static function §%!%§(param1:Boolean) : void
      {
         var _loc2_:§%B§ = null;
         if(param1 == §=!-§)
         {
            return;
         }
         §=!-§ = param1;
         for each(_loc2_ in §0'§)
         {
            if(§=!-§)
            {
               _loc2_.§4>§();
            }
            else
            {
               _loc2_.§9!C§();
            }
         }
      }
      
      public static function §#'§() : void
      {
         var _loc1_:§%B§ = null;
         for each(_loc1_ in §0'§)
         {
            _loc1_.§#'§();
         }
      }
      
      public static function §"!=§() : Boolean
      {
         return §=!-§;
      }
      
      public static function §<!,§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §]t§
      {
         var _loc8_:Class = null;
         if(!§&P§)
         {
            return null;
         }
         var _loc6_:§%B§;
         if(!(_loc6_ = §8!§(param2)))
         {
            if(§^o§)
            {
               §#y§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§-r§())
         {
            if(§^o§)
            {
               §#y§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §,w§[param1]) == null)
         {
            if(!(_loc8_ = §,u§.§'[§(param1,false) as Class))
            {
               §#y§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §,w§[param1] = _loc7_;
         }
         return _loc6_.§<!,§(_loc7_,param3,param4,param5);
      }
      
      public static function §9o§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§%B§ = §8!§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§#'§();
         }
      }
      
      public static function §4I§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§^o§)
            {
               §#y§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §3!E§.§<!,§(param1,param2);
      }
   }
}
