package §7G§
{
   import §"l§.§2!-§;
   
   public class §[!0§
   {
      
      public static const §^&§:uint = 16777215;
      
      public static const §^9§:uint = 12632256;
      
      public static const §]!$§:uint = 8421504;
      
      public static const §7j§:uint = 0;
      
      public static const §4"§:uint = 16711680;
      
      public static const §5>§:uint = 8388608;
      
      public static const §!!H§:uint = 16776960;
      
      public static const §!! §:uint = 8421376;
      
      public static const §#!E§:uint = 65280;
      
      public static const §%O§:uint = 32768;
      
      public static const §=i§:uint = 65535;
      
      public static const §&k§:uint = 32896;
      
      public static const §"!M§:uint = 255;
      
      public static const §19§:uint = 128;
      
      public static const §^j§:uint = 16711935;
      
      public static const §?9§:uint = 8388736;
       
      
      public function §[!0§()
      {
         super();
         throw new §2!-§();
      }
      
      public static function §;V§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §-r§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §;!=§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §]&§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §3=§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §#=§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
