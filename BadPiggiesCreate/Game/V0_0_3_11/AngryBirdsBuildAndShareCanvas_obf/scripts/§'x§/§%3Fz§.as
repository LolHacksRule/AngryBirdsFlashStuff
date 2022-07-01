package §'x§
{
   import §+%§.§5!F§;
   import §0P§.§!!l§;
   import §1!v§.§@%§;
   import §2j§.§2B§;
   import §4%§.§5P§;
   import §62§.§7!_§;
   import §8q§.§@§;
   import §;X§.§1T§;
   import flash.geom.Rectangle;
   
   public class §?z§
   {
      
      public static var § !q§:int = 0;
      
      public static var §%"2§:int = 0;
      
      public static var §=7§:§@%§;
      
      public static var §^!t§:§1T§;
      
      public static var §8&§:Boolean = false;
      
      public static var §&I§:§?z§ = null;
      
      public static var §,`§:§2B§;
      
      public static var §&!#§:Boolean = true;
      
      public static var §<"4§:Number = 1;
      
      public static var §'!<§:Number = 1;
      
      public static var §%!K§:Number = 1;
      
      private static var §%!^§:§7!_§ = null;
      
      private static var §,!`§:Boolean = false;
       
      
      public function §?z§()
      {
         super();
      }
      
      public static function §9h§() : Number
      {
         return § !q§ * §'!<§;
      }
      
      public static function §68§() : Number
      {
         return §%"2§ * §%!K§;
      }
      
      public static function pause() : void
      {
         if(!§,!`§)
         {
            §,!`§ = true;
            if(§!!l§.§]<§)
            {
               §!!l§.§]<§.isPaused = true;
            }
            if(§!!l§.§`7§)
            {
               §!!l§.§`7§.§]w§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§,!`§)
         {
            §,!`§ = false;
            if(§!!l§.§]<§)
            {
               §!!l§.§]<§.isPaused = false;
            }
            if(§!!l§.§`7§)
            {
               §!!l§.§`7§.§]w§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §,!`§;
      }
      
      public static function init(param1:§2B§, param2:int, param3:int) : void
      {
         §,`§ = param1;
         § !q§ = param2;
         §%"2§ = param3;
         §^!t§ = new §1T§(true,param1.canvas);
      }
      
      public static function § E§(param1:XML, param2:XML) : void
      {
         §@§.§ E§(param1,param2);
      }
      
      public static function §;!J§(param1:§5P§, param2:Array, param3:Function = null) : void
      {
         §=7§.§;!J§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§5!F§) : void
      {
         §=7§.init(param1);
      }
      
      public static function §5!R§(param1:§7!_§) : void
      {
         §%!^§ = param1;
         §=7§.§5!R§(param1);
      }
      
      public static function get §6!#§() : §7!_§
      {
         return §%!^§;
      }
      
      public static function §'8§(param1:Boolean) : void
      {
         §&!#§ = param1;
         §=7§.background.§'8§(param1);
      }
      
      public static function §3R§() : Boolean
      {
         return §&!#§;
      }
      
      public static function §'a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.§35§ = new Rectangle(param1,param2,param3,param4);
            §!!l§.§`7§.setCanvasSize(param3,param4);
         }
         §<"4§ = Math.min(param3 / § !q§,param4 / §%"2§);
         §'!<§ = param3 / § !q§;
         §%!K§ = param4 / §%"2§;
         §=7§.§-!x§(param3,param4);
      }
   }
}
