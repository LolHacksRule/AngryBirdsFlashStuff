package §_-6n§
{
   import §_-Eo§.§_-R4§;
   import §_-W7§.§_-jT§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-5z§
   {
      
      private static var §_-J6§:Boolean = true;
      
      private static const §_-S3§:int = 128;
      
      private static var §_-6e§:int;
      
      private static var §_-1c§:Dictionary;
      
      private static var §_-e-§:Dictionary;
      
      public static const §_-Jy§:String = "Default_Channel";
      
      public static const §_-Pq§:Boolean = false;
       
      
      public function §_-5z§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-1c§ = new Dictionary();
         §_-e-§ = new Dictionary();
         §_-6e§ = 0;
         §_-9b§(§_-Jy§,4,1);
      }
      
      public static function §_-9b§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-Ol§(param1) != null)
         {
            return;
         }
         if(§_-6e§ >= §_-S3§)
         {
            if(§_-Pq§)
            {
               §_-R4§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-S3§ + " reserved");
            }
            return;
         }
         if(§_-6e§ + param2 >= §_-S3§)
         {
            param2 = §_-S3§ - §_-6e§;
         }
         §_-1c§[param1.toLowerCase()] = new §_-i4§(param1,param2,param3);
         §_-6e§ += param2;
      }
      
      public static function §_-Ol§(param1:String) : §_-i4§
      {
         return §_-1c§[param1.toLowerCase()];
      }
      
      public static function §_-rh§(param1:Boolean) : void
      {
         §_-J6§ = param1;
         if(!param1)
         {
            §_-i-§();
         }
      }
      
      public static function §_-i-§() : void
      {
         var _loc1_:§_-i4§ = null;
         for each(_loc1_ in §_-1c§)
         {
            _loc1_.§_-i-§();
         }
      }
      
      public static function §_-vI§() : Boolean
      {
         return §_-J6§;
      }
      
      public static function §_-rp§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-fg§
      {
         var _loc7_:Class = null;
         if(!§_-J6§)
         {
            return null;
         }
         var _loc5_:§_-i4§;
         if(!(_loc5_ = §_-Ol§(param2)))
         {
            if(§_-Pq§)
            {
               §_-R4§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-pw§())
         {
            if(§_-Pq§)
            {
               §_-R4§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-e-§[param1]) == null)
         {
            if(!(_loc7_ = §_-jT§.§_-kv§(param1,false) as Class))
            {
               §_-R4§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-e-§[param1] = _loc6_;
         }
         return _loc5_.§_-rp§(_loc6_,param3,param4);
      }
      
      public static function §_-6g§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-i4§ = §_-Ol§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-i-§();
         }
      }
      
      public static function §_-6h§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-Pq§)
            {
               §_-R4§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-5z§.§_-rp§(param1,param2);
      }
   }
}
