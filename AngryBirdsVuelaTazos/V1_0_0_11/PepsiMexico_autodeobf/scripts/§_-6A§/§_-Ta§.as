package §_-6A§
{
   import §_-bI§.§_-oJ§;
   
   public class §_-Ta§
   {
      
      public static const §_-Og§:uint = 16777215;
      
      public static const §_-M8§:uint = 12632256;
      
      public static const §_-uA§:uint = 8421504;
      
      public static const §_-1E§:uint = 0;
      
      public static const §_-2E§:uint = 16711680;
      
      public static const §_-To§:uint = 8388608;
      
      public static const §_-Cc§:uint = 16776960;
      
      public static const §_-lf§:uint = 8421376;
      
      public static const § for§:uint = 65280;
      
      public static const §_-NE§:uint = 32768;
      
      public static const §_-P8§:uint = 65535;
      
      public static const §_-Tg§:uint = 32896;
      
      public static const §_-tG§:uint = 255;
      
      public static const §_-6T§:uint = 128;
      
      public static const §_-I6§:uint = 16711935;
      
      public static const §_-Ma§:uint = 8388736;
       
      
      public function §_-Ta§()
      {
         super();
         throw new §_-oJ§();
      }
      
      public static function §function§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-Vz§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-A7§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-4E§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-tx§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-58§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
