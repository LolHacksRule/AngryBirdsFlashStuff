package §_-OP§
{
   import §_-QR§.§_-dN§;
   
   public class §_-ig§
   {
      
      public static const §_-TB§:uint = 16777215;
      
      public static const §_-8G§:uint = 12632256;
      
      public static const §_-Q7§:uint = 8421504;
      
      public static const §_-iD§:uint = 0;
      
      public static const §_-o1§:uint = 16711680;
      
      public static const §_-dR§:uint = 8388608;
      
      public static const §_-7e§:uint = 16776960;
      
      public static const §_-GK§:uint = 8421376;
      
      public static const §_-R9§:uint = 65280;
      
      public static const §_-3S§:uint = 32768;
      
      public static const §_-2y§:uint = 65535;
      
      public static const §_-8A§:uint = 32896;
      
      public static const §_-K9§:uint = 255;
      
      public static const §_-pb§:uint = 128;
      
      public static const §_-XP§:uint = 16711935;
      
      public static const §_-0C§:uint = 8388736;
       
      
      public function §_-ig§()
      {
         super();
         throw new §_-dN§();
      }
      
      public static function §_-th§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-xW§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-D5§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-IB§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-Vv§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-CS§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
