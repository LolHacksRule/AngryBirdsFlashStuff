package §_-I1§
{
   import §_-0y§.§_-B3§;
   import §_-3P§.§_-ry§;
   import §_-B2§.§_-H4§;
   import §_-I4§.§_-tx§;
   import §_-Yc§.§_-e9§;
   import §_-hR§.§_-bJ§;
   import §_-m6§.§_-d§;
   import §_-ot§.§_-tc§;
   import flash.geom.Rectangle;
   
   public class §_-2N§
   {
      
      public static var §_-ZL§:int = 0;
      
      public static var §_-Uw§:int = 0;
      
      public static var §_-iP§:§_-B3§;
      
      public static var §_-OU§:§_-tc§;
      
      public static var §_-25§:Boolean = false;
      
      public static var §_-t2§:§_-2N§ = null;
      
      public static var §_-kt§:§_-e9§;
      
      public static var §_-vQ§:Boolean = true;
      
      public static var §_-nb§:Number = 1;
      
      public static var §_-QJ§:Number = 1;
      
      public static var §_-pv§:Number = 1;
      
      private static var §_-Ku§:§_-d§ = null;
       
      
      public function §_-2N§()
      {
         super();
      }
      
      public static function init(param1:§_-e9§, param2:int, param3:int) : void
      {
         §_-kt§ = param1;
         §_-ZL§ = param2;
         §_-Uw§ = param3;
         §_-OU§ = new §_-tc§(true,param1.canvas);
      }
      
      public static function §_-BU§(param1:Class, param2:Class) : void
      {
         §_-bJ§.§_-BU§(param1,param2);
      }
      
      public static function §_-Z-§(param1:§_-tx§, param2:Array, param3:Function = null) : void
      {
         §_-iP§.§_-Z-§(param1,param2,param3);
      }
      
      public static function §_-Zx§(param1:§_-ry§) : void
      {
         §_-iP§.init(param1);
      }
      
      public static function §_-Uk§(param1:§_-d§) : void
      {
         §_-Ku§ = param1;
         §_-iP§.§_-Uk§(param1);
      }
      
      public static function get §_-gT§() : §_-d§
      {
         return §_-Ku§;
      }
      
      public static function §_-oO§(param1:Boolean) : void
      {
         §_-vQ§ = param1;
         §_-iP§.§_-Ms§.§_-oO§(param1);
      }
      
      public static function §_-Ki§() : Boolean
      {
         return §_-vQ§;
      }
      
      public static function §_-UO§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-H4§.§_-I9§.viewPort = new Rectangle(param1,param2,param3,param4);
         §_-nb§ = Math.min(param3 / §_-ZL§,param4 / §_-Uw§);
         §_-QJ§ = param3 / §_-ZL§;
         §_-pv§ = param4 / §_-Uw§;
         §_-iP§.§_-nI§(param3,param4);
      }
   }
}
