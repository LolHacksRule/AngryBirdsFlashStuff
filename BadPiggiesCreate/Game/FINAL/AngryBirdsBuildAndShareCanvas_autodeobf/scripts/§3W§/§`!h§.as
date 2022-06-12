package §3W§
{
   import §2!F§.§["?§;
   
   public class §`!h§
   {
      
      public static const §!!O§:uint = 16777215;
      
      public static const §4`§:uint = 12632256;
      
      public static const §5t§:uint = 8421504;
      
      public static const §[!2§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §9]§:uint = 8388608;
      
      public static const §-">§:uint = 16776960;
      
      public static const §8!'§:uint = 8421376;
      
      public static const §<!9§:uint = 65280;
      
      public static const §,?§:uint = 32768;
      
      public static const §>u§:uint = 65535;
      
      public static const §96§:uint = 32896;
      
      public static const §+=§:uint = 255;
      
      public static const §;"&§:uint = 128;
      
      public static const §?"=§:uint = 16711935;
      
      public static const §5b§:uint = 8388736;
       
      
      public function §`!h§()
      {
         super();
         throw new §["?§();
      }
      
      public static function §&!-§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §2!,§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §`"<§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §]&§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §#!X§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §6>§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
