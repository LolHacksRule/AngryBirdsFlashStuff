package § !L§
{
   import §9g§.§#i§;
   import §9g§.§-f§;
   import §9g§.§<!O§;
   import §9g§.§[!$§;
   
   public class §"+§
   {
      
      private static var §3!b§:Number = 30;
       
      
      public function §"+§()
      {
         super();
      }
      
      public static function §%!R§(param1:Number = 10.0, param2:Number = NaN) : §-f§
      {
         return new §#i§(param1,!!isNaN(param2) ? Number(§3!b§) : Number(param2));
      }
      
      public static function §1s§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §-f§
      {
         return new §<!O§(param1,param2,!!isNaN(param3) ? Number(§3!b§) : Number(param3));
      }
      
      public static function set §<l§(param1:Number) : void
      {
         §3!b§ = param1;
      }
      
      public static function get §<l§() : Number
      {
         return §3!b§;
      }
      
      public static function §"8§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §-f§
      {
         return new §[!$§(param2,param1,!!isNaN(param3) ? Number(§3!b§) : Number(param3));
      }
   }
}
