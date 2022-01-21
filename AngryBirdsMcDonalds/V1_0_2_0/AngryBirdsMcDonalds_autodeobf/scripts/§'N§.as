package
{
   import §@8§.§7I§;
   
   public class §'N§
   {
      
      public static const §07§:uint = 16777215;
      
      public static const §^%§:uint = 12632256;
      
      public static const §9'§:uint = 8421504;
      
      public static const §3#§:uint = 0;
      
      public static const §!!&§:uint = 16711680;
      
      public static const §[!b§:uint = 8388608;
      
      public static const §<;§:uint = 16776960;
      
      public static const §`!4§:uint = 8421376;
      
      public static const §5!O§:uint = 65280;
      
      public static const §?s§:uint = 32768;
      
      public static const §66§:uint = 65535;
      
      public static const §5-§:uint = 32896;
      
      public static const §;![§:uint = 255;
      
      public static const §^!o§:uint = 128;
      
      public static const §'!M§:uint = 16711935;
      
      public static const §?!Y§:uint = 8388736;
       
      
      public function §'N§()
      {
         super();
         throw new §7I§();
      }
      
      public static function §99§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §!!U§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §8!?§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §1d§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §4!Z§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §2!_§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
