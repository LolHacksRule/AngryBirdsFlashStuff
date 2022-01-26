package §_-kX§
{
   import §_-ls§.§_-zF§;
   
   public class §_-sy§
   {
      
      public static const §_-75§:uint = 16777215;
      
      public static const §_-C0§:uint = 12632256;
      
      public static const §_-s7§:uint = 8421504;
      
      public static const §while§:uint = 0;
      
      public static const §_-Ht§:uint = 16711680;
      
      public static const §_-lM§:uint = 8388608;
      
      public static const §_-7Y§:uint = 16776960;
      
      public static const §_-ny§:uint = 8421376;
      
      public static const §_-Nh§:uint = 65280;
      
      public static const §_-zK§:uint = 32768;
      
      public static const §_-kq§:uint = 65535;
      
      public static const §_-xm§:uint = 32896;
      
      public static const §_-dz§:uint = 255;
      
      public static const §_-V4§:uint = 128;
      
      public static const §_-43§:uint = 16711935;
      
      public static const §_-6B§:uint = 8388736;
       
      
      public function §_-sy§()
      {
         super();
         throw new §_-zF§();
      }
      
      public static function §_-1u§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-ss§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-9B§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-8I§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-TX§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-WF§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
