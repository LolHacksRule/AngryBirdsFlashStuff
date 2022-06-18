package §>l§
{
   import §7v§.§7!W§;
   
   public class Color
   {
      
      public static const §7!i§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §2]§:uint = 8421504;
      
      public static const §%!6§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §#!O§:uint = 8388608;
      
      public static const §47§:uint = 16776960;
      
      public static const §,"_§:uint = 8421376;
      
      public static const §-q§:uint = 65280;
      
      public static const §^`§:uint = 32768;
      
      public static const §3!d§:uint = 65535;
      
      public static const §!!i§:uint = 32896;
      
      public static const §8!M§:uint = 255;
      
      public static const §#"2§:uint = 128;
      
      public static const §`!S§:uint = 16711935;
      
      public static const §>%§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §7!W§();
      }
      
      public static function §[+§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §,m§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §^!S§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §>#t§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §8!@§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §5# §(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
