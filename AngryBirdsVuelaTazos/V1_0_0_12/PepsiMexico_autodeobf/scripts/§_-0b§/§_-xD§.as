package §_-0b§
{
   import §_-nh§.§_-6J§;
   
   public class §_-xD§
   {
      
      public static const §super§:uint = 16777215;
      
      public static const §_-2q§:uint = 12632256;
      
      public static const §_-A2§:uint = 8421504;
      
      public static const §_-6S§:uint = 0;
      
      public static const §_-Dq§:uint = 16711680;
      
      public static const §_-9m§:uint = 8388608;
      
      public static const §_-L3§:uint = 16776960;
      
      public static const §_-sK§:uint = 8421376;
      
      public static const §_-Od§:uint = 65280;
      
      public static const §_-SY§:uint = 32768;
      
      public static const §_-J9§:uint = 65535;
      
      public static const §null§:uint = 32896;
      
      public static const §_-Qc§:uint = 255;
      
      public static const §_-4t§:uint = 128;
      
      public static const §throw§:uint = 16711935;
      
      public static const §_-jW§:uint = 8388736;
       
      
      public function §_-xD§()
      {
         super();
         throw new §_-6J§();
      }
      
      public static function §_-7z§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-oD§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-P1§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-e-§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-qE§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-sD§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
