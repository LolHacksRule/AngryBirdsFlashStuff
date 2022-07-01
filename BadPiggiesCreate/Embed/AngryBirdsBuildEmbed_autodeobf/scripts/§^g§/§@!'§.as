package §^g§
{
   import §4!r§.§1@§;
   import §4!r§.§;s§;
   import §4!r§.§>!9§;
   import §4!r§.§[!m§;
   
   public class §@!'§
   {
      
      private static var §`%§:Number = 30;
       
      
      public function §@!'§()
      {
         super();
      }
      
      public static function §6![§(param1:Number = 10.0, param2:Number = NaN) : §[!m§
      {
         return new §1@§(param1,!!isNaN(param2) ? Number(§`%§) : Number(param2));
      }
      
      public static function §7<§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §[!m§
      {
         return new §;s§(param1,param2,!!isNaN(param3) ? Number(§`%§) : Number(param3));
      }
      
      public static function set §;!t§(param1:Number) : void
      {
         §`%§ = param1;
      }
      
      public static function get §;!t§() : Number
      {
         return §`%§;
      }
      
      public static function §!?§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §[!m§
      {
         return new §>!9§(param2,param1,!!isNaN(param3) ? Number(§`%§) : Number(param3));
      }
   }
}
