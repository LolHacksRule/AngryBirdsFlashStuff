package §0"D§
{
   import §8"'§.§2!H§;
   
   public class Color
   {
      
      public static const §9t§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §<a§:uint = 8421504;
      
      public static const §="U§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const § # §:uint = 8388608;
      
      public static const §2!&§:uint = 16776960;
      
      public static const §-!R§:uint = 8421376;
      
      public static const §<!I§:uint = 65280;
      
      public static const §[!w§:uint = 32768;
      
      public static const §+!8§:uint = 65535;
      
      public static const §&"A§:uint = 32896;
      
      public static const §+">§:uint = 255;
      
      public static const §7#A§:uint = 128;
      
      public static const §6w§:uint = 16711935;
      
      public static const §2#-§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §2!H§();
      }
      
      public static function §;"g§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §0"3§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §-"]§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function § "x§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §%!#§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §[#X§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
