package §5L§
{
   import §-!3§.§3!9§;
   
   public class §8!8§
   {
      
      public static const §5$§:uint = 16777215;
      
      public static const §8D§:uint = 12632256;
      
      public static const §;!Z§:uint = 8421504;
      
      public static const §9<§:uint = 0;
      
      public static const §4p§:uint = 16711680;
      
      public static const §<a§:uint = 8388608;
      
      public static const §+P§:uint = 16776960;
      
      public static const §1!%§:uint = 8421376;
      
      public static const §;]§:uint = 65280;
      
      public static const §"!1§:uint = 32768;
      
      public static const §4#§:uint = 65535;
      
      public static const §if§:uint = 32896;
      
      public static const §0!B§:uint = 255;
      
      public static const §1S§:uint = 128;
      
      public static const §?!=§:uint = 16711935;
      
      public static const §+!Z§:uint = 8388736;
       
      
      public function §8!8§()
      {
         super();
         throw new §3!9§();
      }
      
      public static function §^V§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §1!@§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §;L§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §`!D§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §[!B§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §1!B§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
