package § get§
{
   import §_-Ay§.§_-nw§;
   import §_-ex§.§_-mR§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-pD§
   {
      
      private static var §_-kn§:Boolean = true;
      
      private static const §_-x3§:int = 128;
      
      private static var §_-2-§:int;
      
      private static var §_-Mp§:Dictionary;
      
      private static var §_-3h§:Dictionary;
      
      public static const §_-ht§:String = "Default_Channel";
      
      public static const §_-Bx§:Boolean = false;
       
      
      public function §_-pD§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-Mp§ = new Dictionary();
         §_-3h§ = new Dictionary();
         §_-2-§ = 0;
         §_-xr§(§_-ht§,4,1);
      }
      
      public static function §_-xr§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-8t§(param1) != null)
         {
            return;
         }
         if(§_-2-§ >= §_-x3§)
         {
            if(§_-Bx§)
            {
               §_-mR§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-x3§ + " reserved");
            }
            return;
         }
         if(§_-2-§ + param2 >= §_-x3§)
         {
            param2 = §_-x3§ - §_-2-§;
         }
         §_-Mp§[param1.toLowerCase()] = new §_-q2§(param1,param2,param3);
         §_-2-§ += param2;
      }
      
      public static function §_-8t§(param1:String) : §_-q2§
      {
         return §_-Mp§[param1.toLowerCase()];
      }
      
      public static function §_-Qy§(param1:Boolean) : void
      {
         §_-kn§ = param1;
         if(!param1)
         {
            §_-6Y§();
         }
      }
      
      public static function §_-6Y§() : void
      {
         var _loc1_:§_-q2§ = null;
         for each(_loc1_ in §_-Mp§)
         {
            _loc1_.§_-6Y§();
         }
      }
      
      public static function §_-qV§() : Boolean
      {
         return §_-kn§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-of§
      {
         var _loc7_:Class = null;
         if(!§_-kn§)
         {
            return null;
         }
         var _loc5_:§_-q2§;
         if(!(_loc5_ = §_-8t§(param2)))
         {
            if(§_-Bx§)
            {
               §_-mR§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-AI§())
         {
            if(§_-Bx§)
            {
               §_-mR§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-3h§[param1]) == null)
         {
            if(!(_loc7_ = §_-nw§.§_-Xm§(param1,false) as Class))
            {
               §_-mR§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-3h§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §_-gm§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-q2§ = §_-8t§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-6Y§();
         }
      }
      
      public static function §_-g5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-Bx§)
            {
               §_-mR§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-pD§.playSound(param1,param2);
      }
   }
}
