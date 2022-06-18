package §@!E§
{
   import §7^§.§#U§;
   
   public class §?!8§
   {
      
      public static const §7g§:uint = 16777215;
      
      public static const §2s§:uint = 12632256;
      
      public static const §%t§:uint = 8421504;
      
      public static const §]X§:uint = 0;
      
      public static const §2!I§:uint = 16711680;
      
      public static const §7!3§:uint = 8388608;
      
      public static const §6!3§:uint = 16776960;
      
      public static const §`&§:uint = 8421376;
      
      public static const §-0§:uint = 65280;
      
      public static const §'b§:uint = 32768;
      
      public static const §"!9§:uint = 65535;
      
      public static const §%n§:uint = 32896;
      
      public static const §^!I§:uint = 255;
      
      public static const §>Z§:uint = 128;
      
      public static const §<;§:uint = 16711935;
      
      public static const §<W§:uint = 8388736;
       
      
      public function §?!8§()
      {
         super();
         throw new §#U§();
      }
      
      public static function §<!H§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §^$§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §,9§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §"!"§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function § !M§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §18§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
