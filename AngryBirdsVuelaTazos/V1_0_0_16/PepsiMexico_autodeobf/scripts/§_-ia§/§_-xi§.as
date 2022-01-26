package §_-ia§
{
   import §_-HT§.§_-rU§;
   
   public class §_-xi§
   {
      
      public static const §_-5e§:uint = 16777215;
      
      public static const §_-l0§:uint = 12632256;
      
      public static const §_-sG§:uint = 8421504;
      
      public static const §_-KW§:uint = 0;
      
      public static const §_-Oj§:uint = 16711680;
      
      public static const §_-3c§:uint = 8388608;
      
      public static const §_-lu§:uint = 16776960;
      
      public static const §_-8i§:uint = 8421376;
      
      public static const §_-FY§:uint = 65280;
      
      public static const §_-Ku§:uint = 32768;
      
      public static const §_-Z-§:uint = 65535;
      
      public static const §_-Xr§:uint = 32896;
      
      public static const §_-Yb§:uint = 255;
      
      public static const §_-EI§:uint = 128;
      
      public static const §_-Qd§:uint = 16711935;
      
      public static const §_-31§:uint = 8388736;
       
      
      public function §_-xi§()
      {
         super();
         throw new §_-rU§();
      }
      
      public static function §_-Hy§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-UI§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-KU§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-gf§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-6F§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-Gc§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
