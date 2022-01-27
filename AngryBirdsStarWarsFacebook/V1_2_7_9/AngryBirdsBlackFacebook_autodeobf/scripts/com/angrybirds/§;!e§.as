package com.angrybirds
{
   import §,#+§.§<U§;
   import §0"I§.§%F§;
   import §1G§.§8!a§;
   import §5!q§.§3"X§;
   import §7§.§8V§;
   import §9!!§.§=!S§;
   import §]!=§.§6"p§;
   import flash.geom.Rectangle;
   
   public class §;!e§
   {
      
      public static var §]";§:int = 0;
      
      public static var §8"?§:int = 0;
      
      public static var §<x§:§3"X§;
      
      public static var §="1§:§%F§;
      
      public static var §[!S§:Boolean = false;
      
      public static var §@9§:§;!e§ = null;
      
      public static var §6!v§:§8!a§;
      
      public static var § !f§:Boolean = true;
      
      public static var §5n§:Number = 1;
      
      public static var §7"4§:Number = 1;
      
      public static var §1"6§:Number = 1;
      
      private static var §9"M§:§6"p§ = null;
      
      private static var §%y§:Boolean = false;
       
      
      public function §;!e§()
      {
         super();
      }
      
      public static function §6K§() : Number
      {
         return §]";§ * §7"4§;
      }
      
      public static function §?!Q§() : Number
      {
         return §8"?§ * §1"6§;
      }
      
      public static function pause() : void
      {
         if(!§%y§)
         {
            §%y§ = true;
            if(§=!S§.§ #"§)
            {
               §=!S§.§ #"§.isPaused = true;
            }
            if(§=!S§.§8y§)
            {
               §=!S§.§8y§.§%j§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§%y§)
         {
            §%y§ = false;
            if(§=!S§.§ #"§)
            {
               §=!S§.§ #"§.isPaused = false;
            }
            if(§=!S§.§8y§)
            {
               §=!S§.§8y§.§%j§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §%y§;
      }
      
      public static function init(param1:§8!a§, param2:int, param3:int) : void
      {
         §6!v§ = param1;
         §]";§ = param2;
         §8"?§ = param3;
         §="1§ = new §%F§(true,param1.canvas);
      }
      
      public static function §5"E§(param1:§8V§, param2:Function = null) : void
      {
         §<x§.§5"E§(param1,param2);
      }
      
      public static function loadLevel(param1:§<U§) : void
      {
         §<x§.init(param1);
      }
      
      public static function §%!L§(param1:§6"p§) : void
      {
         §9"M§ = param1;
         §<x§.§%!L§(param1);
      }
      
      public static function get §%e§() : §6"p§
      {
         return §9"M§;
      }
      
      public static function §&U§(param1:Boolean) : void
      {
         § !f§ = param1;
         §<x§.background.§&U§(param1);
      }
      
      public static function §8!e§() : Boolean
      {
         return § !f§;
      }
      
      public static function §8!0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §5n§ = Math.min(param3 / §]";§,param4 / §8"?§);
         §7"4§ = param3 / §]";§;
         §1"6§ = param4 / §8"?§;
         §=!S§.§ "-§ = new Rectangle(param1,param2,param3,param4);
         §=!S§.§3"4§ = §7"4§ > §1"6§;
         §<x§.§`P§(param3,param4,§7"4§,§1"6§);
      }
   }
}
