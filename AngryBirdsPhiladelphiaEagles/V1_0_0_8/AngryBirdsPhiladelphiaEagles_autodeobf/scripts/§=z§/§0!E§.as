package §=z§
{
   import §"1§.§%!$§;
   import §'!3§.§&!H§;
   import §,T§.§[-§;
   import §0E§.§"b§;
   import §6!L§.§#!M§;
   import §7!A§.§>!<§;
   import §=!1§.§[!<§;
   import §?>§.§`!P§;
   import flash.geom.Rectangle;
   
   public class §0!E§
   {
      
      public static var §6!I§:int = 0;
      
      public static var §4U§:int = 0;
      
      public static var §9!B§:§[-§;
      
      public static var §5!$§:§%!$§;
      
      public static var §=o§:Boolean = false;
      
      public static var § [§:§0!E§ = null;
      
      public static var §`#§:§`!P§;
      
      public static var §6!3§:Boolean = true;
      
      public static var §8!F§:Number = 1;
      
      public static var §@!,§:Number = 1;
      
      public static var §2!A§:Number = 1;
      
      private static var §"3§:§[!<§ = null;
      
      private static var §;!&§:Boolean = false;
       
      
      public function §0!E§()
      {
         super();
      }
      
      public static function § Y§() : Number
      {
         return §6!I§ * §@!,§;
      }
      
      public static function §^k§() : Number
      {
         return §4U§ * §2!A§;
      }
      
      public static function pause() : void
      {
         if(!§;!&§)
         {
            §;!&§ = true;
            if(§&!H§.§9o§)
            {
               §&!H§.§9o§.isPaused = true;
            }
            if(§&!H§.§+!H§)
            {
               §&!H§.§+!H§.§7d§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§;!&§)
         {
            §;!&§ = false;
            if(§&!H§.§9o§)
            {
               §&!H§.§9o§.isPaused = false;
            }
            if(§&!H§.§+!H§)
            {
               §&!H§.§+!H§.§7d§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §;!&§;
      }
      
      public static function init(param1:§`!P§, param2:int, param3:int) : void
      {
         §`#§ = param1;
         §6!I§ = param2;
         §4U§ = param3;
         §5!$§ = new §%!$§(true,param1.canvas);
      }
      
      public static function §@0§(param1:XML, param2:XML) : void
      {
         §"b§.§@0§(param1,param2);
      }
      
      public static function §"!3§(param1:§>!<§, param2:Array, param3:Function = null) : void
      {
         §9!B§.§"!3§(param1,param2,param3);
      }
      
      public static function §8v§(param1:§#!M§) : void
      {
         §9!B§.init(param1);
      }
      
      public static function §7!H§(param1:§[!<§) : void
      {
         §"3§ = param1;
         §9!B§.§7!H§(param1);
      }
      
      public static function get controller() : §[!<§
      {
         return §"3§;
      }
      
      public static function §!_§(param1:Boolean) : void
      {
         §6!3§ = param1;
         §9!B§.background.§!_§(param1);
      }
      
      public static function §5H§() : Boolean
      {
         return §6!3§;
      }
      
      public static function §7<§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.§+R§ = new Rectangle(param1,param2,param3,param4);
            §&!H§.§+!H§.setCanvasSize(param3,param4);
         }
         §8!F§ = Math.min(param3 / §6!I§,param4 / §4U§);
         §@!,§ = param3 / §6!I§;
         §2!A§ = param4 / §4U§;
         §9!B§.§`^§(param3,param4);
      }
   }
}
