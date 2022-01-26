package §_-Ah§
{
   import §_-B7§.§_-cO§;
   import §_-Xc§.§_-w7§;
   import §_-Y-§.§_-Wl§;
   import §_-ZG§.§_-XD§;
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-Ay§;
   import §_-hz§.§_-aa§;
   import §_-qT§.§_-5§;
   import flash.geom.Rectangle;
   
   public class §_-b§
   {
      
      public static var §_-iX§:int = 0;
      
      public static var §_-q§:int = 0;
      
      public static var §_-cK§:§_-Ay§;
      
      public static var §_-v1§:§_-XD§;
      
      public static var §_-GD§:Boolean = false;
      
      public static var § set§:§_-b§ = null;
      
      public static var §_-jf§:§_-5§;
      
      public static var §_-Ei§:Boolean = true;
      
      public static var §_-q-§:Number = 1;
      
      public static var §_-X4§:Number = 1;
      
      public static var §_-Hu§:Number = 1;
      
      private static var §_-v2§:§_-aa§ = null;
       
      
      public function §_-b§()
      {
         super();
      }
      
      public static function init(param1:§_-5§, param2:int, param3:int) : void
      {
         §_-jf§ = param1;
         §_-iX§ = param2;
         §_-q§ = param3;
         §_-v1§ = new §_-XD§(true,param1.canvas);
      }
      
      public static function §_-ua§(param1:Class, param2:Class) : void
      {
         §_-cO§.§_-ua§(param1,param2);
      }
      
      public static function §_-rU§(param1:§_-w7§, param2:Array, param3:Function = null) : void
      {
         §_-cK§.§_-rU§(param1,param2,param3);
      }
      
      public static function §_-51§(param1:§_-Wl§) : void
      {
         §_-cK§.init(param1);
      }
      
      public static function §_-DZ§(param1:§_-aa§) : void
      {
         §_-v2§ = param1;
         §_-cK§.§_-DZ§(param1);
      }
      
      public static function get §_-V7§() : §_-aa§
      {
         return §_-v2§;
      }
      
      public static function §_-UH§(param1:Boolean) : void
      {
         §_-Ei§ = param1;
         §_-cK§.§_-c§.§_-UH§(param1);
      }
      
      public static function §_-5d§() : Boolean
      {
         return §_-Ei§;
      }
      
      public static function §_-Ew§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-6Y§.§true§.viewPort = new Rectangle(param1,param2,param3,param4);
         §_-q-§ = Math.min(param3 / §_-iX§,param4 / §_-q§);
         §_-X4§ = param3 / §_-iX§;
         §_-Hu§ = param4 / §_-q§;
         §_-cK§.§_-0U§(param3,param4);
      }
   }
}
