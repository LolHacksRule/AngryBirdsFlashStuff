package §7!C§
{
   import §'!k§.§>!P§;
   import §1f§.§9H§;
   import §3R§.§1!R§;
   import §4",§.§3v§;
   import §5s§.§`!<§;
   import §6!C§.§^!;§;
   import §>"$§.§7!v§;
   import flash.geom.Rectangle;
   
   public class §8!w§
   {
      
      public static var §6c§:int = 0;
      
      public static var §9"-§:int = 0;
      
      public static var §5!V§:§1!R§;
      
      public static var §1!j§:§^!;§;
      
      public static var §;!§:Boolean = false;
      
      public static var §&!C§:§8!w§ = null;
      
      public static var §1"?§:§>!P§;
      
      public static var §8H§:Boolean = true;
      
      public static var §-`§:Number = 1;
      
      public static var §70§:Number = 1;
      
      public static var §<"B§:Number = 1;
      
      private static var §!!X§:§`!<§ = null;
      
      private static var §=V§:Boolean = false;
       
      
      public function §8!w§()
      {
         super();
      }
      
      public static function §,l§() : Number
      {
         return §6c§ * §70§;
      }
      
      public static function §9!R§() : Number
      {
         return §9"-§ * §<"B§;
      }
      
      public static function pause() : void
      {
         if(!§=V§)
         {
            §=V§ = true;
            if(§9H§.§6<§)
            {
               §9H§.§6<§.isPaused = true;
            }
            if(§9H§.§0"'§)
            {
               §9H§.§0"'§.§7!e§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§=V§)
         {
            §=V§ = false;
            if(§9H§.§6<§)
            {
               §9H§.§6<§.isPaused = false;
            }
            if(§9H§.§0"'§)
            {
               §9H§.§0"'§.§7!e§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §=V§;
      }
      
      public static function init(param1:§>!P§, param2:int, param3:int) : void
      {
         §1"?§ = param1;
         §6c§ = param2;
         §9"-§ = param3;
         §1!j§ = new §^!;§(true,param1.canvas);
      }
      
      public static function §;!Q§(param1:§7!v§, param2:Function = null) : void
      {
         §5!V§.§;!Q§(param1,param2);
      }
      
      public static function loadLevel(param1:§3v§) : void
      {
         §5!V§.init(param1);
      }
      
      public static function §?<§(param1:§`!<§) : void
      {
         §!!X§ = param1;
         §5!V§.§?<§(param1);
      }
      
      public static function get §79§() : §`!<§
      {
         return §!!X§;
      }
      
      public static function §%!6§(param1:Boolean) : void
      {
         §8H§ = param1;
         §5!V§.background.§%!6§(param1);
      }
      
      public static function §7!#§() : Boolean
      {
         return §8H§;
      }
      
      public static function §7"0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §-`§ = Math.min(param3 / §6c§,param4 / §9"-§);
         §70§ = param3 / §6c§;
         §<"B§ = param4 / §9"-§;
         §9H§.§#!%§ = new Rectangle(param1,param2,param3,param4);
         §9H§.§["?§ = §70§ > §<"B§;
         §5!V§.§-!X§(param3,param4,§70§,§<"B§);
      }
   }
}
