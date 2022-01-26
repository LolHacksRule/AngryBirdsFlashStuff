package §<!M§
{
   import §"! §.§4p§;
   
   public class §3!Z§
   {
      
      public static const §<+§:uint = 16777215;
      
      public static const §[a§:uint = 12632256;
      
      public static const §0!U§:uint = 8421504;
      
      public static const §%[§:uint = 0;
      
      public static const §2b§:uint = 16711680;
      
      public static const §1!@§:uint = 8388608;
      
      public static const §>t§:uint = 16776960;
      
      public static const §+_§:uint = 8421376;
      
      public static const §]_§:uint = 65280;
      
      public static const §`"§:uint = 32768;
      
      public static const §"p§:uint = 65535;
      
      public static const §?h§:uint = 32896;
      
      public static const §^%§:uint = 255;
      
      public static const § !S§:uint = 128;
      
      public static const §1!N§:uint = 16711935;
      
      public static const §#z§:uint = 8388736;
       
      
      public function §3!Z§()
      {
         super();
         throw new §4p§();
      }
      
      public static function §,!B§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §0#§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §!!P§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §"!@§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §6s§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §#1§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
