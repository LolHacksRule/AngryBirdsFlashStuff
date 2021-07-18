package §]!-§
{
   import §0x§.§""4§;
   import §0x§.§#!c§;
   import §0x§.§,"<§;
   import §0x§.§?"3§;
   
   public class §5C§
   {
      
      private static var §5!E§:Number = 30;
       
      
      public function §5C§()
      {
         super();
      }
      
      public static function §]!1§(param1:Number = 10.0, param2:Number = NaN) : §?"3§
      {
         return new §#!c§(param1,!!isNaN(param2) ? Number(§5!E§) : Number(param2));
      }
      
      public static function §3Y§(param1:Number = 0.2, param2:Number = 1.0E-4, param3:Number = NaN) : §?"3§
      {
         return new §,"<§(param1,param2,!!isNaN(param3) ? Number(§5!E§) : Number(param3));
      }
      
      public static function set §`"8§(param1:Number) : void
      {
         §5!E§ = param1;
      }
      
      public static function get §`"8§() : Number
      {
         return §5!E§;
      }
      
      public static function §?'§(param1:Number = 1.0, param2:Number = 0.0, param3:Number = NaN) : §?"3§
      {
         return new §""4§(param2,param1,!!isNaN(param3) ? Number(§5!E§) : Number(param3));
      }
   }
}
