package §3!S§
{
   import §#""§.§^E§;
   import §-N§.§=!]§;
   import §3>§.§["!§;
   import §6!&§.§0!b§;
   import §=b§.§-!K§;
   import §@!;§.§@N§;
   import §]"&§.§#'§;
   import §^s§.§+!P§;
   import flash.geom.Rectangle;
   
   public class §%s§
   {
      
      public static var §"<§:int = 0;
      
      public static var §9%§:int = 0;
      
      public static var §`!f§:§-!K§;
      
      public static var §7H§:§@N§;
      
      public static var §3'§:Boolean = false;
      
      public static var §+!w§:§%s§ = null;
      
      public static var §8l§:§+!P§;
      
      public static var §;0§:Boolean = true;
      
      public static var §+N§:Number = 1;
      
      public static var §,!=§:Number = 1;
      
      public static var §-=§:Number = 1;
      
      private static var §!U§:§#'§ = null;
      
      private static var §!K§:Boolean = false;
       
      
      public function §%s§()
      {
         super();
      }
      
      public static function §2w§() : Number
      {
         return §"<§ * §,!=§;
      }
      
      public static function §%!^§() : Number
      {
         return §9%§ * §-=§;
      }
      
      public static function pause() : void
      {
         if(!§!K§)
         {
            §!K§ = true;
            if(§=!]§.§@!,§)
            {
               §=!]§.§@!,§.isPaused = true;
            }
            if(§=!]§.§@§)
            {
               §=!]§.§@§.§&q§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§!K§)
         {
            §!K§ = false;
            if(§=!]§.§@!,§)
            {
               §=!]§.§@!,§.isPaused = false;
            }
            if(§=!]§.§@§)
            {
               §=!]§.§@§.§&q§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §!K§;
      }
      
      public static function init(param1:§+!P§, param2:int, param3:int) : void
      {
         §8l§ = param1;
         §"<§ = param2;
         §9%§ = param3;
         §7H§ = new §@N§(true,param1.canvas);
      }
      
      public static function §?!D§(param1:XML, param2:XML) : void
      {
         §["!§.§?!D§(param1,param2);
      }
      
      public static function §[!l§(param1:§^E§, param2:Array, param3:Function = null) : void
      {
         §`!f§.§[!l§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§0!b§) : void
      {
         §`!f§.init(param1);
      }
      
      public static function §4!-§(param1:§#'§) : void
      {
         §!U§ = param1;
         §`!f§.§4!-§(param1);
      }
      
      public static function get §]x§() : §#'§
      {
         return §!U§;
      }
      
      public static function §"l§(param1:Boolean) : void
      {
         §;0§ = param1;
         §`!f§.background.§"l§(param1);
      }
      
      public static function §!!6§() : Boolean
      {
         return §;0§;
      }
      
      public static function §4!@§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§=!]§.§@§)
         {
            §=!]§.§@§.§-'§ = new Rectangle(param1,param2,param3,param4);
            §=!]§.§@§.setCanvasSize(param3,param4);
         }
         §+N§ = Math.min(param3 / §"<§,param4 / §9%§);
         §,!=§ = param3 / §"<§;
         §-=§ = param4 / §9%§;
         §`!f§.§<q§(param3,param4);
      }
   }
}
