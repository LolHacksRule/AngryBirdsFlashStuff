package §"!5§
{
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §0!<§.§@!5§;
   import §<!7§.§5i§;
   import §<!B§.§<O§;
   import §>!C§.§9R§;
   import §?!D§.§@!$§;
   import §`K§.§3n§;
   import flash.geom.Rectangle;
   
   public class §,!!§
   {
      
      public static var §;]§:int = 0;
      
      public static var §3L§:int = 0;
      
      public static var §;4§:§#;§;
      
      public static var §;!;§:§@!5§;
      
      public static var §[!2§:Boolean = false;
      
      public static var § #§:§,!!§ = null;
      
      public static var §-k§:§5i§;
      
      public static var §5§:Boolean = true;
      
      public static var §2J§:Number = 1;
      
      public static var §0!3§:Number = 1;
      
      public static var §,`§:Number = 1;
      
      private static var §"Q§:§@!$§ = null;
      
      private static var §6<§:Boolean = false;
       
      
      public function §,!!§()
      {
         super();
      }
      
      public static function §[i§() : Number
      {
         return §;]§ * §0!3§;
      }
      
      public static function §#9§() : Number
      {
         return §3L§ * §,`§;
      }
      
      public static function pause() : void
      {
         if(!§6<§)
         {
            §6<§ = true;
            if(§'_§.§6!"§)
            {
               §'_§.§6!"§.isPaused = true;
            }
            if(§'_§.§17§)
            {
               §'_§.§17§.§%z§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§6<§)
         {
            §6<§ = false;
            if(§'_§.§6!"§)
            {
               §'_§.§6!"§.isPaused = false;
            }
            if(§'_§.§17§)
            {
               §'_§.§17§.§%z§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §6<§;
      }
      
      public static function init(param1:§5i§, param2:int, param3:int) : void
      {
         §-k§ = param1;
         §;]§ = param2;
         §3L§ = param3;
         §;!;§ = new §@!5§(true,param1.canvas);
      }
      
      public static function §>!%§(param1:XML, param2:XML) : void
      {
         §3n§.§>!%§(param1,param2);
      }
      
      public static function §^!2§(param1:§<O§, param2:Array, param3:Function = null) : void
      {
         §;4§.§^!2§(param1,param2,param3);
      }
      
      public static function §<H§(param1:§9R§) : void
      {
         §;4§.init(param1);
      }
      
      public static function § ]§(param1:§@!$§) : void
      {
         §"Q§ = param1;
         §;4§.§ ]§(param1);
      }
      
      public static function get controller() : §@!$§
      {
         return §"Q§;
      }
      
      public static function §#,§(param1:Boolean) : void
      {
         §5§ = param1;
         §;4§.background.§#,§(param1);
      }
      
      public static function §1q§() : Boolean
      {
         return §5§;
      }
      
      public static function §1%§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§'_§.§17§)
         {
            §'_§.§17§.§^w§ = new Rectangle(param1,param2,param3,param4);
            §'_§.§17§.setCanvasSize(param3,param4);
         }
         §2J§ = Math.min(param3 / §;]§,param4 / §3L§);
         §0!3§ = param3 / §;]§;
         §,`§ = param4 / §3L§;
         §;4§.§0"§(param3,param4);
      }
   }
}
