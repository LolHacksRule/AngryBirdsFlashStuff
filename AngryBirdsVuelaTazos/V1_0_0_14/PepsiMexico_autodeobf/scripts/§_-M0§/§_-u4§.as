package §_-M0§
{
   import §_-5Y§.§_-yw§;
   import §_-Eo§.§_-Ge§;
   import §_-Kb§.§_-CH§;
   import §_-WH§.§_-0§;
   import §_-fI§.§_-BI§;
   import §_-id§.§_-BC§;
   import §_-iq§.§_-jB§;
   import §_-uh§.§_-US§;
   import flash.geom.Rectangle;
   
   public class §_-u4§
   {
      
      public static var §_-4r§:int = 0;
      
      public static var §_-ho§:int = 0;
      
      public static var §_-40§:§_-yw§;
      
      public static var §_-e1§:§_-Ge§;
      
      public static var §_-35§:Boolean = false;
      
      public static var §_-rS§:§_-u4§ = null;
      
      public static var §_-2p§:§_-jB§;
      
      public static var §_-D9§:Boolean = true;
      
      public static var §_-bA§:Number = 1;
      
      public static var §_-cS§:Number = 1;
      
      public static var §_-Ps§:Number = 1;
      
      private static var §_-bE§:§_-CH§ = null;
       
      
      public function §_-u4§()
      {
         super();
      }
      
      public static function init(param1:§_-jB§, param2:int, param3:int) : void
      {
         §_-2p§ = param1;
         §_-4r§ = param2;
         §_-ho§ = param3;
         §_-e1§ = new §_-Ge§(true,param1.canvas);
      }
      
      public static function §_-1w§(param1:Class, param2:Class) : void
      {
         §_-0§.§_-1w§(param1,param2);
      }
      
      public static function §_-Zt§(param1:§_-BC§, param2:Array, param3:Function = null) : void
      {
         §_-40§.§_-Zt§(param1,param2,param3);
      }
      
      public static function §_-8e§(param1:§_-US§) : void
      {
         §_-40§.init(param1);
      }
      
      public static function §_-Ib§(param1:§_-CH§) : void
      {
         §_-bE§ = param1;
         §_-40§.§_-Ib§(param1);
      }
      
      public static function get §_-FQ§() : §_-CH§
      {
         return §_-bE§;
      }
      
      public static function §_-YZ§(param1:Boolean) : void
      {
         §_-D9§ = param1;
         §_-40§.background.§_-YZ§(param1);
      }
      
      public static function §_-af§() : Boolean
      {
         return §_-D9§;
      }
      
      public static function §_-7A§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-BI§.§_-44§.§_-jP§ = new Rectangle(param1,param2,param3,param4);
         §_-bA§ = Math.min(param3 / §_-4r§,param4 / §_-ho§);
         §_-cS§ = param3 / §_-4r§;
         §_-Ps§ = param4 / §_-ho§;
         §_-40§.§_-0c§(param3,param4);
      }
   }
}
