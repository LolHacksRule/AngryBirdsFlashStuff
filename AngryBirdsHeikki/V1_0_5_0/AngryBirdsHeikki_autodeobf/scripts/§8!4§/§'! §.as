package §8!4§
{
   import §#!J§.§%!M§;
   
   public class §'! §
   {
      
      public static const §^G§:uint = 16777215;
      
      public static const §3#§:uint = 12632256;
      
      public static const §!!P§:uint = 8421504;
      
      public static const §+!<§:uint = 0;
      
      public static const §+4§:uint = 16711680;
      
      public static const §^r§:uint = 8388608;
      
      public static const §%!L§:uint = 16776960;
      
      public static const §;!&§:uint = 8421376;
      
      public static const §0O§:uint = 65280;
      
      public static const §4p§:uint = 32768;
      
      public static const §+![§:uint = 65535;
      
      public static const §2'§:uint = 32896;
      
      public static const §7!$§:uint = 255;
      
      public static const §'z§:uint = 128;
      
      public static const §2Y§:uint = 16711935;
      
      public static const §@c§:uint = 8388736;
       
      
      public function §'! §()
      {
         super();
         throw new §%!M§();
      }
      
      public static function §8>§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §;_§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §8^§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §'c§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §?,§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §<!6§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
