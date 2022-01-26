package §_-Zq§
{
   import §_-dQ§.§_-wO§;
   
   public class §_-K0§
   {
      
      public static const §_-pS§:uint = 16777215;
      
      public static const §_-dg§:uint = 12632256;
      
      public static const §_-7B§:uint = 8421504;
      
      public static const §_-wf§:uint = 0;
      
      public static const §_-dt§:uint = 16711680;
      
      public static const §_-g9§:uint = 8388608;
      
      public static const §_-sg§:uint = 16776960;
      
      public static const §_-hJ§:uint = 8421376;
      
      public static const §_-J5§:uint = 65280;
      
      public static const §_-5R§:uint = 32768;
      
      public static const §_-5G§:uint = 65535;
      
      public static const §_-pJ§:uint = 32896;
      
      public static const §_-wD§:uint = 255;
      
      public static const §_-v§:uint = 128;
      
      public static const §_-bI§:uint = 16711935;
      
      public static const §_-SM§:uint = 8388736;
       
      
      public function §_-K0§()
      {
         super();
         throw new §_-wO§();
      }
      
      public static function §_-Bt§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-T5§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-Rp§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-kl§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-hk§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-wh§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
