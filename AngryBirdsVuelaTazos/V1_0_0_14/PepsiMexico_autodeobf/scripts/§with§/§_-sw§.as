package §with§
{
   import §_-kn§.§_-JS§;
   import §_-kn§.§_-P9§;
   import §_-kn§.§_-kA§;
   import §_-kn§.§_-vp§;
   
   public class §_-sw§
   {
      
      private static var §_-6j§:Number = 30;
       
      
      public function §_-sw§()
      {
         super();
      }
      
      public static function §_-ai§(param1:Number = 10.0, param2:Number = NaN) : §_-kA§
      {
         return new §_-P9§(param1,!!isNaN(param2) ? Number(§_-6j§) : Number(param2));
      }
      
      public static function §_-x9§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-kA§
      {
         return new §_-JS§(param1,param2,!!isNaN(param3) ? Number(§_-6j§) : Number(param3));
      }
      
      public static function set §_-qQ§(param1:Number) : void
      {
         §_-6j§ = param1;
      }
      
      public static function get §_-qQ§() : Number
      {
         return §_-6j§;
      }
      
      public static function §_-cq§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-kA§
      {
         return new §_-vp§(param2,param1,!!isNaN(param3) ? Number(§_-6j§) : Number(param3));
      }
   }
}
