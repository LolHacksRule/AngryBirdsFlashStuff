package §5i§
{
   import §!!§.§>4§;
   import §+&§.§-!7§;
   import §2!!§.§[!A§;
   import §6z§.§4I§;
   import §<i§.§9!M§;
   import §>o§.§+!4§;
   import §?2§.§3N§;
   import §@4§.§,!]§;
   import flash.geom.Rectangle;
   
   public class §4!]§
   {
      
      public static var §]m§:int = 0;
      
      public static var §0N§:int = 0;
      
      public static var §8C§:§-!7§;
      
      public static var §3!V§:§4I§;
      
      public static var §2!y§:Boolean = false;
      
      public static var §@!0§:§4!]§ = null;
      
      public static var §7!G§:§9!M§;
      
      public static var §@M§:Boolean = true;
      
      public static var final:Number = 1;
      
      public static var §4?§:Number = 1;
      
      public static var §%!'§:Number = 1;
      
      private static var §use §:§[!A§ = null;
      
      private static var §7s§:Boolean = false;
       
      
      public function §4!]§()
      {
         super();
      }
      
      public static function §-m§() : Number
      {
         return §]m§ * §4?§;
      }
      
      public static function §@!6§() : Number
      {
         return §0N§ * §%!'§;
      }
      
      public static function pause() : void
      {
         if(!§7s§)
         {
            §7s§ = true;
            if(§,!]§.§+!Z§)
            {
               §,!]§.§+!Z§.isPaused = true;
            }
            if(§,!]§.§!9§)
            {
               §,!]§.§!9§.§&!y§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§7s§)
         {
            §7s§ = false;
            if(§,!]§.§+!Z§)
            {
               §,!]§.§+!Z§.isPaused = false;
            }
            if(§,!]§.§!9§)
            {
               §,!]§.§!9§.§&!y§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §7s§;
      }
      
      public static function init(param1:§9!M§, param2:int, param3:int) : void
      {
         §7!G§ = param1;
         §]m§ = param2;
         §0N§ = param3;
         §3!V§ = new §4I§(true,param1.canvas);
      }
      
      public static function §`!5§(param1:XML, param2:XML) : void
      {
         §+!4§.§`!5§(param1,param2);
      }
      
      public static function §%'§(param1:§3N§, param2:Array, param3:Function = null) : void
      {
         §8C§.§%'§(param1,param2,param3);
      }
      
      public static function §9!d§(param1:§>4§) : void
      {
         §8C§.init(param1);
      }
      
      public static function setController(param1:§[!A§) : void
      {
         §use § = param1;
         §8C§.setController(param1);
      }
      
      public static function get §=`§() : §[!A§
      {
         return §use §;
      }
      
      public static function §0g§(param1:Boolean) : void
      {
         §@M§ = param1;
         §8C§.background.§0g§(param1);
      }
      
      public static function §;!;§() : Boolean
      {
         return §@M§;
      }
      
      public static function §,!0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.§#S§ = new Rectangle(param1,param2,param3,param4);
            §,!]§.§!9§.setCanvasSize(param3,param4);
         }
         final = Math.min(param3 / §]m§,param4 / §0N§);
         §4?§ = param3 / §]m§;
         §%!'§ = param4 / §0N§;
         §8C§.§8m§(param3,param4);
      }
   }
}
