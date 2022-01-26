package §_-VN§
{
   import §_-lT§.§ use§;
   import §_-lT§.§_-5f§;
   import §_-lT§.§_-g7§;
   import §_-lT§.§_-gN§;
   
   public class §_-eS§
   {
      
      private static var §_-ZM§:Number = 30;
       
      
      public function §_-eS§()
      {
         super();
      }
      
      public static function §_-aD§(param1:Number = 10.0, param2:Number = NaN) : §_-g7§
      {
         return new § use§(param1,!!isNaN(param2) ? Number(§_-ZM§) : Number(param2));
      }
      
      public static function §_-L7§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-g7§
      {
         return new §_-gN§(param1,param2,!!isNaN(param3) ? Number(§_-ZM§) : Number(param3));
      }
      
      public static function set §_-4O§(param1:Number) : void
      {
         §_-ZM§ = param1;
      }
      
      public static function get §_-4O§() : Number
      {
         return §_-ZM§;
      }
      
      public static function §_-qp§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-g7§
      {
         return new §_-5f§(param2,param1,!!isNaN(param3) ? Number(§_-ZM§) : Number(param3));
      }
   }
}
