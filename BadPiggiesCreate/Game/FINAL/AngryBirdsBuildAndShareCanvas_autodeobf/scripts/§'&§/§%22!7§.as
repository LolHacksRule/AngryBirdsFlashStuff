package §'&§
{
   import §2p§.§'!B§;
   import §2p§.§+P§;
   import §2p§.§0L§;
   import §2p§.§1>§;
   
   public class §"!7§
   {
      
      private static var §6z§:Number = 30;
       
      
      public function §"!7§()
      {
         super();
      }
      
      public static function §'<§(param1:Number = 10.0, param2:Number = NaN) : §1>§
      {
         return new §+P§(param1,!!isNaN(param2) ? Number(§6z§) : Number(param2));
      }
      
      public static function § >§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §1>§
      {
         return new §0L§(param1,param2,!!isNaN(param3) ? Number(§6z§) : Number(param3));
      }
      
      public static function set §;N§(param1:Number) : void
      {
         §6z§ = param1;
      }
      
      public static function get §;N§() : Number
      {
         return §6z§;
      }
      
      public static function §""§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §1>§
      {
         return new §'!B§(param2,param1,!!isNaN(param3) ? Number(§6z§) : Number(param3));
      }
   }
}
