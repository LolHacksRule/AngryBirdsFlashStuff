package §_-am§
{
   import §_-RG§.§_-HT§;
   import §_-vA§.§_-XO§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-XJ§
   {
      
      private static var §_-1a§:Boolean = true;
      
      private static const §_-Bc§:int = 128;
      
      private static var §_-oN§:int;
      
      private static var §_-oA§:Dictionary;
      
      private static var §_-xL§:Dictionary;
      
      public static const §_-w1§:String = "Default_Channel";
      
      public static const §_-kC§:Boolean = false;
       
      
      public function §_-XJ§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-oA§ = new Dictionary();
         §_-xL§ = new Dictionary();
         §_-oN§ = 0;
         §_-d9§(§_-w1§,4,1);
      }
      
      public static function §_-d9§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-75§(param1) != null)
         {
            return;
         }
         if(§_-oN§ >= §_-Bc§)
         {
            if(§_-kC§)
            {
               §_-HT§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-Bc§ + " reserved");
            }
            return;
         }
         if(§_-oN§ + param2 >= §_-Bc§)
         {
            param2 = §_-Bc§ - §_-oN§;
         }
         §_-oA§[param1.toLowerCase()] = new §_-oa§(param1,param2,param3);
         §_-oN§ += param2;
      }
      
      public static function §_-75§(param1:String) : §_-oa§
      {
         return §_-oA§[param1.toLowerCase()];
      }
      
      public static function §_-kh§(param1:Boolean) : void
      {
         §_-1a§ = param1;
         if(!param1)
         {
            §_-48§();
         }
      }
      
      public static function §_-48§() : void
      {
         var _loc1_:§_-oa§ = null;
         for each(_loc1_ in §_-oA§)
         {
            _loc1_.§_-48§();
         }
      }
      
      public static function §_-Jf§() : Boolean
      {
         return §_-1a§;
      }
      
      public static function §_-aW§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-IP§
      {
         var _loc7_:Class = null;
         if(!§_-1a§)
         {
            return null;
         }
         var _loc5_:§_-oa§;
         if(!(_loc5_ = §_-75§(param2)))
         {
            if(§_-kC§)
            {
               §_-HT§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-W2§())
         {
            if(§_-kC§)
            {
               §_-HT§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-xL§[param1]) == null)
         {
            if(!(_loc7_ = §_-XO§.§_-O3§(param1,false) as Class))
            {
               §_-HT§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-xL§[param1] = _loc6_;
         }
         return _loc5_.§_-aW§(_loc6_,param3,param4);
      }
      
      public static function §_-v6§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-oa§ = §_-75§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-48§();
         }
      }
      
      public static function §_-Wd§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-kC§)
            {
               §_-HT§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-XJ§.§_-aW§(param1,param2);
      }
   }
}
