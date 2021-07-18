package §_-hG§
{
   import §_-5y§.§_-Bf§;
   import §_-5y§.§_-G1§;
   import §_-5y§.§_-II§;
   import §_-5y§.§_-sk§;
   
   public class §_-l§
   {
      
      private static var §_-ef§:Number = 30;
       
      
      public function §_-l§()
      {
         super();
      }
      
      public static function §_-PA§(param1:Number = 10.0, param2:Number = NaN) : §_-Bf§
      {
         return new §_-II§(param1,!!isNaN(param2) ? Number(§_-ef§) : Number(param2));
      }
      
      public static function §_-Cp§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-Bf§
      {
         return new §_-G1§(param1,param2,!!isNaN(param3) ? Number(§_-ef§) : Number(param3));
      }
      
      public static function set §_-BD§(param1:Number) : void
      {
         §_-ef§ = param1;
      }
      
      public static function get §_-BD§() : Number
      {
         return §_-ef§;
      }
      
      public static function §_-SA§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-Bf§
      {
         return new §_-sk§(param2,param1,!!isNaN(param3) ? Number(§_-ef§) : Number(param3));
      }
   }
}
