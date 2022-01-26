package §_-94§
{
   import §_-DN§.§_-2X§;
   import §_-Kz§.§_-c3§;
   import §_-MP§.§_-BI§;
   import §_-TV§.§_-gb§;
   import §_-Ye§.§_-cP§;
   import §_-aA§.§_-o5§;
   import §_-r8§.§_-00D§;
   import §_-ux§.§_-im§;
   import flash.geom.Rectangle;
   
   public class §_-si§
   {
      
      public static var §_-dI§:int = 0;
      
      public static var §_-0R§:int = 0;
      
      public static var §_-HI§:§_-c3§;
      
      public static var §_-6N§:§_-o5§;
      
      public static var §_-bg§:Boolean = false;
      
      public static var §_-8a§:§_-si§ = null;
      
      public static var §_-dt§:§_-00D§;
      
      public static var §_-IA§:Boolean = true;
      
      public static var final:Number = 1;
      
      public static var §_-gP§:Number = 1;
      
      public static var §_-3a§:Number = 1;
      
      private static var §_-ro§:§_-im§ = null;
      
      private static var §_-00I§:Boolean = false;
       
      
      public function §_-si§()
      {
         super();
      }
      
      public static function §_-hE§() : Number
      {
         return §_-dI§ * §_-gP§;
      }
      
      public static function §_-mi§() : Number
      {
         return §_-0R§ * §_-3a§;
      }
      
      public static function §_-Xb§() : void
      {
         if(!§_-00I§)
         {
            §_-00I§ = true;
            if(§_-cP§.§_-Nz§)
            {
               §_-cP§.§_-Nz§.§_-Zn§ = true;
            }
            if(§_-cP§.§_-004§)
            {
               §_-cP§.§_-004§.§_-O-§(false);
            }
         }
      }
      
      public static function §_-DM§() : void
      {
         if(§_-00I§)
         {
            §_-00I§ = false;
            if(§_-cP§.§_-Nz§)
            {
               §_-cP§.§_-Nz§.§_-Zn§ = false;
            }
            if(§_-cP§.§_-004§)
            {
               §_-cP§.§_-004§.§_-O-§(true);
            }
         }
      }
      
      public static function get §_-Zn§() : Boolean
      {
         return §_-00I§;
      }
      
      public static function init(param1:§_-00D§, param2:int, param3:int) : void
      {
         §_-dt§ = param1;
         §_-dI§ = param2;
         §_-0R§ = param3;
         §_-6N§ = new §_-o5§(true,param1.canvas);
      }
      
      public static function §_-MD§(param1:XML, param2:XML) : void
      {
         §_-gb§.§_-MD§(param1,param2);
      }
      
      public static function §_-rX§(param1:§_-2X§, param2:Array, param3:Function = null) : void
      {
         §_-HI§.§_-rX§(param1,param2,param3);
      }
      
      public static function §_-PC§(param1:§_-BI§) : void
      {
         §_-HI§.init(param1);
      }
      
      public static function §_-Mr§(param1:§_-im§) : void
      {
         §_-ro§ = param1;
         §_-HI§.§_-Mr§(param1);
      }
      
      public static function get §_-0j§() : §_-im§
      {
         return §_-ro§;
      }
      
      public static function §_-uY§(param1:Boolean) : void
      {
         §_-IA§ = param1;
         §_-HI§.background.§_-uY§(param1);
      }
      
      public static function §_-fJ§() : Boolean
      {
         return §_-IA§;
      }
      
      public static function §_-6W§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-cP§.§_-004§.§_-Uf§ = new Rectangle(param1,param2,param3,param4);
         §_-cP§.§_-004§.§_-Cs§(param3,param4);
         final = Math.min(param3 / §_-dI§,param4 / §_-0R§);
         §_-gP§ = param3 / §_-dI§;
         §_-3a§ = param4 / §_-0R§;
         §_-HI§.§_-Mw§(param3,param4);
      }
   }
}
