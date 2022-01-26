package §_-5x§
{
   import §_-ZG§.§_-Ne§;
   
   public class §_-8p§
   {
      
      private static var §_-X3§:Boolean = true;
      
      private static const §_-wc§:int = 32;
      
      private static var §_-A4§:int;
      
      private static var §_-gl§:Vector.<§_-op§>;
      
      public static const §_-Uz§:String = "Default_Channel";
      
      public static const §_-tV§:Boolean = false;
       
      
      public function §_-8p§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-gl§ = new Vector.<§_-op§>();
         §_-A4§ = 0;
         §_-qQ§(§_-Uz§,4,1);
      }
      
      public static function §_-qQ§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-A4§ >= §_-wc§)
         {
            if(§_-tV§)
            {
               §_-Ne§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-wc§ + " reserved");
            }
            return;
         }
         if(§_-A4§ + param2 >= §_-wc§)
         {
            param2 = §_-wc§ - §_-A4§;
         }
         §_-gl§.push(new §_-op§(param1,param2,param3));
         §_-A4§ += param2;
      }
      
      public static function §_-jm§(param1:String) : §_-op§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-gl§.length)
         {
            if(§_-gl§[_loc2_].mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-gl§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §_-63§(param1:Boolean) : void
      {
         §_-X3§ = param1;
         if(!param1)
         {
            §_-m-§();
         }
      }
      
      public static function §_-m-§() : void
      {
         var _loc1_:§_-op§ = null;
         for each(_loc1_ in §_-gl§)
         {
            _loc1_.§_-m-§();
         }
      }
      
      public static function §_-kU§() : Boolean
      {
         return §_-X3§;
      }
      
      public static function §_-rD§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-L0§
      {
         if(!§_-X3§)
         {
            return null;
         }
         var _loc5_:§_-op§;
         if(!(_loc5_ = §_-jm§(param2)))
         {
            if(§_-tV§)
            {
               §_-Ne§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-uf§())
         {
            if(§_-tV§)
            {
               §_-Ne§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         return _loc5_.§_-rD§(param1,param3,param4);
      }
      
      public static function §_-MU§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-op§ = §_-jm§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-m-§();
         }
      }
      
      public static function §_-0t§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-tV§)
            {
               §_-Ne§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-8p§.§_-rD§(param1,param2);
      }
   }
}
