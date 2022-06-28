package §_-UD§
{
   import §_-JM§.§_-03y§;
   
   public class §_-Jy§
   {
      
      public static const §_-y§:uint = 16777215;
      
      public static const §_-034§:uint = 12632256;
      
      public static const §_-1Y§:uint = 8421504;
      
      public static const §_-f5§:uint = 0;
      
      public static const §_-Gk§:uint = 16711680;
      
      public static const §_-3H§:uint = 8388608;
      
      public static const §_-Ol§:uint = 16776960;
      
      public static const §_-pp§:uint = 8421376;
      
      public static const §_-l§:uint = 65280;
      
      public static const §_-0Aj§:uint = 32768;
      
      public static const §_-IK§:uint = 65535;
      
      public static const §_-UT§:uint = 32896;
      
      public static const §_-Oz§:uint = 255;
      
      public static const §_-kS§:uint = 128;
      
      public static const §_-NR§:uint = 16711935;
      
      public static const §_-cX§:uint = 8388736;
       
      
      public function §_-Jy§()
      {
         super();
         throw new §_-03y§();
      }
      
      public static function §_-nB§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §throw§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-OU§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-Gv§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-Ub§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-8b§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
