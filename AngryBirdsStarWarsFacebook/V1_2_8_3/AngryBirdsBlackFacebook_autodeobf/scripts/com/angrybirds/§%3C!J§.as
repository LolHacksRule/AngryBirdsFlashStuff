package com.angrybirds
{
   import § "-§.§6!R§;
   import §"§.§;!E§;
   import §+=§.§`"t§;
   import §9"`§.§@n§;
   import §9&§.§]!`§;
   import §?"6§.§@A§;
   import flash.geom.Rectangle;
   import §null §.§>#-§;
   
   public class §<!J§
   {
      
      public static var §8!Q§:int = 0;
      
      public static var §,e§:int = 0;
      
      public static var §=!%§:§;!E§;
      
      public static var §1t§:§@n§;
      
      public static var §<C§:Boolean = false;
      
      public static var §&"R§:§<!J§ = null;
      
      public static var §#!L§:§]!`§;
      
      public static var §?"R§:Boolean = true;
      
      public static var §^§:Number = 1;
      
      public static var §^K§:Number = 1;
      
      public static var §`1§:Number = 1;
      
      private static var §^Y§:§@A§ = null;
      
      private static var §4h§:Boolean = false;
       
      
      public function §<!J§()
      {
         super();
      }
      
      public static function §&u§() : Number
      {
         return §8!Q§ * §^K§;
      }
      
      public static function §!"!§() : Number
      {
         return §,e§ * §`1§;
      }
      
      public static function pause() : void
      {
         if(!§4h§)
         {
            §4h§ = true;
            if(§6!R§.§6!V§)
            {
               §6!R§.§6!V§.isPaused = true;
            }
            if(§6!R§.§+!d§)
            {
               §6!R§.§+!d§.§%#3§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§4h§)
         {
            §4h§ = false;
            if(§6!R§.§6!V§)
            {
               §6!R§.§6!V§.isPaused = false;
            }
            if(§6!R§.§+!d§)
            {
               §6!R§.§+!d§.§%#3§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §4h§;
      }
      
      public static function init(param1:§]!`§, param2:int, param3:int) : void
      {
         §#!L§ = param1;
         §8!Q§ = param2;
         §,e§ = param3;
         §1t§ = new §@n§(true,param1.canvas);
      }
      
      public static function §-" §(param1:§`"t§, param2:Function = null) : void
      {
         §=!%§.§-" §(param1,param2);
      }
      
      public static function loadLevel(param1:§>#-§) : void
      {
         §=!%§.init(param1);
      }
      
      public static function §-k§(param1:§@A§) : void
      {
         §^Y§ = param1;
         §=!%§.§-k§(param1);
      }
      
      public static function get §]!D§() : §@A§
      {
         return §^Y§;
      }
      
      public static function §]c§(param1:Boolean) : void
      {
         §?"R§ = param1;
         §=!%§.background.§]c§(param1);
      }
      
      public static function §]""§() : Boolean
      {
         return §?"R§;
      }
      
      public static function §3!a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §^§ = Math.min(param3 / §8!Q§,param4 / §,e§);
         §^K§ = param3 / §8!Q§;
         §`1§ = param4 / §,e§;
         §6!R§.§8t§ = new Rectangle(param1,param2,param3,param4);
         §6!R§.§`#6§ = §^K§ > §`1§;
         §=!%§.§1J§(param3,param4,§^K§,§`1§);
      }
   }
}
