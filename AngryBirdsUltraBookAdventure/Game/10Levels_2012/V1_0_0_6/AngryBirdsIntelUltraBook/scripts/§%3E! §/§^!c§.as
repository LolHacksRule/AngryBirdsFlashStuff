package §>! §
{
   import §!!K§.§else§;
   import §"x§.§2w§;
   import §-%§.§#!J§;
   import §-d§.§%d§;
   import §2_§.§'u§;
   import §3!G§.§ y§;
   import §]2§.§[!O§;
   import §]o§.§"!Z§;
   import flash.geom.Rectangle;
   
   public class §^!c§
   {
      
      public static var §"!c§:int = 0;
      
      public static var §%g§:int = 0;
      
      public static var §5!Y§:§'u§;
      
      public static var §"!k§:§2w§;
      
      public static var §@a§:Boolean = false;
      
      public static var §,!D§:§^!c§ = null;
      
      public static var §2!w§:§[!O§;
      
      public static var §^!O§:Boolean = true;
      
      public static var § v§:Number = 1;
      
      public static var §#!M§:Number = 1;
      
      public static var §6W§:Number = 1;
      
      private static var §,!h§:§#!J§ = null;
      
      private static var §`!&§:Boolean = false;
       
      
      public function §^!c§()
      {
         super();
      }
      
      public static function §`!F§() : Number
      {
         return §"!c§ * §#!M§;
      }
      
      public static function §8&§() : Number
      {
         return §%g§ * §6W§;
      }
      
      public static function pause() : void
      {
         if(!§`!&§)
         {
            §`!&§ = true;
            if(§else§.§]!#§)
            {
               §else§.§]!#§.isPaused = true;
            }
            if(§else§.§^!A§)
            {
               §else§.§^!A§.§``§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§`!&§)
         {
            §`!&§ = false;
            if(§else§.§]!#§)
            {
               §else§.§]!#§.isPaused = false;
            }
            if(§else§.§^!A§)
            {
               §else§.§^!A§.§``§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §`!&§;
      }
      
      public static function init(param1:§[!O§, param2:int, param3:int) : void
      {
         §2!w§ = param1;
         §"!c§ = param2;
         §%g§ = param3;
         §"!k§ = new §2w§(true,param1.canvas);
      }
      
      public static function §-#§(param1:XML, param2:XML) : void
      {
         §%d§.§-#§(param1,param2);
      }
      
      public static function §-f§(param1:§"!Z§, param2:Array, param3:Function = null) : void
      {
         §5!Y§.§-f§(param1,param2,param3);
      }
      
      public static function §@3§(param1:§ y§) : void
      {
         §5!Y§.init(param1);
      }
      
      public static function setController(param1:§#!J§) : void
      {
         §,!h§ = param1;
         §5!Y§.setController(param1);
      }
      
      public static function get §-U§() : §#!J§
      {
         return §,!h§;
      }
      
      public static function §9!p§(param1:Boolean) : void
      {
         §^!O§ = param1;
         §5!Y§.background.§9!p§(param1);
      }
      
      public static function § !?§() : Boolean
      {
         return §^!O§;
      }
      
      public static function §<!B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§else§.§^!A§)
         {
            §else§.§^!A§.§3S§ = new Rectangle(param1,param2,param3,param4);
            §else§.§^!A§.setCanvasSize(param3,param4);
         }
         § v§ = Math.min(param3 / §"!c§,param4 / §%g§);
         §#!M§ = param3 / §"!c§;
         §6W§ = param4 / §%g§;
         §5!Y§.§;X§(param3,param4);
      }
   }
}
