package §_-Hw§
{
   import §_-H2§.§_-Z§;
   import §_-RG§.§_-nX§;
   import §_-Su§.§_-Xk§;
   import §_-Tf§.§_-5y§;
   import §_-kI§.§_-2m§;
   import §_-mK§.§_-ec§;
   import §_-rp§.§_-c5§;
   import §_-v3§.§_-G3§;
   import flash.geom.Rectangle;
   
   public class §_-3C§
   {
      
      public static var §_-dN§:int = 0;
      
      public static var §_-mI§:int = 0;
      
      public static var §_-bz§:§_-c5§;
      
      public static var §_-Sq§:§_-nX§;
      
      public static var §_-N2§:Boolean = false;
      
      public static var §_-oq§:§_-3C§ = null;
      
      public static var §_-dB§:§_-2m§;
      
      public static var §_-jt§:Boolean = true;
      
      public static var §_-w7§:Number = 1;
      
      public static var §_-pu§:Number = 1;
      
      public static var §_-Wc§:Number = 1;
      
      private static var §_-Q5§:§_-5y§ = null;
       
      
      public function §_-3C§()
      {
         super();
      }
      
      public static function init(param1:§_-2m§, param2:int, param3:int) : void
      {
         §_-dB§ = param1;
         §_-dN§ = param2;
         §_-mI§ = param3;
         §_-Sq§ = new §_-nX§(true,param1.canvas);
      }
      
      public static function §_-rN§(param1:Class, param2:Class) : void
      {
         §_-Z§.§_-rN§(param1,param2);
      }
      
      public static function §if§(param1:§_-ec§, param2:Array, param3:Function = null) : void
      {
         §_-bz§.§if§(param1,param2,param3);
      }
      
      public static function static(param1:§_-Xk§) : void
      {
         §_-bz§.init(param1);
      }
      
      public static function §_-dV§(param1:§_-5y§) : void
      {
         §_-Q5§ = param1;
         §_-bz§.§_-dV§(param1);
      }
      
      public static function get §_-0A§() : §_-5y§
      {
         return §_-Q5§;
      }
      
      public static function §_-Bj§(param1:Boolean) : void
      {
         §_-jt§ = param1;
         §_-bz§.§_-Hu§.§_-Bj§(param1);
      }
      
      public static function §_-06§() : Boolean
      {
         return §_-jt§;
      }
      
      public static function §_-Hd§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-G3§.§_-9S§.§_-I-§ = new Rectangle(param1,param2,param3,param4);
         §_-w7§ = Math.min(param3 / §_-dN§,param4 / §_-mI§);
         §_-pu§ = param3 / §_-dN§;
         §_-Wc§ = param4 / §_-mI§;
         §_-bz§.§_-Yt§(param3,param4);
      }
   }
}
