package §_-gC§
{
   import §_-2r§.§_-sn§;
   import §_-5i§.§_-U1§;
   import §_-QJ§.§_-Om§;
   import §_-T8§.§_-GI§;
   import §_-U0§.§_-LO§;
   import §_-dH§.§_-9E§;
   import §_-p5§.§_-lM§;
   import §_-vB§.§_-Kk§;
   import flash.geom.Rectangle;
   
   public class §_-XR§
   {
      
      public static var §_-jC§:int = 0;
      
      public static var §_-0-3§:int = 0;
      
      public static var §_-Xv§:§_-sn§;
      
      public static var §_-r4§:§_-LO§;
      
      public static var §_-WY§:Boolean = false;
      
      public static var §_-9R§:§_-XR§ = null;
      
      public static var §_-tL§:§_-Om§;
      
      public static var §_-n5§:Boolean = true;
      
      public static var §_-Gm§:Number = 1;
      
      public static var §_-BS§:Number = 1;
      
      public static var §_-Rt§:Number = 1;
      
      private static var §_-0G§:§_-U1§ = null;
      
      private static var §_-Bg§:Boolean = false;
       
      
      public function §_-XR§()
      {
         super();
      }
      
      public static function §_-eq§() : Number
      {
         return §_-jC§ * §_-BS§;
      }
      
      public static function §_-GF§() : Number
      {
         return §_-0-3§ * §_-Rt§;
      }
      
      public static function §_-Tr§() : void
      {
         if(!§_-Bg§)
         {
            §_-Bg§ = true;
            if(§_-Kk§.§_-qh§)
            {
               §_-Kk§.§_-qh§.§_-xg§ = true;
            }
            if(§_-Kk§.§_-NR§)
            {
               §_-Kk§.§_-NR§.§_-iE§(false);
            }
         }
      }
      
      public static function §_-5x§() : void
      {
         if(§_-Bg§)
         {
            §_-Bg§ = false;
            if(§_-Kk§.§_-qh§)
            {
               §_-Kk§.§_-qh§.§_-xg§ = false;
            }
            if(§_-Kk§.§_-NR§)
            {
               §_-Kk§.§_-NR§.§_-iE§(true);
            }
         }
      }
      
      public static function get §_-xg§() : Boolean
      {
         return §_-Bg§;
      }
      
      public static function init(param1:§_-Om§, param2:int, param3:int) : void
      {
         §_-tL§ = param1;
         §_-jC§ = param2;
         §_-0-3§ = param3;
         §_-r4§ = new §_-LO§(true,param1.canvas);
      }
      
      public static function §_-54§(param1:XML, param2:XML) : void
      {
         §_-lM§.§_-54§(param1,param2);
      }
      
      public static function §_-qr§(param1:§_-9E§, param2:Array, param3:Function = null) : void
      {
         §_-Xv§.§_-qr§(param1,param2,param3);
      }
      
      public static function §_-wW§(param1:§_-GI§) : void
      {
         §_-Xv§.init(param1);
      }
      
      public static function §_-Sx§(param1:§_-U1§) : void
      {
         §_-0G§ = param1;
         §_-Xv§.§_-Sx§(param1);
      }
      
      public static function get §_-Og§() : §_-U1§
      {
         return §_-0G§;
      }
      
      public static function §_-ww§(param1:Boolean) : void
      {
         §_-n5§ = param1;
         §_-Xv§.background.§_-ww§(param1);
      }
      
      public static function §_-s§() : Boolean
      {
         return §_-n5§;
      }
      
      public static function §_-8G§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-Kk§.§_-NR§.§_-Px§ = new Rectangle(param1,param2,param3,param4);
         §_-Kk§.§_-NR§.§_-qG§(param3,param4);
         §_-Gm§ = Math.min(param3 / §_-jC§,param4 / §_-0-3§);
         §_-BS§ = param3 / §_-jC§;
         §_-Rt§ = param4 / §_-0-3§;
         §_-Xv§.§_-2t§(param3,param4);
      }
   }
}
