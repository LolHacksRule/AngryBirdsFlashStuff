package §_-pm§
{
   import §_-7x§.§_-yE§;
   import §_-Di§.§_-ix§;
   import §_-Ku§.§_-Ha§;
   import §_-Rm§.§_-tv§;
   import §_-gM§.§_-Pt§;
   import §_-m9§.§_-d7§;
   import §_-qb§.§_-a2§;
   import §_-sO§.§_-a3§;
   import flash.geom.Rectangle;
   
   public class §_-gb§
   {
      
      public static var § null§:int = 0;
      
      public static var §_-aD§:int = 0;
      
      public static var §_-ls§:§_-ix§;
      
      public static var §_-Rn§:§_-Pt§;
      
      public static var §_-sS§:Boolean = false;
      
      public static var § else§:§_-gb§ = null;
      
      public static var §_-oX§:§_-a3§;
      
      public static var §_-wc§:Boolean = true;
      
      public static var §_-lv§:Number = 1;
      
      public static var §_-EZ§:Number = 1;
      
      public static var §_-Kx§:Number = 1;
      
      private static var §_-HS§:§_-a2§ = null;
      
      private static var §_-Ao§:Boolean = false;
       
      
      public function §_-gb§()
      {
         super();
      }
      
      public static function §_-Gh§() : Number
      {
         return § null§ * §_-EZ§;
      }
      
      public static function §_-P8§() : Number
      {
         return §_-aD§ * §_-Kx§;
      }
      
      public static function §_-sR§() : void
      {
         if(!§_-Ao§)
         {
            §_-Ao§ = true;
            if(§_-Ha§.§for §)
            {
               §_-Ha§.§for §.§_-vd§ = true;
            }
            if(§_-Ha§.§_-Aq§)
            {
               §_-Ha§.§_-Aq§.§_-cN§(false);
            }
         }
      }
      
      public static function §_-vE§() : void
      {
         if(§_-Ao§)
         {
            §_-Ao§ = false;
            if(§_-Ha§.§for §)
            {
               §_-Ha§.§for §.§_-vd§ = false;
            }
            if(§_-Ha§.§_-Aq§)
            {
               §_-Ha§.§_-Aq§.§_-cN§(true);
            }
         }
      }
      
      public static function get §_-vd§() : Boolean
      {
         return §_-Ao§;
      }
      
      public static function init(param1:§_-a3§, param2:int, param3:int) : void
      {
         §_-oX§ = param1;
         § null§ = param2;
         §_-aD§ = param3;
         §_-Rn§ = new §_-Pt§(true,param1.canvas);
      }
      
      public static function §_-KQ§(param1:XML, param2:XML) : void
      {
         §_-tv§.§_-KQ§(param1,param2);
      }
      
      public static function §_-8V§(param1:§_-d7§, param2:Array, param3:Function = null) : void
      {
         §_-ls§.§_-8V§(param1,param2,param3);
      }
      
      public static function §_-bf§(param1:§_-yE§) : void
      {
         §_-ls§.init(param1);
      }
      
      public static function §_-A§(param1:§_-a2§) : void
      {
         §_-HS§ = param1;
         §_-ls§.§_-A§(param1);
      }
      
      public static function get §_-6j§() : §_-a2§
      {
         return §_-HS§;
      }
      
      public static function §_-ki§(param1:Boolean) : void
      {
         §_-wc§ = param1;
         §_-ls§.background.§_-ki§(param1);
      }
      
      public static function §_-kS§() : Boolean
      {
         return §_-wc§;
      }
      
      public static function §_-Ek§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-Ha§.§_-Aq§.§_-lQ§ = new Rectangle(param1,param2,param3,param4);
         §_-lv§ = Math.min(param3 / § null§,param4 / §_-aD§);
         §_-EZ§ = param3 / § null§;
         §_-Kx§ = param4 / §_-aD§;
         §_-ls§.§_-68§(param3,param4);
      }
   }
}
