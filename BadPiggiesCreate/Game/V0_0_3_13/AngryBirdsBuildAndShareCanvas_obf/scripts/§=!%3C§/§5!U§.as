package §=!<§
{
   import § ""§.§4!n§;
   import §&W§.include;
   import §-!+§.§6"6§;
   import §0s§.§];§;
   import §8!E§.§?!X§;
   import §9";§.§<!7§;
   import §>!?§.§&!i§;
   import §@R§.§6`§;
   import flash.geom.Rectangle;
   
   public class §5!U§
   {
      
      public static var §`!_§:int = 0;
      
      public static var §?_§:int = 0;
      
      public static var §,!E§:§?!X§;
      
      public static var §+p§:include;
      
      public static var §1D§:Boolean = false;
      
      public static var §2!U§:§5!U§ = null;
      
      public static var §=J§:§<!7§;
      
      public static var §;!%§:Boolean = true;
      
      public static var §&!%§:Number = 1;
      
      public static var §=k§:Number = 1;
      
      public static var §#"1§:Number = 1;
      
      private static var §;u§:§&!i§ = null;
      
      private static var §@h§:Boolean = false;
       
      
      public function §5!U§()
      {
         super();
      }
      
      public static function §#!t§() : Number
      {
         return §`!_§ * §=k§;
      }
      
      public static function §%" §() : Number
      {
         return §?_§ * §#"1§;
      }
      
      public static function pause() : void
      {
         if(!§@h§)
         {
            §@h§ = true;
            if(§6"6§.§4H§)
            {
               §6"6§.§4H§.isPaused = true;
            }
            if(§6"6§.§^F§)
            {
               §6"6§.§^F§.§%!#§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§@h§)
         {
            §@h§ = false;
            if(§6"6§.§4H§)
            {
               §6"6§.§4H§.isPaused = false;
            }
            if(§6"6§.§^F§)
            {
               §6"6§.§^F§.§%!#§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@h§;
      }
      
      public static function init(param1:§<!7§, param2:int, param3:int) : void
      {
         §=J§ = param1;
         §`!_§ = param2;
         §?_§ = param3;
         §+p§ = new include(true,param1.canvas);
      }
      
      public static function §"&§(param1:XML, param2:XML) : void
      {
         §4!n§.§"&§(param1,param2);
      }
      
      public static function §[8§(param1:§6`§, param2:Array, param3:Function = null) : void
      {
         §,!E§.§[8§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§];§) : void
      {
         §,!E§.init(param1);
      }
      
      public static function §7!t§(param1:§&!i§) : void
      {
         §;u§ = param1;
         §,!E§.§7!t§(param1);
      }
      
      public static function get § !t§() : §&!i§
      {
         return §;u§;
      }
      
      public static function § 5§(param1:Boolean) : void
      {
         §;!%§ = param1;
         §,!E§.background.§ 5§(param1);
      }
      
      public static function §7!A§() : Boolean
      {
         return §;!%§;
      }
      
      public static function §;"#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.§>""§ = new Rectangle(param1,param2,param3,param4);
            §6"6§.§^F§.setCanvasSize(param3,param4);
         }
         §&!%§ = Math.min(param3 / §`!_§,param4 / §?_§);
         §=k§ = param3 / §`!_§;
         §#"1§ = param4 / §?_§;
         §,!E§.§<!T§(param3,param4);
      }
   }
}
