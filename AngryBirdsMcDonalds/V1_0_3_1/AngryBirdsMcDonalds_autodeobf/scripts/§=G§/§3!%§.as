package §=G§
{
   import §^!L§.§5H§;
   
   public class §3!%§
   {
      
      public static const §#!S§:uint = 16777215;
      
      public static const §<q§:uint = 12632256;
      
      public static const §+!$§:uint = 8421504;
      
      public static const §=!k§:uint = 0;
      
      public static const §8!1§:uint = 16711680;
      
      public static const §2!9§:uint = 8388608;
      
      public static const §'J§:uint = 16776960;
      
      public static const §"-§:uint = 8421376;
      
      public static const §<8§:uint = 65280;
      
      public static const §6!A§:uint = 32768;
      
      public static const §'!b§:uint = 65535;
      
      public static const §3!a§:uint = 32896;
      
      public static const §?!a§:uint = 255;
      
      public static const §>!+§:uint = 128;
      
      public static const §`!K§:uint = 16711935;
      
      public static const §?D§:uint = 8388736;
       
      
      public function §3!%§()
      {
         super();
         throw new §5H§();
      }
      
      public static function §@5§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §[s§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §^!>§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §=Q§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §7R§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §^!0§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
