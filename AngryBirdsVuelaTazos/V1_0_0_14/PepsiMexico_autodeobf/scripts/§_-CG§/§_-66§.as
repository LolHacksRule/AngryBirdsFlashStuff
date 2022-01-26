package §_-CG§
{
   import §_-1y§.§_-3T§;
   
   public class §_-66§
   {
      
      public static const §_-Nu§:uint = 16777215;
      
      public static const §_-Hs§:uint = 12632256;
      
      public static const §_-Lz§:uint = 8421504;
      
      public static const §try §:uint = 0;
      
      public static const §_-yr§:uint = 16711680;
      
      public static const §_-Py§:uint = 8388608;
      
      public static const §_-xl§:uint = 16776960;
      
      public static const §_-4Z§:uint = 8421376;
      
      public static const §_-uX§:uint = 65280;
      
      public static const §_-pF§:uint = 32768;
      
      public static const §_-eL§:uint = 65535;
      
      public static const §_-9F§:uint = 32896;
      
      public static const §_-re§:uint = 255;
      
      public static const §_-ct§:uint = 128;
      
      public static const §_-c2§:uint = 16711935;
      
      public static const §_-W§:uint = 8388736;
       
      
      public function §_-66§()
      {
         super();
         throw new §_-3T§();
      }
      
      public static function §_-QO§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-Bg§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-zD§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-hS§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-Xw§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-0W§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
