package §%!<§
{
   import §7"+§.§8J§;
   import §7"+§.§;!j§;
   import §7"+§.§]F§;
   import §7"+§.§case§;
   
   public class §8f§
   {
      
      private static var §6!t§:Number = 30;
       
      
      public function §8f§()
      {
         super();
      }
      
      public static function § K§(param1:Number = 10.0, param2:Number = NaN) : §]F§
      {
         return new §case§(param1,!!isNaN(param2) ? Number(§6!t§) : Number(param2));
      }
      
      public static function §3+§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §]F§
      {
         return new §;!j§(param1,param2,!!isNaN(param3) ? Number(§6!t§) : Number(param3));
      }
      
      public static function set §+O§(param1:Number) : void
      {
         §6!t§ = param1;
      }
      
      public static function get §+O§() : Number
      {
         return §6!t§;
      }
      
      public static function §>F§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §]F§
      {
         return new §8J§(param2,param1,!!isNaN(param3) ? Number(§6!t§) : Number(param3));
      }
   }
}
