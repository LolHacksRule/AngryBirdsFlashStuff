package §<!F§
{
   import §%"§.§ do§;
   import §3!G§.§>V§;
   import §?!;§.§;!,§;
   import §@&§.§!!?§;
   import §@V§.§ S§;
   import §]G§.§%@§;
   import §^h§.§2l§;
   import §`=§.§"R§;
   import flash.geom.Rectangle;
   
   public class §5!+§
   {
      
      public static var §[!0§:int = 0;
      
      public static var §>!8§:int = 0;
      
      public static var §6!§:§ do§;
      
      public static var §"!I§:§ S§;
      
      public static var §7I§:Boolean = false;
      
      public static var §"x§:§5!+§ = null;
      
      public static var §5!6§:§>V§;
      
      public static var §"i§:Boolean = true;
      
      public static var §^?§:Number = 1;
      
      public static var §!M§:Number = 1;
      
      public static var §?!#§:Number = 1;
      
      private static var §=!A§:§%@§ = null;
      
      private static var §25§:Boolean = false;
       
      
      public function §5!+§()
      {
         super();
      }
      
      public static function § !1§() : Number
      {
         return §[!0§ * §!M§;
      }
      
      public static function §-!&§() : Number
      {
         return §>!8§ * §?!#§;
      }
      
      public static function pause() : void
      {
         if(!§25§)
         {
            §25§ = true;
            if(§2l§.§9!'§)
            {
               §2l§.§9!'§.isPaused = true;
            }
            if(§2l§.§7K§)
            {
               §2l§.§7K§.§@X§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§25§)
         {
            §25§ = false;
            if(§2l§.§9!'§)
            {
               §2l§.§9!'§.isPaused = false;
            }
            if(§2l§.§7K§)
            {
               §2l§.§7K§.§@X§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §25§;
      }
      
      public static function init(param1:§>V§, param2:int, param3:int) : void
      {
         §5!6§ = param1;
         §[!0§ = param2;
         §>!8§ = param3;
         §"!I§ = new § S§(true,param1.canvas);
      }
      
      public static function §0Y§(param1:XML, param2:XML) : void
      {
         §"R§.§0Y§(param1,param2);
      }
      
      public static function §2!%§(param1:§!!?§, param2:Array, param3:Function = null) : void
      {
         §6!§.§2!%§(param1,param2,param3);
      }
      
      public static function §#L§(param1:§;!,§) : void
      {
         §6!§.init(param1);
      }
      
      public static function §;&§(param1:§%@§) : void
      {
         §=!A§ = param1;
         §6!§.§;&§(param1);
      }
      
      public static function get controller() : §%@§
      {
         return §=!A§;
      }
      
      public static function §#U§(param1:Boolean) : void
      {
         §"i§ = param1;
         §6!§.background.§#U§(param1);
      }
      
      public static function §4!!§() : Boolean
      {
         return §"i§;
      }
      
      public static function §<!C§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§2l§.§7K§)
         {
            §2l§.§7K§.§3U§ = new Rectangle(param1,param2,param3,param4);
            §2l§.§7K§.setCanvasSize(param3,param4);
         }
         §^?§ = Math.min(param3 / §[!0§,param4 / §>!8§);
         §!M§ = param3 / §[!0§;
         §?!#§ = param4 / §>!8§;
         §6!§.§=+§(param3,param4);
      }
   }
}
