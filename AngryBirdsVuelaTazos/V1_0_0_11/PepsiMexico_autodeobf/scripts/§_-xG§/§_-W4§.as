package §_-xG§
{
   import §_-7X§.§_-D2§;
   import §_-7X§.§_-R-§;
   import §_-7X§.§_-eS§;
   import §_-7X§.§_-ui§;
   
   public class §_-W4§
   {
      
      private static var §_-xW§:Number = 30;
       
      
      public function §_-W4§()
      {
         super();
      }
      
      public static function §_-eY§(param1:Number = 10.0, param2:Number = NaN) : §_-R-§
      {
         return new §_-ui§(param1,!!isNaN(param2) ? Number(§_-xW§) : Number(param2));
      }
      
      public static function §_-X8§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-R-§
      {
         return new §_-D2§(param1,param2,!!isNaN(param3) ? Number(§_-xW§) : Number(param3));
      }
      
      public static function set §_-Dc§(param1:Number) : void
      {
         §_-xW§ = param1;
      }
      
      public static function get §_-Dc§() : Number
      {
         return §_-xW§;
      }
      
      public static function §_-Lj§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-R-§
      {
         return new §_-eS§(param2,param1,!!isNaN(param3) ? Number(§_-xW§) : Number(param3));
      }
   }
}
