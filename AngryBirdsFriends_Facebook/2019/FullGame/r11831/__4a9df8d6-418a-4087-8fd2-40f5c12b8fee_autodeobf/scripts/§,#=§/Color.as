package §,#=§
{
   import §]#a§.§]$5§;
   
   public class Color
   {
      
      public static const §![§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §,#S§:uint = 8421504;
      
      public static const §9$9§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §%J§:uint = 8388608;
      
      public static const §]!§:uint = 16776960;
      
      public static const §+Y§:uint = 8421376;
      
      public static const §##5§:uint = 65280;
      
      public static const §>!?§:uint = 32768;
      
      public static const §6!"§:uint = 65535;
      
      public static const §3#$§:uint = 32896;
      
      public static const §@#=§:uint = 255;
      
      public static const §0$!§:uint = 128;
      
      public static const §5!J§:uint = 16711935;
      
      public static const §-!%§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §]$5§();
      }
      
      public static function §#!W§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §7!L§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §1[§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §["U§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §3W§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §+#x§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
