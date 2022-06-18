package §2c§
{
   import §%R§.§^!2§;
   
   public class §]e§
   {
      
      public static const §>?§:uint = 16777215;
      
      public static const §&!9§:uint = 12632256;
      
      public static const §@]§:uint = 8421504;
      
      public static const §^!8§:uint = 0;
      
      public static const §<!@§:uint = 16711680;
      
      public static const §%?§:uint = 8388608;
      
      public static const §+e§:uint = 16776960;
      
      public static const §%I§:uint = 8421376;
      
      public static const §8!D§:uint = 65280;
      
      public static const §["§:uint = 32768;
      
      public static const §%!,§:uint = 65535;
      
      public static const §5q§:uint = 32896;
      
      public static const §,&§:uint = 255;
      
      public static const §`-§:uint = 128;
      
      public static const §]+§:uint = 16711935;
      
      public static const §]O§:uint = 8388736;
       
      
      public function §]e§()
      {
         super();
         throw new §^!2§();
      }
      
      public static function §7A§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §&!6§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §2U§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §8!B§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §@O§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function § null§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
