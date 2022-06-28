package §_-4g§
{
   import §_-0BH§.§_-FK§;
   import com.rovio.assets.§_-Fc§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-pX§
   {
      
      private static var §_-008§:Boolean = true;
      
      private static const §_-Du§:int = 128;
      
      private static var §_-OL§:int;
      
      private static var §_-5c§:Dictionary;
      
      private static var §_-f§:Dictionary;
      
      public static const §_-02H§:String = "Default_Channel";
      
      public static const §_-04r§:Boolean = false;
      
      private static var §_-He§:Boolean = true;
       
      
      public function §_-pX§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §_-He§ = param1;
      }
      
      public static function init() : void
      {
         §_-5c§ = new Dictionary();
         §_-f§ = new Dictionary();
         §_-OL§ = 0;
         §_-UJ§(§_-02H§,4,1);
      }
      
      public static function §_-UJ§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-BM§(param1) != null)
         {
            return;
         }
         if(§_-OL§ >= §_-Du§)
         {
            if(§_-04r§)
            {
               §_-FK§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-Du§ + " reserved");
            }
            return;
         }
         if(§_-OL§ + param2 >= §_-Du§)
         {
            param2 = §_-Du§ - §_-OL§;
         }
         var _loc4_:§_-BY§ = new §_-BY§(param1,param2,param3);
         if(!§_-008§)
         {
            _loc4_.§_-0-c§();
         }
         §_-5c§[param1.toLowerCase()] = _loc4_;
         §_-OL§ += param2;
      }
      
      public static function §_-BM§(param1:String) : §_-BY§
      {
         return §_-5c§[param1.toLowerCase()];
      }
      
      public static function §_-bg§(param1:Boolean) : void
      {
         var _loc2_:§_-BY§ = null;
         if(param1 == §_-008§)
         {
            return;
         }
         §_-008§ = param1;
         for each(_loc2_ in §_-5c§)
         {
            if(§_-008§)
            {
               _loc2_.§_-8T§();
            }
            else
            {
               _loc2_.§_-0-c§();
            }
         }
      }
      
      public static function §_-j4§() : void
      {
         var _loc1_:§_-BY§ = null;
         for each(_loc1_ in §_-5c§)
         {
            _loc1_.§_-j4§();
         }
      }
      
      public static function §_-051§() : Boolean
      {
         return §_-008§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §_-9c§
      {
         var _loc8_:Class = null;
         if(!§_-He§)
         {
            return null;
         }
         var _loc6_:§_-BY§;
         if(!(_loc6_ = §_-BM§(param2)))
         {
            if(§_-04r§)
            {
               §_-FK§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§_-0Dk§())
         {
            if(§_-04r§)
            {
               §_-FK§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §_-f§[param1]) == null)
         {
            if(!(_loc8_ = §_-Fc§.§_-YE§(param1,false) as Class))
            {
               §_-FK§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §_-f§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param3,param4,param5);
      }
      
      public static function §_-0B7§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-BY§ = §_-BM§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-j4§();
         }
      }
      
      public static function §_-o5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-04r§)
            {
               §_-FK§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-pX§.playSound(param1,param2);
      }
   }
}
