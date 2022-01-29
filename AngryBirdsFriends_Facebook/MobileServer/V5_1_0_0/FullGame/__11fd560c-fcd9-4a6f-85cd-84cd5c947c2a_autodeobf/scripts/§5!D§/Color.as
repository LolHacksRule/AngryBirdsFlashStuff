package §5!D§
{
   import §+#B§.§'"V§;
   
   public class Color
   {
      
      public static const §@!E§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §;"M§:uint = 8421504;
      
      public static const §#!u§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §72§:uint = 8388608;
      
      public static const §4G§:uint = 16776960;
      
      public static const §'!m§:uint = 8421376;
      
      public static const §=#=§:uint = 65280;
      
      public static const §^$8§:uint = 32768;
      
      public static const §#"4§:uint = 65535;
      
      public static const §9R§:uint = 32896;
      
      public static const §[#`§:uint = 255;
      
      public static const §4!R§:uint = 128;
      
      public static const §[y§:uint = 16711935;
      
      public static const §0=§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §'"V§();
      }
      
      public static function §3#M§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §["=§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §>#U§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §9$%§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §7k§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §;#`§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
