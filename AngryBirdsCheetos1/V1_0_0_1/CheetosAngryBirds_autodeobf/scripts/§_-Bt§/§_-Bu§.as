package §_-Bt§
{
   import §_-uz§.§_-Kv§;
   
   public class §_-Bu§
   {
      
      public static const §_-YH§:uint = 16777215;
      
      public static const §_-0§:uint = 12632256;
      
      public static const §_-eW§:uint = 8421504;
      
      public static const §_-kJ§:uint = 0;
      
      public static const §_-oi§:uint = 16711680;
      
      public static const §_-8K§:uint = 8388608;
      
      public static const §_-hN§:uint = 16776960;
      
      public static const §_-J3§:uint = 8421376;
      
      public static const §_-oH§:uint = 65280;
      
      public static const §_-4h§:uint = 32768;
      
      public static const §_-xn§:uint = 65535;
      
      public static const §_-NK§:uint = 32896;
      
      public static const §_-2d§:uint = 255;
      
      public static const § case§:uint = 128;
      
      public static const §_-Cq§:uint = 16711935;
      
      public static const §_-UN§:uint = 8388736;
       
      
      public function §_-Bu§()
      {
         super();
         throw new §_-Kv§();
      }
      
      public static function §_-6F§(param1:uint) : int
      {
         return param1 >> 24 & 255;
      }
      
      public static function §_-ld§(param1:uint) : int
      {
         return param1 >> 16 & 255;
      }
      
      public static function §_-bt§(param1:uint) : int
      {
         return param1 >> 8 & 255;
      }
      
      public static function §_-YS§(param1:uint) : int
      {
         return param1 & 255;
      }
      
      public static function §_-1h§(param1:int, param2:int, param3:int) : uint
      {
         return param1 << 16 | param2 << 8 | param3;
      }
      
      public static function §_-jg§(param1:int, param2:int, param3:int, param4:int) : uint
      {
         return param1 << 24 | param2 << 16 | param3 << 8 | param4;
      }
   }
}
