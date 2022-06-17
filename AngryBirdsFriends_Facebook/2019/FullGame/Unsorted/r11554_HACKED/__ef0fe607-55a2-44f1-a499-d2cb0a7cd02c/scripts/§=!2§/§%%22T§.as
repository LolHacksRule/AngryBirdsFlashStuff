package §=!2§
{
   import § !D§.§'"u§;
   import §!L§.§@$#§;
   import §"$=§.§=$&§;
   import §8#?§.§?#;§;
   import §9#K§.§ !@§;
   import §="l§.§#u§;
   import §]"P§.Starling;
   import flash.geom.Rectangle;
   
   public class §%"T§
   {
      
      public static var §["?§:int = 0;
      
      public static var §01§:int = 0;
      
      public static var §;`§:§'"u§;
      
      public static var §`"X§:§ !@§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §?"`§:§%"T§ = null;
      
      public static var §>$<§:§?#;§;
      
      public static var §?!r§:Boolean = true;
      
      public static var §'$A§:Number = 1;
      
      public static var §7#W§:Number = 1;
      
      public static var §"x§:Number = 1;
      
      private static var §%r§:§@$#§ = null;
      
      private static var §3!M§:Boolean = false;
       
      
      public function §%"T§()
      {
         super();
      }
      
      public static function §@" §() : Number
      {
         return §["?§ * §7#W§;
      }
      
      public static function §=$D§() : Number
      {
         return §01§ * §"x§;
      }
      
      public static function pause() : void
      {
         if(!§3!M§)
         {
            §3!M§ = true;
            if(Starling.§?"7§)
            {
               Starling.§?"7§.isPaused = true;
            }
            if(Starling.§3!I§)
            {
               Starling.§3!I§.§2"D§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§3!M§)
         {
            §3!M§ = false;
            if(Starling.§?"7§)
            {
               Starling.§?"7§.isPaused = false;
            }
            if(Starling.§3!I§)
            {
               Starling.§3!I§.§2"D§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §3!M§;
      }
      
      public static function init(param1:§?#;§, param2:int, param3:int) : void
      {
         §>$<§ = param1;
         §["?§ = param2;
         §01§ = param3;
         §`"X§ = new § !@§(true,param1.canvas);
      }
      
      public static function §]]§(param1:§#u§, param2:Function = null) : void
      {
         §;`§.§]]§(param1,param2);
      }
      
      public static function §"#S§(param1:§#u§, param2:Array, param3:Function = null) : void
      {
         §;`§.§"#S§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§=$&§) : void
      {
         §;`§.init(param1);
      }
      
      public static function setController(param1:§@$#§) : void
      {
         §%r§ = param1;
         §;`§.setController(param1);
      }
      
      public static function get §+"M§() : §@$#§
      {
         return §%r§;
      }
      
      public static function §0"q§(param1:Boolean) : void
      {
         §?!r§ = param1;
         §;`§.background.§0"q§(param1);
      }
      
      public static function §=!'§() : Boolean
      {
         return §?!r§;
      }
      
      public static function §,!I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §'$A§ = Math.min(param3 / §["?§,param4 / §01§);
         §7#W§ = param3 / §["?§;
         §"x§ = param4 / §01§;
         Starling.§3y§ = §7#W§ > §"x§;
         if(param5)
         {
            §'$A§ = 1;
            §7#W§ = 1;
            §"x§ = 1;
            Starling.§%"W§ = true;
         }
         Starling.§]"A§ = new Rectangle(param1,param2,param3,param4);
         §;`§.§0a§(param3,param4,§7#W§,§"x§);
      }
   }
}
