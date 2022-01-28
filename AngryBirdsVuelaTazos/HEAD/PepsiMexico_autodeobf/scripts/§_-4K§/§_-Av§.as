package §_-4K§
{
   import §_-9k§.§_-X7§;
   import §_-gM§.§_-yj§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-Av§
   {
      
      private static var §_-cB§:Boolean = true;
      
      private static const §_-Ks§:int = 128;
      
      private static var §_-kh§:int;
      
      private static var §_-AX§:Dictionary;
      
      private static var §_-SA§:Dictionary;
      
      public static const §_-ij§:String = "Default_Channel";
      
      public static const §_-jC§:Boolean = false;
       
      
      public function §_-Av§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-AX§ = new Dictionary();
         §_-SA§ = new Dictionary();
         §_-kh§ = 0;
         §_-Zy§(§_-ij§,4,1);
      }
      
      public static function §_-Zy§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-Qj§(param1) != null)
         {
            return;
         }
         if(§_-kh§ >= §_-Ks§)
         {
            if(§_-jC§)
            {
               §_-yj§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-Ks§ + " reserved");
            }
            return;
         }
         if(§_-kh§ + param2 >= §_-Ks§)
         {
            param2 = §_-Ks§ - §_-kh§;
         }
         var _loc4_:§_-N9§ = new §_-N9§(param1,param2,param3);
         if(!§_-cB§)
         {
            _loc4_.§_-FE§();
         }
         §_-AX§[param1.toLowerCase()] = _loc4_;
         §_-kh§ += param2;
      }
      
      public static function §_-Qj§(param1:String) : §_-N9§
      {
         return §_-AX§[param1.toLowerCase()];
      }
      
      public static function §_-fK§(param1:Boolean) : void
      {
         var _loc2_:§_-N9§ = null;
         if(param1 == §_-cB§)
         {
            return;
         }
         §_-cB§ = param1;
         for each(_loc2_ in §_-AX§)
         {
            if(§_-cB§)
            {
               _loc2_.§_-3T§();
            }
            else
            {
               _loc2_.§_-FE§();
            }
         }
      }
      
      public static function §_-c0§() : void
      {
         var _loc1_:§_-N9§ = null;
         for each(_loc1_ in §_-AX§)
         {
            _loc1_.§_-c0§();
         }
      }
      
      public static function §_-QC§() : Boolean
      {
         return §_-cB§;
      }
      
      public static function §_-so§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-Ga§
      {
         var _loc7_:Class = null;
         var _loc5_:§_-N9§;
         if(!(_loc5_ = §_-Qj§(param2)))
         {
            if(§_-jC§)
            {
               §_-yj§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-eI§())
         {
            if(§_-jC§)
            {
               §_-yj§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-SA§[param1]) == null)
         {
            if(!(_loc7_ = §_-X7§.§_-IA§(param1,false) as Class))
            {
               §_-yj§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-SA§[param1] = _loc6_;
         }
         return _loc5_.§_-so§(_loc6_,param3,param4);
      }
      
      public static function §_-nk§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-N9§ = §_-Qj§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-c0§();
         }
      }
      
      public static function §_-9F§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-jC§)
            {
               §_-yj§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-Av§.§_-so§(param1,param2);
      }
   }
}
