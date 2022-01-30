package com.angrybirds
{
   import §5!W§.§>P§;
   import §9`§.§&>§;
   import §;f§.§&r§;
   import §<R§.§!@§;
   import §=!7§.§2!h§;
   import §>!a§.§-?§;
   import §@"1§.§"h§;
   import flash.geom.Rectangle;
   
   public class §4!l§
   {
      
      public static var §^!z§:int = 0;
      
      public static var §^!y§:int = 0;
      
      public static var §,!8§:§"h§;
      
      public static var §>!f§:§2!h§;
      
      public static var §[z§:Boolean = false;
      
      public static var §<"#§:§4!l§ = null;
      
      public static var §6>§:§!@§;
      
      public static var §!A§:Boolean = true;
      
      public static var §`k§:Number = 1;
      
      public static var §[j§:Number = 1;
      
      public static var §@!9§:Number = 1;
      
      private static var §=!$§:§&r§ = null;
      
      private static var §!!=§:Boolean = false;
       
      
      public function §4!l§()
      {
         super();
      }
      
      public static function §2!3§() : Number
      {
         return §^!z§ * §[j§;
      }
      
      public static function § ]§() : Number
      {
         return §^!y§ * §@!9§;
      }
      
      public static function pause() : void
      {
         if(!§!!=§)
         {
            §!!=§ = true;
            if(§>P§.§'8§)
            {
               §>P§.§'8§.isPaused = true;
            }
            if(§>P§.§;_§)
            {
               §>P§.§;_§.§[2§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§!!=§)
         {
            §!!=§ = false;
            if(§>P§.§'8§)
            {
               §>P§.§'8§.isPaused = false;
            }
            if(§>P§.§;_§)
            {
               §>P§.§;_§.§[2§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §!!=§;
      }
      
      public static function init(param1:§!@§, param2:int, param3:int) : void
      {
         §6>§ = param1;
         §^!z§ = param2;
         §^!y§ = param3;
         §>!f§ = new §2!h§(true,param1.canvas);
      }
      
      public static function §6!j§(param1:§&>§, param2:Function = null) : void
      {
         §,!8§.§6!j§(param1,param2);
      }
      
      public static function loadLevel(param1:§-?§) : void
      {
         §,!8§.init(param1);
      }
      
      public static function setController(param1:§&r§) : void
      {
         §=!$§ = param1;
         §,!8§.setController(param1);
      }
      
      public static function get controller() : §&r§
      {
         return §=!$§;
      }
      
      public static function §>"§(param1:Boolean) : void
      {
         §!A§ = param1;
         §,!8§.background.§>"§(param1);
      }
      
      public static function §0!J§() : Boolean
      {
         return §!A§;
      }
      
      public static function §&!1§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §`k§ = Math.min(param3 / §^!z§,param4 / §^!y§);
         §[j§ = param3 / §^!z§;
         §@!9§ = param4 / §^!y§;
         §>P§.§5R§ = new Rectangle(param1,param2,param3,param4);
         §>P§.§85§ = §[j§ > §@!9§;
         §,!8§.§+!6§(param3,param4,§[j§,§@!9§);
      }
   }
}
