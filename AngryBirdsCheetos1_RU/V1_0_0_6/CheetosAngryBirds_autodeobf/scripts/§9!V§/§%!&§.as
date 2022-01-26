package §9!V§
{
   import §9!6§.§&!;§;
   
   public class §%!&§
   {
      
      public static const §=l§:uint = 16777215;
      
      public static const §<,§:uint = 12632256;
      
      public static const §!v§:uint = 8421504;
      
      public static const §9,§:uint = 0;
      
      public static const §&§:uint = 16711680;
      
      public static const §`!C§:uint = 8388608;
      
      public static const §"!#§:uint = 16776960;
      
      public static const §6!<§:uint = 8421376;
      
      public static const § !6§:uint = 65280;
      
      public static const §-!M§:uint = 32768;
      
      public static const §88§:uint = 65535;
      
      public static const §-M§:uint = 32896;
      
      public static const §-!@§:uint = 255;
      
      public static const §4!^§:uint = 128;
      
      public static const §[!T§:uint = 16711935;
      
      public static const §6+§:uint = 8388736;
       
      
      public function §%!&§()
      {
         super();
         throw new §&!;§();
      }
      
      public static function §^>§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §'j§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §;!J§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §<!L§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §1§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §`!4§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
