package §_-TX§
{
   import §_-0-K§.§_-FL§;
   import §_-5b§.§_-Vj§;
   import §_-9a§.§_-IU§;
   import §_-DG§.§_-GH§;
   import §_-KM§.§_-0A§;
   import §_-X4§.§_-rI§;
   import §_-be§.§_-1v§;
   import §_-r6§.§_-v0§;
   import flash.geom.Rectangle;
   
   public class §_-0X§
   {
      
      public static var §_-I0§:int = 0;
      
      public static var §_-ZV§:int = 0;
      
      public static var §_-O2§:§_-FL§;
      
      public static var §_-BV§:§_-v0§;
      
      public static var §_-DB§:Boolean = false;
      
      public static var §_-FC§:§_-0X§ = null;
      
      public static var §_-wL§:§_-IU§;
      
      public static var §_-vs§:Boolean = true;
      
      public static var §_-v-§:Number = 1;
      
      public static var §_-Al§:Number = 1;
      
      public static var §_-6-§:Number = 1;
      
      private static var §_-qx§:§_-1v§ = null;
      
      private static var §_-tX§:Boolean = false;
       
      
      public function §_-0X§()
      {
         super();
      }
      
      public static function §_-hd§() : Number
      {
         return §_-I0§ * §_-Al§;
      }
      
      public static function §_-wg§() : Number
      {
         return §_-ZV§ * §_-6-§;
      }
      
      public static function §_-fc§() : void
      {
         if(!§_-tX§)
         {
            §_-tX§ = true;
            if(§_-0A§.§with§)
            {
               §_-0A§.§with§.§_-QF§ = true;
            }
            if(§_-0A§.§_-bz§)
            {
               §_-0A§.§_-bz§.§_-kw§(false);
            }
         }
      }
      
      public static function §_-UD§() : void
      {
         if(§_-tX§)
         {
            §_-tX§ = false;
            if(§_-0A§.§with§)
            {
               §_-0A§.§with§.§_-QF§ = false;
            }
            if(§_-0A§.§_-bz§)
            {
               §_-0A§.§_-bz§.§_-kw§(true);
            }
         }
      }
      
      public static function get §_-QF§() : Boolean
      {
         return §_-tX§;
      }
      
      public static function init(param1:§_-IU§, param2:int, param3:int) : void
      {
         §_-wL§ = param1;
         §_-I0§ = param2;
         §_-ZV§ = param3;
         §_-BV§ = new §_-v0§(true,param1.canvas);
      }
      
      public static function §_-9u§(param1:XML, param2:XML) : void
      {
         §_-rI§.§_-9u§(param1,param2);
      }
      
      public static function §_-qs§(param1:§_-GH§, param2:Array, param3:Function = null) : void
      {
         §_-O2§.§_-qs§(param1,param2,param3);
      }
      
      public static function §false§(param1:§_-Vj§) : void
      {
         §_-O2§.init(param1);
      }
      
      public static function §_-6P§(param1:§_-1v§) : void
      {
         §_-qx§ = param1;
         §_-O2§.§_-6P§(param1);
      }
      
      public static function get § try§() : §_-1v§
      {
         return §_-qx§;
      }
      
      public static function §_-ci§(param1:Boolean) : void
      {
         §_-vs§ = param1;
         §_-O2§.background.§_-ci§(param1);
      }
      
      public static function §_-U§() : Boolean
      {
         return §_-vs§;
      }
      
      public static function §_-Uz§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.§_-Nw§ = new Rectangle(param1,param2,param3,param4);
            §_-0A§.§_-bz§.setCanvasSize(param3,param4);
         }
         §_-v-§ = Math.min(param3 / §_-I0§,param4 / §_-ZV§);
         §_-Al§ = param3 / §_-I0§;
         §_-6-§ = param4 / §_-ZV§;
         §_-O2§.§_-006§(param3,param4);
      }
   }
}
