package §_-rQ§
{
   import §_-0S§.§_-z1§;
   import §_-e3§.§_-54§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-Ou§
   {
      
      private static var §_-Tj§:Boolean = true;
      
      private static const §_-sY§:int = 128;
      
      private static var §_-0h§:int;
      
      private static var §_-8l§:Dictionary;
      
      private static var §_-FC§:Dictionary;
      
      public static const §_-m6§:String = "Default_Channel";
      
      public static const §_-O3§:Boolean = false;
       
      
      public function §_-Ou§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-8l§ = new Dictionary();
         §_-FC§ = new Dictionary();
         §_-0h§ = 0;
         §_-Rz§(§_-m6§,4,1);
      }
      
      public static function §_-Rz§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-g9§(param1) != null)
         {
            return;
         }
         if(§_-0h§ >= §_-sY§)
         {
            if(§_-O3§)
            {
               §_-54§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-sY§ + " reserved");
            }
            return;
         }
         if(§_-0h§ + param2 >= §_-sY§)
         {
            param2 = §_-sY§ - §_-0h§;
         }
         §_-8l§[param1.toLowerCase()] = new §_-gG§(param1,param2,param3);
         §_-0h§ += param2;
      }
      
      public static function §_-g9§(param1:String) : §_-gG§
      {
         return §_-8l§[param1.toLowerCase()];
      }
      
      public static function §_-m1§(param1:Boolean) : void
      {
         §_-Tj§ = param1;
         if(!param1)
         {
            §_-yO§();
         }
      }
      
      public static function §_-yO§() : void
      {
         var _loc1_:§_-gG§ = null;
         for each(_loc1_ in §_-8l§)
         {
            _loc1_.§_-yO§();
         }
      }
      
      public static function §_-00§() : Boolean
      {
         return §_-Tj§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-iG§
      {
         var _loc7_:Class = null;
         if(!§_-Tj§)
         {
            return null;
         }
         var _loc5_:§_-gG§;
         if(!(_loc5_ = §_-g9§(param2)))
         {
            if(§_-O3§)
            {
               §_-54§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-kB§())
         {
            if(§_-O3§)
            {
               §_-54§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-FC§[param1]) == null)
         {
            if(!(_loc7_ = §_-z1§.§_-tn§(param1,false) as Class))
            {
               §_-54§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-FC§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §_-BB§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-gG§ = §_-g9§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-yO§();
         }
      }
      
      public static function §_-ml§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-O3§)
            {
               §_-54§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-Ou§.playSound(param1,param2);
      }
   }
}
