package com.angrybirds
{
   import §"I§.§18§;
   import §"m§.§,g§;
   import §%^§.§@!n§;
   import §'<§.§;r§;
   import §0I§.§!!p§;
   import §6!4§.§<!D§;
   import §9!o§.§<"§;
   import flash.geom.Rectangle;
   
   public class §6U§
   {
      
      public static var §[6§:int = 0;
      
      public static var §1a§:int = 0;
      
      public static var §+_§:§!!p§;
      
      public static var §<!@§:§18§;
      
      public static var §`"$§:Boolean = false;
      
      public static var §&!v§:§6U§ = null;
      
      public static var §&k§:§,g§;
      
      public static var §>;§:Boolean = true;
      
      public static var §-R§:Number = 1;
      
      public static var §7!K§:Number = 1;
      
      public static var §7Z§:Number = 1;
      
      private static var §=!]§:§<"§ = null;
      
      private static var §3!l§:Boolean = false;
       
      
      public function §6U§()
      {
         super();
      }
      
      public static function §'0§() : Number
      {
         return §[6§ * §7!K§;
      }
      
      public static function §%"2§() : Number
      {
         return §1a§ * §7Z§;
      }
      
      public static function pause() : void
      {
         if(!§3!l§)
         {
            §3!l§ = true;
            if(§<!D§.§?P§)
            {
               §<!D§.§?P§.isPaused = true;
            }
            if(§<!D§.§?!_§)
            {
               §<!D§.§?!_§.§3!]§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§3!l§)
         {
            §3!l§ = false;
            if(§<!D§.§?P§)
            {
               §<!D§.§?P§.isPaused = false;
            }
            if(§<!D§.§?!_§)
            {
               §<!D§.§?!_§.§3!]§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §3!l§;
      }
      
      public static function init(param1:§,g§, param2:int, param3:int) : void
      {
         §&k§ = param1;
         §[6§ = param2;
         §1a§ = param3;
         §<!@§ = new §18§(true,param1.canvas);
      }
      
      public static function §<d§(param1:§@!n§, param2:Function = null) : void
      {
         §+_§.§<d§(param1,param2);
      }
      
      public static function loadLevel(param1:§;r§) : void
      {
         §+_§.init(param1);
      }
      
      public static function setController(param1:§<"§) : void
      {
         §=!]§ = param1;
         §+_§.setController(param1);
      }
      
      public static function get controller() : §<"§
      {
         return §=!]§;
      }
      
      public static function §^!9§(param1:Boolean) : void
      {
         §>;§ = param1;
         §+_§.background.§^!9§(param1);
      }
      
      public static function §2!,§() : Boolean
      {
         return §>;§;
      }
      
      public static function §,!"§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §-R§ = Math.min(param3 / §[6§,param4 / §1a§);
         §7!K§ = param3 / §[6§;
         §7Z§ = param4 / §1a§;
         §<!D§.§7!9§ = new Rectangle(param1,param2,param3,param4);
         §<!D§.§6l§ = §7!K§ > §7Z§;
         §+_§.§&!0§(param3,param4,§7!K§,§7Z§);
      }
   }
}
