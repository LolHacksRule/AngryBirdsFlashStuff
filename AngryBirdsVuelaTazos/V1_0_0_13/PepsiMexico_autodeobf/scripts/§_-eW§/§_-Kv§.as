package §_-eW§
{
   import §_-Wa§.§_-8X§;
   import §_-Wa§.§_-HZ§;
   import §_-Wa§.§_-gz§;
   import §_-Wa§.§_-xw§;
   
   public class §_-Kv§
   {
      
      private static var §_-Bz§:Number = 30;
       
      
      public function §_-Kv§()
      {
         super();
      }
      
      public static function §_-C-§(param1:Number = 10.0, param2:Number = NaN) : §_-8X§
      {
         return new §_-HZ§(param1,!!isNaN(param2) ? Number(§_-Bz§) : Number(param2));
      }
      
      public static function §_-Gd§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §_-8X§
      {
         return new §_-xw§(param1,param2,!!isNaN(param3) ? Number(§_-Bz§) : Number(param3));
      }
      
      public static function set §_-nW§(param1:Number) : void
      {
         §_-Bz§ = param1;
      }
      
      public static function get §_-nW§() : Number
      {
         return §_-Bz§;
      }
      
      public static function §_-uF§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §_-8X§
      {
         return new §_-gz§(param2,param1,!!isNaN(param3) ? Number(§_-Bz§) : Number(param3));
      }
   }
}
