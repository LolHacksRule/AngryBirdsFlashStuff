package §8#p§
{
   import §'"T§.§`#y§;
   
   public class Color
   {
      
      public static const §-P§:uint = 16777215;
      
      public static const SILVER:uint = 12632256;
      
      public static const §,"0§:uint = 8421504;
      
      public static const §^!9§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §&!3§:uint = 8388608;
      
      public static const §@#r§:uint = 16776960;
      
      public static const §"Q§:uint = 8421376;
      
      public static const §1#h§:uint = 65280;
      
      public static const §<!@§:uint = 32768;
      
      public static const §,"X§:uint = 65535;
      
      public static const §case §:uint = 32896;
      
      public static const §-o§:uint = 255;
      
      public static const §9#U§:uint = 128;
      
      public static const §-"l§:uint = 16711935;
      
      public static const §1u§:uint = 8388736;
       
      
      public function Color()
      {
         super();
         throw new §`#y§();
      }
      
      public static function §=#4§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §!!F§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §<!n§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §,=§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §<"B§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §`$'§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
