package §6!5§
{
   import §2"7§.§4"A§;
   
   public class §3c§
   {
      
      public static const §<_§:uint = 16777215;
      
      public static const §<j§:uint = 12632256;
      
      public static const §0",§:uint = 8421504;
      
      public static const §9+§:uint = 0;
      
      public static const RED:uint = 16711680;
      
      public static const §+!M§:uint = 8388608;
      
      public static const §19§:uint = 16776960;
      
      public static const §;?§:uint = 8421376;
      
      public static const §30§:uint = 65280;
      
      public static const §5h§:uint = 32768;
      
      public static const §<e§:uint = 65535;
      
      public static const §`"B§:uint = 32896;
      
      public static const §5"#§:uint = 255;
      
      public static const §5!c§:uint = 128;
      
      public static const §&[§:uint = 16711935;
      
      public static const §9§:uint = 8388736;
       
      
      public function §3c§()
      {
         super();
         throw new §4"A§();
      }
      
      public static function §;!E§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §throw§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §!!u§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §8"-§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §&!l§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §`%§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
