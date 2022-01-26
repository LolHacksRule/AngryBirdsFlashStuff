package §_-ej§
{
   import §_-JU§.§_-HM§;
   import §_-JU§.§_-Is§;
   import §_-JU§.§_-Kq§;
   import §_-JU§.§_-sF§;
   
   public class §_-ax§
   {
      
      private static var §_-1I§:Number = 30;
       
      
      public function §_-ax§()
      {
         super();
      }
      
      public static function §_-bR§(param1:Number = 10.0, param2:Number = NaN) : §_-Is§
      {
         return new §_-Kq§(param1,!!isNaN(param2) ? Number(§_-1I§) : Number(param2));
      }
      
      public static function §_-hP§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-Is§
      {
         return new §_-HM§(param1,param2,!!isNaN(param3) ? Number(§_-1I§) : Number(param3));
      }
      
      public static function set §_-ZG§(param1:Number) : void
      {
         §_-1I§ = param1;
      }
      
      public static function get §_-ZG§() : Number
      {
         return §_-1I§;
      }
      
      public static function §_-ru§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-Is§
      {
         return new §_-sF§(param2,param1,!!isNaN(param3) ? Number(§_-1I§) : Number(param3));
      }
   }
}
