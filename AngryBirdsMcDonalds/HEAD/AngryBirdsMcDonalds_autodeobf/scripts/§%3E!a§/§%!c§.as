package §>!a§
{
   import §3!'§.§+!6§;
   
   public class §%!c§
   {
      
      public static const §1!Q§:uint = 16777215;
      
      public static const §&@§:uint = 12632256;
      
      public static const §"5§:uint = 8421504;
      
      public static const §]6§:uint = 0;
      
      public static const §+!I§:uint = 16711680;
      
      public static const §9!B§:uint = 8388608;
      
      public static const §=s§:uint = 16776960;
      
      public static const §]@§:uint = 8421376;
      
      public static const § !N§:uint = 65280;
      
      public static const get:uint = 32768;
      
      public static const §#Y§:uint = 65535;
      
      public static const §<Q§:uint = 32896;
      
      public static const §!&§:uint = 255;
      
      public static const §6!c§:uint = 128;
      
      public static const §3!T§:uint = 16711935;
      
      public static const §#p§:uint = 8388736;
       
      
      public function §%!c§()
      {
         super();
         throw new §+!6§();
      }
      
      public static function §[!L§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §1r§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §^y§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §?M§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §4I§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §&^§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
