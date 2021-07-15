package com.angrybirds
{
   import §'!l§.§5A§;
   import §8!K§.§5!0§;
   import §?""§.§6!A§;
   import §@L§.§?!'§;
   import §^!3§.§6!z§;
   import §`!a§.§1"&§;
   import each.§@!&§;
   import flash.geom.Rectangle;
   
   public class §&!"§
   {
      
      public static var §8#§:int = 0;
      
      public static var §'+§:int = 0;
      
      public static var §1!D§:§?!'§;
      
      public static var §!!D§:§@!&§;
      
      public static var §7!2§:Boolean = false;
      
      public static var §7!o§:§&!"§ = null;
      
      public static var §=!X§:§6!A§;
      
      public static var §1Y§:Boolean = true;
      
      public static var §<7§:Number = 1;
      
      public static var §,!C§:Number = 1;
      
      public static var §3H§:Number = 1;
      
      private static var §+!=§:§6!z§ = null;
      
      private static var §!§:Boolean = false;
       
      
      public function §&!"§()
      {
         super();
      }
      
      public static function §5!2§() : Number
      {
         return §8#§ * §,!C§;
      }
      
      public static function §"!7§() : Number
      {
         return §'+§ * §3H§;
      }
      
      public static function pause() : void
      {
         if(!§!§)
         {
            §!§ = true;
            if(§1"&§.§"!U§)
            {
               §1"&§.§"!U§.isPaused = true;
            }
            if(§1"&§.§1i§)
            {
               §1"&§.§1i§.§1J§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§!§)
         {
            §!§ = false;
            if(§1"&§.§"!U§)
            {
               §1"&§.§"!U§.isPaused = false;
            }
            if(§1"&§.§1i§)
            {
               §1"&§.§1i§.§1J§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §!§;
      }
      
      public static function init(param1:§6!A§, param2:int, param3:int) : void
      {
         §=!X§ = param1;
         §8#§ = param2;
         §'+§ = param3;
         §!!D§ = new §@!&§(true,param1.canvas);
      }
      
      public static function §1!y§(param1:§5A§, param2:Function = null) : void
      {
         §1!D§.§1!y§(param1,param2);
      }
      
      public static function loadLevel(param1:§5!0§) : void
      {
         §1!D§.init(param1);
      }
      
      public static function setController(param1:§6!z§) : void
      {
         §+!=§ = param1;
         §1!D§.setController(param1);
      }
      
      public static function get controller() : §6!z§
      {
         return §+!=§;
      }
      
      public static function §<8§(param1:Boolean) : void
      {
         §1Y§ = param1;
         §1!D§.background.§<8§(param1);
      }
      
      public static function §?!v§() : Boolean
      {
         return §1Y§;
      }
      
      public static function §4!_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §<7§ = Math.min(param3 / §8#§,param4 / §'+§);
         §,!C§ = param3 / §8#§;
         §3H§ = param4 / §'+§;
         §1"&§.§>!m§ = new Rectangle(param1,param2,param3,param4);
         §1"&§.§"C§ = §,!C§ > §3H§;
         §1!D§.§+!`§(param3,param4,§,!C§,§3H§);
      }
   }
}
