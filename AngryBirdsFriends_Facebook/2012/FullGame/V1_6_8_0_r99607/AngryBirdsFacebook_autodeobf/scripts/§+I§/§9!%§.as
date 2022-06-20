package §+I§
{
   import §!!,§.§7&§;
   import §+"6§.§5!H§;
   import §-I§.§-%§;
   import §0!?§.§4!l§;
   import §0M§.§=!K§;
   import §3,§.§[!;§;
   import §<%§.§%;§;
   import §[!z§.§!"=§;
   import flash.geom.Rectangle;
   
   public class §9!%§
   {
      
      public static var §^3§:int = 0;
      
      public static var §&"$§:int = 0;
      
      public static var §!!M§:§[!;§;
      
      public static var §<y§:§4!l§;
      
      public static var §+1§:Boolean = false;
      
      public static var §4i§:§9!%§ = null;
      
      public static var § !W§:§=!K§;
      
      public static var § for§:Boolean = true;
      
      public static var §8X§:Number = 1;
      
      public static var §=!f§:Number = 1;
      
      public static var §,9§:Number = 1;
      
      private static var §&!A§:§-%§ = null;
      
      private static var §<"'§:Boolean = false;
       
      
      public function §9!%§()
      {
         super();
      }
      
      public static function §3" §() : Number
      {
         return §^3§ * §=!f§;
      }
      
      public static function §4"6§() : Number
      {
         return §&"$§ * §,9§;
      }
      
      public static function pause() : void
      {
         if(!§<"'§)
         {
            §<"'§ = true;
            if(§5!H§.§1f§)
            {
               §5!H§.§1f§.isPaused = true;
            }
            if(§5!H§.§%n§)
            {
               §5!H§.§%n§.§["8§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§<"'§)
         {
            §<"'§ = false;
            if(§5!H§.§1f§)
            {
               §5!H§.§1f§.isPaused = false;
            }
            if(§5!H§.§%n§)
            {
               §5!H§.§%n§.§["8§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §<"'§;
      }
      
      public static function init(param1:§=!K§, param2:int, param3:int) : void
      {
         § !W§ = param1;
         §^3§ = param2;
         §&"$§ = param3;
         §<y§ = new §4!l§(true,param1.canvas);
      }
      
      public static function §4w§(param1:XML, param2:XML) : void
      {
         §%;§.§4w§(param1,param2);
      }
      
      public static function §="6§(param1:§7&§, param2:Array, param3:Function = null) : void
      {
         §!!M§.§="6§(param1,param2,param3);
      }
      
      public static function §'!"§(param1:§!"=§) : void
      {
         §!!M§.init(param1);
      }
      
      public static function setController(param1:§-%§) : void
      {
         §&!A§ = param1;
         §!!M§.setController(param1);
      }
      
      public static function get §&N§() : §-%§
      {
         return §&!A§;
      }
      
      public static function §!`§(param1:Boolean) : void
      {
         § for§ = param1;
         §!!M§.background.§!`§(param1);
      }
      
      public static function §3"%§() : Boolean
      {
         return § for§;
      }
      
      public static function §5c§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.§3V§ = new Rectangle(param1,param2,param3,param4);
            §5!H§.§%n§.setCanvasSize(param3,param4);
         }
         §8X§ = Math.min(param3 / §^3§,param4 / §&"$§);
         §=!f§ = param3 / §^3§;
         §,9§ = param4 / §&"$§;
         §!!M§.§=!p§(param3,param4);
      }
   }
}
