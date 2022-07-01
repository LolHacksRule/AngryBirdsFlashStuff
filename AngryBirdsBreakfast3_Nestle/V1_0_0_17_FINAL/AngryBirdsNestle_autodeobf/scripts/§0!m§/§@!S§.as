package §0!m§
{
   import §!!!§.§6!l§;
   import §#!`§.§1V§;
   import §%!B§.§5L§;
   import §,!'§.§5O§;
   import §24§.§,!N§;
   import §8! §.§+C§;
   import §@V§.§#=§;
   import flash.geom.Rectangle;
   
   public class §@!S§
   {
      
      public static var §3z§:int = 0;
      
      public static var §`!,§:int = 0;
      
      public static var §2A§:§#=§;
      
      public static var §["4§:§,!N§;
      
      public static var §!L§:Boolean = false;
      
      public static var §^7§:§@!S§ = null;
      
      public static var §[!%§:§5O§;
      
      public static var §3t§:Boolean = true;
      
      public static var §8!L§:Number = 1;
      
      public static var §5!e§:Number = 1;
      
      public static var §+!q§:Number = 1;
      
      private static var §&!f§:§1V§ = null;
      
      private static var §'"+§:Boolean = false;
       
      
      public function §@!S§()
      {
         super();
      }
      
      public static function §^!q§() : Number
      {
         return §3z§ * §5!e§;
      }
      
      public static function §]!s§() : Number
      {
         return §`!,§ * §+!q§;
      }
      
      public static function pause() : void
      {
         if(!§'"+§)
         {
            §'"+§ = true;
            if(§6!l§.§-f§)
            {
               §6!l§.§-f§.isPaused = true;
            }
            if(§6!l§.§+J§)
            {
               §6!l§.§+J§.§36§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§'"+§)
         {
            §'"+§ = false;
            if(§6!l§.§-f§)
            {
               §6!l§.§-f§.isPaused = false;
            }
            if(§6!l§.§+J§)
            {
               §6!l§.§+J§.§36§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §'"+§;
      }
      
      public static function init(param1:§5O§, param2:int, param3:int) : void
      {
         §[!%§ = param1;
         §3z§ = param2;
         §`!,§ = param3;
         §["4§ = new §,!N§(true,param1.canvas);
      }
      
      public static function §>!J§(param1:§+C§, param2:Function = null) : void
      {
         §2A§.§>!J§(param1,param2);
      }
      
      public static function loadLevel(param1:§5L§) : void
      {
         §2A§.init(param1);
      }
      
      public static function setController(param1:§1V§) : void
      {
         §&!f§ = param1;
         §2A§.setController(param1);
      }
      
      public static function get controller() : §1V§
      {
         return §&!f§;
      }
      
      public static function §'"%§(param1:Boolean) : void
      {
         §3t§ = param1;
         §2A§.background.§'"%§(param1);
      }
      
      public static function §^"&§() : Boolean
      {
         return §3t§;
      }
      
      public static function §1!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §8!L§ = Math.min(param3 / §3z§,param4 / §`!,§);
         §5!e§ = param3 / §3z§;
         §+!q§ = param4 / §`!,§;
         §6!l§.§7!w§ = new Rectangle(param1,param2,param3,param4);
         §6!l§.§#N§ = §5!e§ > §+!q§;
         §2A§.§7<§(param3,param4,§5!e§,§+!q§);
      }
   }
}
