package §,G§
{
   import §8E§.§6g§;
   
   public class §"p§
   {
      
      public static const §<!§:uint = 16777215;
      
      public static const §4>§:uint = 12632256;
      
      public static const §-T§:uint = 8421504;
      
      public static const §1H§:uint = 0;
      
      public static const §]L§:uint = 16711680;
      
      public static const §7Z§:uint = 8388608;
      
      public static const §1'§:uint = 16776960;
      
      public static const §=h§:uint = 8421376;
      
      public static const §&O§:uint = 65280;
      
      public static const §^%§:uint = 32768;
      
      public static const §9!D§:uint = 65535;
      
      public static const §?E§:uint = 32896;
      
      public static const §1b§:uint = 255;
      
      public static const §@%§:uint = 128;
      
      public static const §%X§:uint = 16711935;
      
      public static const §6!#§:uint = 8388736;
       
      
      public function §"p§()
      {
         super();
         throw new §6g§();
      }
      
      public static function §for §(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §9V§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §5J§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §@R§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §0!J§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §%!+§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
