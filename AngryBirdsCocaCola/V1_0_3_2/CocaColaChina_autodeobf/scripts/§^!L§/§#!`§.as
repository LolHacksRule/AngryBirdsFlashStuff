package §^!L§
{
   import §?X§.§^!c§;
   
   public class §#!`§
   {
      
      public static const §0J§:uint = 16777215;
      
      public static const § use§:uint = 12632256;
      
      public static const §`!A§:uint = 8421504;
      
      public static const §-!V§:uint = 0;
      
      public static const §^!6§:uint = 16711680;
      
      public static const §6e§:uint = 8388608;
      
      public static const §'-§:uint = 16776960;
      
      public static const §]W§:uint = 8421376;
      
      public static const § t§:uint = 65280;
      
      public static const § !_§:uint = 32768;
      
      public static const §"d§:uint = 65535;
      
      public static const §@I§:uint = 32896;
      
      public static const §'!E§:uint = 255;
      
      public static const §@k§:uint = 128;
      
      public static const §]9§:uint = 16711935;
      
      public static const §`!,§:uint = 8388736;
       
      
      public function §#!`§()
      {
         super();
         throw new §^!c§();
      }
      
      public static function §#N§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §^!I§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §;p§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §-!"§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §-i§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function final(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
