package §_-qO§
{
   import §_-0BH§.§_-Pw§;
   import §_-0DG§.§_-09t§;
   import §_-0Dg§.§_-0BD§;
   import §_-0Ea§.§_-AY§;
   import §_-6E§.§ var§;
   import §_-Ga§.§_-bm§;
   import §_-TG§.§_-00u§;
   import §_-jn§.§_-G2§;
   import flash.geom.Rectangle;
   
   public class § in§
   {
      
      public static var §_-W8§:int = 0;
      
      public static var §_-Kj§:int = 0;
      
      public static var §_-Dc§:§_-00u§;
      
      public static var §_-Cv§:§_-Pw§;
      
      public static var §_-LI§:Boolean = false;
      
      public static var §_-nX§:§ in§ = null;
      
      public static var §_-HY§:§_-G2§;
      
      public static var §_-qU§:Boolean = true;
      
      public static var §_-Dr§:Number = 1;
      
      public static var §_-57§:Number = 1;
      
      public static var §_-Sr§:Number = 1;
      
      private static var §_-pG§:§_-0BD§ = null;
      
      private static var §_-MQ§:Boolean = false;
       
      
      public function § in§()
      {
         super();
      }
      
      public static function §_-Ab§() : Number
      {
         return §_-W8§ * §_-57§;
      }
      
      public static function §_-q8§() : Number
      {
         return §_-Kj§ * §_-Sr§;
      }
      
      public static function pause() : void
      {
         if(!§_-MQ§)
         {
            §_-MQ§ = true;
            if(§_-AY§.§_-CK§)
            {
               §_-AY§.§_-CK§.isPaused = true;
            }
            if(§_-AY§.§_-un§)
            {
               §_-AY§.§_-un§.§_-fQ§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§_-MQ§)
         {
            §_-MQ§ = false;
            if(§_-AY§.§_-CK§)
            {
               §_-AY§.§_-CK§.isPaused = false;
            }
            if(§_-AY§.§_-un§)
            {
               §_-AY§.§_-un§.§_-fQ§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §_-MQ§;
      }
      
      public static function init(param1:§_-G2§, param2:int, param3:int) : void
      {
         §_-HY§ = param1;
         §_-W8§ = param2;
         §_-Kj§ = param3;
         §_-Cv§ = new §_-Pw§(true,param1.canvas);
      }
      
      public static function §_-0-C§(param1:XML, param2:XML) : void
      {
         §_-09t§.§_-0-C§(param1,param2);
      }
      
      public static function §_-041§(param1:§ var§, param2:Array, param3:Function = null) : void
      {
         §_-Dc§.§_-041§(param1,param2,param3);
      }
      
      public static function §_-s8§(param1:§_-bm§) : void
      {
         §_-Dc§.init(param1);
      }
      
      public static function setController(param1:§_-0BD§) : void
      {
         §_-pG§ = param1;
         §_-Dc§.setController(param1);
      }
      
      public static function get §_-03s§() : §_-0BD§
      {
         return §_-pG§;
      }
      
      public static function §_-bN§(param1:Boolean) : void
      {
         §_-qU§ = param1;
         §_-Dc§.background.§_-bN§(param1);
      }
      
      public static function §_-0-I§() : Boolean
      {
         return §_-qU§;
      }
      
      public static function §_-82§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.§_-Lj§ = new Rectangle(param1,param2,param3,param4);
            §_-AY§.§_-un§.setCanvasSize(param3,param4);
         }
         §_-Dr§ = Math.min(param3 / §_-W8§,param4 / §_-Kj§);
         §_-57§ = param3 / §_-W8§;
         §_-Sr§ = param4 / §_-Kj§;
         §_-Dc§.§_-tE§(param3,param4);
      }
   }
}
