package §%Q§
{
   import §#!S§.§&I§;
   
   public class §`!C§
   {
      
      public static const §1!T§:uint = 16777215;
      
      public static const §!>§:uint = 12632256;
      
      public static const §;6§:uint = 8421504;
      
      public static const §8!K§:uint = 0;
      
      public static const §24§:uint = 16711680;
      
      public static const §^7§:uint = 8388608;
      
      public static const §4!S§:uint = 16776960;
      
      public static const §6q§:uint = 8421376;
      
      public static const §8!]§:uint = 65280;
      
      public static const §#$§:uint = 32768;
      
      public static const §=!b§:uint = 65535;
      
      public static const §,G§:uint = 32896;
      
      public static const §0F§:uint = 255;
      
      public static const §'0§:uint = 128;
      
      public static const § !H§:uint = 16711935;
      
      public static const §`!U§:uint = 8388736;
       
      
      public function §`!C§()
      {
         super();
         throw new §&I§();
      }
      
      public static function §8a§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §,!"§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §1f§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §]!Y§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §>u§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §^w§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
