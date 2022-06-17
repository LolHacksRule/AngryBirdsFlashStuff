package §#"l§
{
   import §3!z§.§`9§;
   
   public class Color
   {
      
      public static const §8"h§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §,#L§:uint = 8421504;
      
      public static const §`"8§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §"#!§:uint = 8388608;
      
      public static const §^!<§:uint = 16776960;
      
      public static const §>#R§:uint = 8421376;
      
      public static const §[#D§:uint = 65280;
      
      public static const §&">§:uint = 32768;
      
      public static const §]!0§:uint = 65535;
      
      public static const §"$8§:uint = 32896;
      
      public static const §#">§:uint = 255;
      
      public static const § #c§:uint = 128;
      
      public static const §5$C§:uint = 16711935;
      
      public static const §+P§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §`9§();
      }
      
      public static function §0#R§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §1"M§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §%"i§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function § !Y§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §+"o§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §8L§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
