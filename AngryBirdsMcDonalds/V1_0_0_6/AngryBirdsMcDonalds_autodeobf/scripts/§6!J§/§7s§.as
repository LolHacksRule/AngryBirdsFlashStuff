package §6!J§
{
   import §#F§.§,!8§;
   
   public class §7s§
   {
      
      public static const §>!=§:uint = 16777215;
      
      public static const §5!o§:uint = 12632256;
      
      public static const §35§:uint = 8421504;
      
      public static const §74§:uint = 0;
      
      public static const §-!n§:uint = 16711680;
      
      public static const §8&§:uint = 8388608;
      
      public static const §?P§:uint = 16776960;
      
      public static const §@y§:uint = 8421376;
      
      public static const §-!0§:uint = 65280;
      
      public static const §[!e§:uint = 32768;
      
      public static const §"h§:uint = 65535;
      
      public static const §`!J§:uint = 32896;
      
      public static const §9l§:uint = 255;
      
      public static const §8,§:uint = 128;
      
      public static const §`7§:uint = 16711935;
      
      public static const §!+§:uint = 8388736;
       
      
      public function §7s§()
      {
         super();
         throw new §,!8§();
      }
      
      public static function §,!g§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §<!K§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §]!I§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function § B§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §6$§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §;!@§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
