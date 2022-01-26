package §_-kC§
{
   import §_-mS§.§_-jy§;
   
   public class §_-T9§
   {
      
      public static const §_-Rx§:uint = 16777215;
      
      public static const §_-aR§:uint = 12632256;
      
      public static const §_-6r§:uint = 8421504;
      
      public static const §_-vl§:uint = 0;
      
      public static const §_-sc§:uint = 16711680;
      
      public static const §_-1Q§:uint = 8388608;
      
      public static const §_-AI§:uint = 16776960;
      
      public static const §_-Qu§:uint = 8421376;
      
      public static const §_-er§:uint = 65280;
      
      public static const §_-wk§:uint = 32768;
      
      public static const §_-rF§:uint = 65535;
      
      public static const §_-aN§:uint = 32896;
      
      public static const §_-jY§:uint = 255;
      
      public static const §_-3m§:uint = 128;
      
      public static const §_-6§:uint = 16711935;
      
      public static const §_-t4§:uint = 8388736;
       
      
      public function §_-T9§()
      {
         super();
         throw new §_-jy§();
      }
      
      public static function §_-kE§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-GF§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-4F§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-Xm§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-tn§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-u4§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
