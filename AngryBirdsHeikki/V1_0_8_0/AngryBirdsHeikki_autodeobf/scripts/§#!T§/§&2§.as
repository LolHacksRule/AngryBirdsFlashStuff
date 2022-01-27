package §#!T§
{
   import § !3§.§%! §;
   import §!v§.§7[§;
   import §0!&§.§!'§;
   import §2z§.§2!U§;
   import §4!e§.§+!Y§;
   import §7b§.§8!]§;
   import §>!E§.§=!_§;
   import §`!L§.§]!L§;
   import flash.geom.Rectangle;
   
   public class §&2§
   {
      
      public static var §8!G§:int = 0;
      
      public static var §>!?§:int = 0;
      
      public static var §4!1§:§2!U§;
      
      public static var §,!c§:§%! §;
      
      public static var §"e§:Boolean = false;
      
      public static var §9#§:§&2§ = null;
      
      public static var §1A§:§=!_§;
      
      public static var §"§:Boolean = true;
      
      public static var §7k§:Number = 1;
      
      public static var §]!`§:Number = 1;
      
      public static var § `§:Number = 1;
      
      private static var §76§:§8!]§ = null;
      
      private static var §+![§:Boolean = false;
       
      
      public function §&2§()
      {
         super();
      }
      
      public static function §7i§() : Number
      {
         return §8!G§ * §]!`§;
      }
      
      public static function §=! §() : Number
      {
         return §>!?§ * § `§;
      }
      
      public static function §"!J§() : void
      {
         if(!§+![§)
         {
            §+![§ = true;
            if(§7[§.§=!$§)
            {
               §7[§.§=!$§.isPaused = true;
            }
            if(§7[§.§&!J§)
            {
               §7[§.§&!J§.§3M§(false);
            }
         }
      }
      
      public static function §,`§() : void
      {
         if(§+![§)
         {
            §+![§ = false;
            if(§7[§.§=!$§)
            {
               §7[§.§=!$§.isPaused = false;
            }
            if(§7[§.§&!J§)
            {
               §7[§.§&!J§.§3M§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §+![§;
      }
      
      public static function init(param1:§=!_§, param2:int, param3:int) : void
      {
         §1A§ = param1;
         §8!G§ = param2;
         §>!?§ = param3;
         §,!c§ = new §%! §(true,param1.canvas);
      }
      
      public static function §>C§(param1:XML, param2:XML) : void
      {
         §+!Y§.§>C§(param1,param2);
      }
      
      public static function §[!4§(param1:§]!L§, param2:Array, param3:Function = null) : void
      {
         §4!1§.§[!4§(param1,param2,param3);
      }
      
      public static function §-!Q§(param1:§!'§) : void
      {
         §4!1§.init(param1);
      }
      
      public static function §9![§(param1:§8!]§) : void
      {
         §76§ = param1;
         §4!1§.§9![§(param1);
      }
      
      public static function get §7=§() : §8!]§
      {
         return §76§;
      }
      
      public static function §[!N§(param1:Boolean) : void
      {
         §"§ = param1;
         §4!1§.background.§[!N§(param1);
      }
      
      public static function §9O§() : Boolean
      {
         return §"§;
      }
      
      public static function §2!E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§7[§.§&!J§)
         {
            §7[§.§&!J§.§ d§ = new Rectangle(param1,param2,param3,param4);
            §7[§.§&!J§.setCanvasSize(param3,param4);
         }
         §7k§ = Math.min(param3 / §8!G§,param4 / §>!?§);
         §]!`§ = param3 / §8!G§;
         § `§ = param4 / §>!?§;
         §4!1§.§'$§(param3,param4);
      }
   }
}
