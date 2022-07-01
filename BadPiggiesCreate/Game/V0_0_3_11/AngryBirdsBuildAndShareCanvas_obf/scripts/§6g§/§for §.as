package §6g§
{
   import §4"4§.§ !%§;
   import §4"4§.§&<§;
   import §4"4§.§-!G§;
   import §4"4§.§[!Q§;
   
   public class §for §
   {
      
      private static var §^",§:Number = 30;
       
      
      public function §for §()
      {
         super();
      }
      
      public static function §-S§(param1:Number = 10.0, param2:Number = NaN) : §-!G§
      {
         return new § !%§(param1,!!isNaN(param2) ? Number(§^",§) : Number(param2));
      }
      
      public static function §7"7§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §-!G§
      {
         return new §&<§(param1,param2,!!isNaN(param3) ? Number(§^",§) : Number(param3));
      }
      
      public static function set §&6§(param1:Number) : void
      {
         §^",§ = param1;
      }
      
      public static function get §&6§() : Number
      {
         return §^",§;
      }
      
      public static function §16§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §-!G§
      {
         return new §[!Q§(param2,param1,!!isNaN(param3) ? Number(§^",§) : Number(param3));
      }
   }
}
