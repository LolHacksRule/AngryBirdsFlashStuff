package §_-VH§
{
   import §_-Eq§.§_-q§;
   import §_-aA§.§_-I0§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-X6§
   {
      
      private static var §_-AH§:Boolean = true;
      
      private static const §_-dU§:int = 128;
      
      private static var §_-xR§:int;
      
      private static var §_-Ia§:Dictionary;
      
      private static var §_-cA§:Dictionary;
      
      public static const §_-ln§:String = "Default_Channel";
      
      public static const §_-RD§:Boolean = false;
       
      
      public function §_-X6§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-Ia§ = new Dictionary();
         §_-cA§ = new Dictionary();
         §_-xR§ = 0;
         §_-mq§(§_-ln§,4,1);
      }
      
      public static function §_-mq§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-c9§(param1) != null)
         {
            return;
         }
         if(§_-xR§ >= §_-dU§)
         {
            if(§_-RD§)
            {
               §_-I0§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-dU§ + " reserved");
            }
            return;
         }
         if(§_-xR§ + param2 >= §_-dU§)
         {
            param2 = §_-dU§ - §_-xR§;
         }
         var _loc4_:§_-Km§ = new §_-Km§(param1,param2,param3);
         if(!§_-AH§)
         {
            _loc4_.§_-pT§();
         }
         §_-Ia§[param1.toLowerCase()] = _loc4_;
         §_-xR§ += param2;
      }
      
      public static function §_-c9§(param1:String) : §_-Km§
      {
         return §_-Ia§[param1.toLowerCase()];
      }
      
      public static function §_-Xv§(param1:Boolean) : void
      {
         var _loc2_:§_-Km§ = null;
         if(param1 == §_-AH§)
         {
            return;
         }
         §_-AH§ = param1;
         for each(_loc2_ in §_-Ia§)
         {
            if(§_-AH§)
            {
               _loc2_.§_-fu§();
            }
            else
            {
               _loc2_.§_-pT§();
            }
         }
      }
      
      public static function §_-bm§() : void
      {
         var _loc1_:§_-Km§ = null;
         for each(_loc1_ in §_-Ia§)
         {
            _loc1_.§_-bm§();
         }
      }
      
      public static function §_-l2§() : Boolean
      {
         return §_-AH§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-2K§
      {
         var _loc7_:Class = null;
         var _loc5_:§_-Km§;
         if(!(_loc5_ = §_-c9§(param2)))
         {
            if(§_-RD§)
            {
               §_-I0§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-Wb§())
         {
            if(§_-RD§)
            {
               §_-I0§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-cA§[param1]) == null)
         {
            if(!(_loc7_ = §_-q§.§_-Ti§(param1,false) as Class))
            {
               §_-I0§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-cA§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §_-vx§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-Km§ = §_-c9§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-bm§();
         }
      }
      
      public static function §_-Qr§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-RD§)
            {
               §_-I0§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-X6§.playSound(param1,param2);
      }
   }
}
