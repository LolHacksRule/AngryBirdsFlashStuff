package com.angrybirds
{
   import § !T§.§7@§;
   import §-!Y§.§%!%§;
   import §0!$§.§;H§;
   import §0m§.§`!K§;
   import §2!N§.§8!7§;
   import §6!^§.§1!7§;
   import §]k§.§<S§;
   import flash.geom.Rectangle;
   
   public class §6!E§
   {
      
      public static var §#9§:int = 0;
      
      public static var §<N§:int = 0;
      
      public static var §7I§:§<S§;
      
      public static var §5V§:§;H§;
      
      public static var §%q§:Boolean = false;
      
      public static var §<!+§:§6!E§ = null;
      
      public static var §@!U§:§1!7§;
      
      public static var §?!d§:Boolean = true;
      
      public static var §]!m§:Number = 1;
      
      public static var §'!U§:Number = 1;
      
      public static var §5!=§:Number = 1;
      
      private static var §1!+§:§8!7§ = null;
      
      private static var §1A§:Boolean = false;
       
      
      public function §6!E§()
      {
         super();
      }
      
      public static function §0D§() : Number
      {
         return §#9§ * §'!U§;
      }
      
      public static function §@!K§() : Number
      {
         return §<N§ * §5!=§;
      }
      
      public static function pause() : void
      {
         if(!§1A§)
         {
            §1A§ = true;
            if(§%!%§.§8B§)
            {
               §%!%§.§8B§.isPaused = true;
            }
            if(§%!%§.§"T§)
            {
               §%!%§.§"T§.§@!b§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§1A§)
         {
            §1A§ = false;
            if(§%!%§.§8B§)
            {
               §%!%§.§8B§.isPaused = false;
            }
            if(§%!%§.§"T§)
            {
               §%!%§.§"T§.§@!b§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §1A§;
      }
      
      public static function init(param1:§1!7§, param2:int, param3:int) : void
      {
         §@!U§ = param1;
         §#9§ = param2;
         §<N§ = param3;
         §5V§ = new §;H§(true,param1.canvas);
      }
      
      public static function §"",§(param1:§`!K§, param2:Function = null) : void
      {
         §7I§.§"",§(param1,param2);
      }
      
      public static function loadLevel(param1:§7@§) : void
      {
         §7I§.init(param1);
      }
      
      public static function setController(param1:§8!7§) : void
      {
         §1!+§ = param1;
         §7I§.setController(param1);
      }
      
      public static function get controller() : §8!7§
      {
         return §1!+§;
      }
      
      public static function §!!T§(param1:Boolean) : void
      {
         §?!d§ = param1;
         §7I§.background.§!!T§(param1);
      }
      
      public static function §^A§() : Boolean
      {
         return §?!d§;
      }
      
      public static function §0[§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §]!m§ = Math.min(param3 / §#9§,param4 / §<N§);
         §'!U§ = param3 / §#9§;
         §5!=§ = param4 / §<N§;
         §%!%§.§>"3§ = new Rectangle(param1,param2,param3,param4);
         §%!%§.§?!i§ = §'!U§ > §5!=§;
         §7I§.§&a§(param3,param4,§'!U§,§5!=§);
      }
   }
}
