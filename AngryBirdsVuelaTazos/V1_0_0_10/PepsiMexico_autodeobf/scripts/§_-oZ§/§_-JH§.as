package §_-oZ§
{
   import §_-ot§.§_-o6§;
   
   public class §_-JH§
   {
      
      private static var §_-Dh§:Boolean = true;
      
      private static const §_-Qe§:int = 32;
      
      private static var §_-fS§:int;
      
      private static var §_-NV§:Vector.<§_-vy§>;
      
      public static const §_-cR§:String = "Default_Channel";
      
      public static const §_-wV§:Boolean = false;
       
      
      public function §_-JH§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-NV§ = new Vector.<§_-vy§>();
         §_-fS§ = 0;
         §_-IT§(§_-cR§,4,1);
      }
      
      public static function §_-IT§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-fS§ >= §_-Qe§)
         {
            if(§_-wV§)
            {
               §_-o6§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-Qe§ + " reserved");
            }
            return;
         }
         if(§_-fS§ + param2 >= §_-Qe§)
         {
            param2 = §_-Qe§ - §_-fS§;
         }
         §_-NV§.push(new §_-vy§(param1,param2,param3));
         §_-fS§ += param2;
      }
      
      public static function §_-AJ§(param1:String) : §_-vy§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-NV§.length)
         {
            if(§_-NV§[_loc2_].mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-NV§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-0T§(param1:Boolean) : void
      {
         §_-Dh§ = param1;
         if(!param1)
         {
            §_-YQ§();
         }
      }
      
      public static function §_-YQ§() : void
      {
         var _loc1_:§_-vy§ = null;
         for each(_loc1_ in §_-NV§)
         {
            _loc1_.§_-YQ§();
         }
      }
      
      public static function §_-UR§() : Boolean
      {
         return §_-Dh§;
      }
      
      public static function §_-A3§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-Yw§
      {
         if(!§_-Dh§)
         {
            return null;
         }
         var _loc5_:§_-vy§;
         if(!(_loc5_ = §_-AJ§(param2)))
         {
            if(§_-wV§)
            {
               §_-o6§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-dI§())
         {
            if(§_-wV§)
            {
               §_-o6§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         return _loc5_.§_-A3§(param1,param3,param4);
      }
      
      public static function §_-GW§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-vy§ = §_-AJ§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-YQ§();
         }
      }
      
      public static function §_-er§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-wV§)
            {
               §_-o6§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-JH§.§_-A3§(param1,param2);
      }
   }
}
