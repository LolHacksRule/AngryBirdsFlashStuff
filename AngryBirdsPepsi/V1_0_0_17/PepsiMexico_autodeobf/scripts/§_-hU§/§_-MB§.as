package §_-hU§
{
   import §_-2J§.§_-QM§;
   import §_-9§.§_-JR§;
   import §_-HU§.§_-yP§;
   import §_-OJ§.§_-tL§;
   import §_-Qx§.§_-Wv§;
   import §_-W3§.§_-qz§;
   import §_-e3§.§_-qU§;
   import §_-gY§.§_-Vu§;
   import flash.geom.Rectangle;
   
   public class §_-MB§
   {
      
      public static var §_-1q§:int = 0;
      
      public static var §_-SP§:int = 0;
      
      public static var §_-A7§:§_-tL§;
      
      public static var §_-Dg§:§_-qU§;
      
      public static var §_-49§:Boolean = false;
      
      public static var §_-bT§:§_-MB§ = null;
      
      public static var §_-gw§:§_-JR§;
      
      public static var §_-ty§:Boolean = true;
      
      public static var §_-D1§:Number = 1;
      
      public static var §_-Rs§:Number = 1;
      
      public static var §_-y3§:Number = 1;
      
      private static var §_-wO§:§_-qz§ = null;
       
      
      public function §_-MB§()
      {
         super();
      }
      
      public static function init(param1:§_-JR§, param2:int, param3:int) : void
      {
         §_-gw§ = param1;
         §_-1q§ = param2;
         §_-SP§ = param3;
         §_-Dg§ = new §_-qU§(true,param1.canvas);
      }
      
      public static function §_-Zd§(param1:Class, param2:Class) : void
      {
         §_-yP§.§_-Zd§(param1,param2);
      }
      
      public static function §_-Et§(param1:§_-QM§, param2:Array, param3:Function = null) : void
      {
         §_-A7§.§_-Et§(param1,param2,param3);
      }
      
      public static function §_-JA§(param1:§_-Wv§) : void
      {
         §_-A7§.init(param1);
      }
      
      public static function §_-U0§(param1:§_-qz§) : void
      {
         §_-wO§ = param1;
         §_-A7§.§_-U0§(param1);
      }
      
      public static function get §_-Gk§() : §_-qz§
      {
         return §_-wO§;
      }
      
      public static function §_-o3§(param1:Boolean) : void
      {
         §_-ty§ = param1;
         §_-A7§.background.§_-o3§(param1);
      }
      
      public static function §_-G8§() : Boolean
      {
         return §_-ty§;
      }
      
      public static function §_-ze§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-Vu§.§_-dq§.§_-cU§ = new Rectangle(param1,param2,param3,param4);
         §_-D1§ = Math.min(param3 / §_-1q§,param4 / §_-SP§);
         §_-Rs§ = param3 / §_-1q§;
         §_-y3§ = param4 / §_-SP§;
         §_-A7§.§_-ha§(param3,param4);
      }
   }
}
