package §4"D§
{
   import §'#Z§.§"!v§;
   
   public class Color
   {
      
      public static const §9!d§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §6$!§:uint = 8421504;
      
      public static const §!$6§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §1#2§:uint = 8388608;
      
      public static const §0#<§:uint = 16776960;
      
      public static const §&"!§:uint = 8421376;
      
      public static const §%#O§:uint = 65280;
      
      public static const §"!C§:uint = 32768;
      
      public static const §]"W§:uint = 65535;
      
      public static const §?#d§:uint = 32896;
      
      public static const §;!7§:uint = 255;
      
      public static const §]!0§:uint = 128;
      
      public static const §2!e§:uint = 16711935;
      
      public static const §0]§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §"!v§();
      }
      
      public static function §%#o§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §<!D§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §"!8§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §7!i§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §>![§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §>"E§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
