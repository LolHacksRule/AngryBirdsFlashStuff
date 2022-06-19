package §`!K§
{
   import § !G§.§ #§;
   import §1!K§.§<!I§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §!!>§
   {
      
      private static var §%]§:Boolean = true;
      
      private static const §?!U§:int = 128;
      
      private static var §=!5§:int;
      
      private static var §77§:Dictionary;
      
      private static var §]O§:Dictionary;
      
      public static const §1a§:String = "Default_Channel";
      
      public static const §%K§:Boolean = false;
      
      private static var §5I§:Boolean = true;
       
      
      public function §!!>§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §5I§ = param1;
      }
      
      public static function init() : void
      {
         §77§ = new Dictionary();
         §]O§ = new Dictionary();
         §=!5§ = 0;
         §6!K§(§1a§,4,1);
      }
      
      public static function §6!K§(param1:String, param2:int, param3:Number) : void
      {
         if(§-!8§(param1) != null)
         {
            return;
         }
         if(§=!5§ >= §?!U§)
         {
            if(§%K§)
            {
               § #§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §?!U§ + " reserved");
            }
            return;
         }
         if(§=!5§ + param2 >= §?!U§)
         {
            param2 = §?!U§ - §=!5§;
         }
         var _loc4_:§&y§ = new §&y§(param1,param2,param3);
         if(!§%]§)
         {
            _loc4_.§ §();
         }
         §77§[param1.toLowerCase()] = _loc4_;
         §=!5§ += param2;
      }
      
      public static function §-!8§(param1:String) : §&y§
      {
         return §77§[param1.toLowerCase()];
      }
      
      public static function §?^§(param1:Boolean) : void
      {
         var _loc2_:§&y§ = null;
         if(param1 == §%]§)
         {
            return;
         }
         §%]§ = param1;
         for each(_loc2_ in §77§)
         {
            if(§%]§)
            {
               _loc2_.§@!N§();
            }
            else
            {
               _loc2_.§ §();
            }
         }
      }
      
      public static function § &§() : void
      {
         var _loc1_:§&y§ = null;
         for each(_loc1_ in §77§)
         {
            _loc1_.§ &§();
         }
      }
      
      public static function §`E§() : Boolean
      {
         return §%]§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §<9§
      {
         var _loc7_:Class = null;
         if(!§5I§)
         {
            return null;
         }
         var _loc5_:§&y§;
         if(!(_loc5_ = §-!8§(param2)))
         {
            if(§%K§)
            {
               § #§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§>q§())
         {
            if(§%K§)
            {
               § #§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §]O§[param1]) == null)
         {
            if(!(_loc7_ = §<!I§.§;!U§(param1,false) as Class))
            {
               § #§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §]O§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §8y§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§&y§ = §-!8§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§ &§();
         }
      }
      
      public static function § D§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§%K§)
            {
               § #§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §!!>§.playSound(param1,param2);
      }
   }
}
