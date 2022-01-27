package §3"e§
{
   import §!"u§.§^!,§;
   
   public class §!G§
   {
      
      public static const §+!Q§:uint = 16777215;
      
      public static const §-m§:uint = 12632256;
      
      public static const §0"u§:uint = 8421504;
      
      public static const §<!e§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §,!I§:uint = 8388608;
      
      public static const §@!a§:uint = 16776960;
      
      public static const §2]§:uint = 8421376;
      
      public static const §?R§:uint = 65280;
      
      public static const GREEN:uint = 32768;
      
      public static const §`"4§:uint = 65535;
      
      public static const §3_§:uint = 32896;
      
      public static const BLUE:uint = 255;
      
      public static const §`h§:uint = 128;
      
      public static const §1"z§:uint = 16711935;
      
      public static const §3"#§:uint = 8388736;
       
      
      public function §!G§()
      {
         super();
         throw new §^!,§();
      }
      
      public static function §7o§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function § !H§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §+!7§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §?V§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §&"z§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §"]§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
