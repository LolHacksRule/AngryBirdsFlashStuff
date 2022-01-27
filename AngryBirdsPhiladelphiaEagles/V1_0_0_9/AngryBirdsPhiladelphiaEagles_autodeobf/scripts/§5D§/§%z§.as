package §5D§
{
   import §]!#§.§"!"§;
   
   public class §%z§
   {
      
      public static const §`!I§:uint = 16777215;
      
      public static const §;$§:uint = 12632256;
      
      public static const §?!P§:uint = 8421504;
      
      public static const §?m§:uint = 0;
      
      public static const §-X§:uint = 16711680;
      
      public static const §5!G§:uint = 8388608;
      
      public static const §^=§:uint = 16776960;
      
      public static const §81§:uint = 8421376;
      
      public static const §=B§:uint = 65280;
      
      public static const §;!3§:uint = 32768;
      
      public static const §#C§:uint = 65535;
      
      public static const §;X§:uint = 32896;
      
      public static const §9!2§:uint = 255;
      
      public static const §1?§:uint = 128;
      
      public static const §>D§:uint = 16711935;
      
      public static const §9K§:uint = 8388736;
       
      
      public function §%z§()
      {
         super();
         throw new §"!"§();
      }
      
      public static function §=_§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §"!J§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §4w§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function § get§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §`1§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §1!6§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
