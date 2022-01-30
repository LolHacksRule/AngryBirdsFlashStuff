package §?"5§
{
   import §4!H§.§05§;
   import §4!H§.§5!V§;
   import §4!H§.§6!F§;
   import §4!H§.§>E§;
   
   public class §7! §
   {
      
      private static var §>g§:Number = 30;
       
      
      public function §7! §()
      {
         super();
      }
      
      public static function §"%§(param1:Number = 10.0, param2:Number = NaN) : §05§
      {
         return new §6!F§(param1,!!isNaN(param2) ? Number(§>g§) : Number(param2));
      }
      
      public static function §=!`§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §05§
      {
         return new §5!V§(param1,param2,!!isNaN(param3) ? Number(§>g§) : Number(param3));
      }
      
      public static function set §3U§(param1:Number) : void
      {
         §>g§ = param1;
      }
      
      public static function get §3U§() : Number
      {
         return §>g§;
      }
      
      public static function §+s§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §05§
      {
         return new §>E§(param2,param1,!!isNaN(param3) ? Number(§>g§) : Number(param3));
      }
   }
}
