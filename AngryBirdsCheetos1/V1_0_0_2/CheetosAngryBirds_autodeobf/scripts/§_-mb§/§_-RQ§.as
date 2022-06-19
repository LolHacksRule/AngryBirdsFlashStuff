package §_-mb§
{
   import §_-V9§.§_-Ow§;
   
   public class §_-RQ§
   {
      
      public static const §_-4e§:uint = 16777215;
      
      public static const §_-0f§:uint = 12632256;
      
      public static const §_-7Q§:uint = 8421504;
      
      public static const §_-bX§:uint = 0;
      
      public static const §_-JF§:uint = 16711680;
      
      public static const §_-5o§:uint = 8388608;
      
      public static const §_-jL§:uint = 16776960;
      
      public static const §_-yo§:uint = 8421376;
      
      public static const §_-qt§:uint = 65280;
      
      public static const §_-Y9§:uint = 32768;
      
      public static const §switch§:uint = 65535;
      
      public static const §_-IZ§:uint = 32896;
      
      public static const §_-po§:uint = 255;
      
      public static const §_-LM§:uint = 128;
      
      public static const §_-VQ§:uint = 16711935;
      
      public static const §_-jx§:uint = 8388736;
       
      
      public function §_-RQ§()
      {
         super();
         throw new §_-Ow§();
      }
      
      public static function §_-1T§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-LH§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-B-§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-0a§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-Gt§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-kr§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
