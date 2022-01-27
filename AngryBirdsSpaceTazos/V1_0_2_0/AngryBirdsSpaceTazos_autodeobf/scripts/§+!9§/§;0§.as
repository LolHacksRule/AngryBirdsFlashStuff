package §+!9§
{
   import §""<§.§0"9§;
   import §3!4§.§ ![§;
   import §8";§.§#+§;
   import §;!,§.§"q§;
   import §;!0§.§!!X§;
   import §<"9§.§0";§;
   import §?!<§.§'!1§;
   import flash.geom.Rectangle;
   
   public class §;0§
   {
      
      public static var §+g§:int = 0;
      
      public static var §5+§:int = 0;
      
      public static var §@!^§:§'!1§;
      
      public static var §]!8§:§0"9§;
      
      public static var §+",§:Boolean = false;
      
      public static var §^b§:§;0§ = null;
      
      public static var §3>§:§"q§;
      
      public static var §'z§:Boolean = true;
      
      public static var §9!D§:Number = 1;
      
      public static var §@'§:Number = 1;
      
      public static var §6[§:Number = 1;
      
      private static var §[y§:§0";§ = null;
      
      private static var §,!5§:Boolean = false;
       
      
      public function §;0§()
      {
         super();
      }
      
      public static function §#C§() : Number
      {
         return §+g§ * §@'§;
      }
      
      public static function §;!h§() : Number
      {
         return §5+§ * §6[§;
      }
      
      public static function pause() : void
      {
         if(!§,!5§)
         {
            §,!5§ = true;
            if(§ ![§.§7`§)
            {
               § ![§.§7`§.isPaused = true;
            }
            if(§ ![§.§!G§)
            {
               § ![§.§!G§.§`!>§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§,!5§)
         {
            §,!5§ = false;
            if(§ ![§.§7`§)
            {
               § ![§.§7`§.isPaused = false;
            }
            if(§ ![§.§!G§)
            {
               § ![§.§!G§.§`!>§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §,!5§;
      }
      
      public static function init(param1:§"q§, param2:int, param3:int) : void
      {
         §3>§ = param1;
         §+g§ = param2;
         §5+§ = param3;
         §]!8§ = new §0"9§(true,param1.canvas);
      }
      
      public static function §77§(param1:§#+§, param2:Function = null) : void
      {
         §@!^§.§77§(param1,param2);
      }
      
      public static function loadLevel(param1:§!!X§) : void
      {
         §@!^§.init(param1);
      }
      
      public static function §'"8§(param1:§0";§) : void
      {
         §[y§ = param1;
         §@!^§.§'"8§(param1);
      }
      
      public static function get §%O§() : §0";§
      {
         return §[y§;
      }
      
      public static function §<4§(param1:Boolean) : void
      {
         §'z§ = param1;
         §@!^§.background.§<4§(param1);
      }
      
      public static function §%!3§() : Boolean
      {
         return §'z§;
      }
      
      public static function §'0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §9!D§ = Math.min(param3 / §+g§,param4 / §5+§);
         §@'§ = param3 / §+g§;
         §6[§ = param4 / §5+§;
         § ![§.§]D§ = new Rectangle(param1,param2,param3,param4);
         § ![§.§import§ = §@'§ > §6[§;
         §@!^§.§!!Y§(param3,param4,§@'§,§6[§);
      }
   }
}
