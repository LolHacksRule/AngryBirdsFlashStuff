package §!p§
{
   import §[>§.§8!F§;
   
   public class §=!Z§
   {
      
      public static const §7";§:uint = 16777215;
      
      public static const §9P§:uint = 12632256;
      
      public static const §>!L§:uint = 8421504;
      
      public static const §8!4§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const § o§:uint = 8388608;
      
      public static const §[§:uint = 16776960;
      
      public static const §?H§:uint = 8421376;
      
      public static const §'!G§:uint = 65280;
      
      public static const §^!o§:uint = 32768;
      
      public static const §'!e§:uint = 65535;
      
      public static const §?T§:uint = 32896;
      
      public static const §!!u§:uint = 255;
      
      public static const §0"6§:uint = 128;
      
      public static const §7!§:uint = 16711935;
      
      public static const §%l§:uint = 8388736;
       
      
      public function §=!Z§()
      {
         super();
         throw new §8!F§();
      }
      
      public static function §"C§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §;R§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §9!U§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §"!X§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §06§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function § L§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
