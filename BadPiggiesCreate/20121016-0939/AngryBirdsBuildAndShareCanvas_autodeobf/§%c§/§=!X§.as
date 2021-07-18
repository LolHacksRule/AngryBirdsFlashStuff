package §%c§
{
   import §""3§.§0Y§;
   import §"v§.§9"§;
   import §,I§.§7!K§;
   import §,a§.§<!m§;
   import §5!V§.§!w§;
   import §6p§.§?%§;
   import §;'§.§return§;
   import §=!M§.§!!X§;
   import flash.geom.Rectangle;
   
   public class §=!X§
   {
      
      public static var §^!N§:int = 0;
      
      public static var §5!P§:int = 0;
      
      public static var §!'§:§!w§;
      
      public static var §29§:§!!X§;
      
      public static var §>3§:Boolean = false;
      
      public static var §^"-§:§=!X§ = null;
      
      public static var §9'§:§0Y§;
      
      public static var §3!R§:Boolean = true;
      
      public static var §?!8§:Number = 1;
      
      public static var §@"6§:Number = 1;
      
      public static var § !4§:Number = 1;
      
      private static var §?b§:§return§ = null;
      
      private static var §9!d§:Boolean = false;
       
      
      public function §=!X§()
      {
         super();
      }
      
      public static function §7,§() : Number
      {
         return §^!N§ * §@"6§;
      }
      
      public static function §3?§() : Number
      {
         return §5!P§ * § !4§;
      }
      
      public static function pause() : void
      {
         if(!§9!d§)
         {
            §9!d§ = true;
            if(§?%§.§",§)
            {
               §?%§.§",§.isPaused = true;
            }
            if(§?%§.§%b§)
            {
               §?%§.§%b§.§+H§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§9!d§)
         {
            §9!d§ = false;
            if(§?%§.§",§)
            {
               §?%§.§",§.isPaused = false;
            }
            if(§?%§.§%b§)
            {
               §?%§.§%b§.§+H§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §9!d§;
      }
      
      public static function init(param1:§0Y§, param2:int, param3:int) : void
      {
         §9'§ = param1;
         §^!N§ = param2;
         §5!P§ = param3;
         §29§ = new §!!X§(true,param1.canvas);
      }
      
      public static function §0_§(param1:XML, param2:XML) : void
      {
         §<!m§.§0_§(param1,param2);
      }
      
      public static function §2!2§(param1:§7!K§, param2:Array, param3:Function = null) : void
      {
         §!'§.§2!2§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§9"§) : void
      {
         §!'§.init(param1);
      }
      
      public static function §]T§(param1:§return§) : void
      {
         §?b§ = param1;
         §!'§.§]T§(param1);
      }
      
      public static function get §#H§() : §return§
      {
         return §?b§;
      }
      
      public static function §]D§(param1:Boolean) : void
      {
         §3!R§ = param1;
         §!'§.background.§]D§(param1);
      }
      
      public static function §5$§() : Boolean
      {
         return §3!R§;
      }
      
      public static function §%" §(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§?%§.§%b§)
         {
            §?%§.§%b§.§[A§ = new Rectangle(param1,param2,param3,param4);
            §?%§.§%b§.setCanvasSize(param3,param4);
         }
         §?!8§ = Math.min(param3 / §^!N§,param4 / §5!P§);
         §@"6§ = param3 / §^!N§;
         § !4§ = param4 / §5!P§;
         §!'§.§=V§(param3,param4);
      }
   }
}
