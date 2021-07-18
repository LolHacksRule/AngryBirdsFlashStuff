package §?!-§
{
   import § !A§.§ p§;
   import § !r§.§6!o§;
   import §-!0§.§2! §;
   import §5#§.§5k§;
   import §7U§.§?!R§;
   import §<!<§.§7E§;
   import §?!6§.§1!!§;
   import §@!X§.§7j§;
   import flash.geom.Rectangle;
   
   public class §'!V§
   {
      
      public static var §&d§:int = 0;
      
      public static var §6k§:int = 0;
      
      public static var §1!2§:§7E§;
      
      public static var §'!s§:§6!o§;
      
      public static var §>!q§:Boolean = false;
      
      public static var §'?§:§'!V§ = null;
      
      public static var §6!O§:§ p§;
      
      public static var §<;§:Boolean = true;
      
      public static var §25§:Number = 1;
      
      public static var §9r§:Number = 1;
      
      public static var §'A§:Number = 1;
      
      private static var §^!I§:§5k§ = null;
      
      private static var §6&§:Boolean = false;
       
      
      public function §'!V§()
      {
         super();
      }
      
      public static function §?!a§() : Number
      {
         return §&d§ * §9r§;
      }
      
      public static function §<x§() : Number
      {
         return §6k§ * §'A§;
      }
      
      public static function pause() : void
      {
         if(!§6&§)
         {
            §6&§ = true;
            if(§7j§.§&t§)
            {
               §7j§.§&t§.§=!A§ = true;
            }
            if(§7j§.§else§)
            {
               §7j§.§else§.§?A§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§6&§)
         {
            §6&§ = false;
            if(§7j§.§&t§)
            {
               §7j§.§&t§.§=!A§ = false;
            }
            if(§7j§.§else§)
            {
               §7j§.§else§.§?A§(true);
            }
         }
      }
      
      public static function get §=!A§() : Boolean
      {
         return §6&§;
      }
      
      public static function init(param1:§ p§, param2:int, param3:int) : void
      {
         §6!O§ = param1;
         §&d§ = param2;
         §6k§ = param3;
         §'!s§ = new §6!o§(true,param1.canvas);
      }
      
      public static function §@!u§(param1:XML, param2:XML) : void
      {
         §1!!§.§@!u§(param1,param2);
      }
      
      public static function § D§(param1:§?!R§, param2:Array, param3:Function = null) : void
      {
         §1!2§.§ D§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§2! §) : void
      {
         §1!2§.init(param1);
      }
      
      public static function §>_§(param1:§5k§) : void
      {
         §^!I§ = param1;
         §1!2§.§>_§(param1);
      }
      
      public static function get §?!G§() : §5k§
      {
         return §^!I§;
      }
      
      public static function §6!Y§(param1:Boolean) : void
      {
         §<;§ = param1;
         §1!2§.background.§6!Y§(param1);
      }
      
      public static function §'V§() : Boolean
      {
         return §<;§;
      }
      
      public static function §>!T§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§7j§.§else§)
         {
            §7j§.§else§.§84§ = new Rectangle(param1,param2,param3,param4);
            §7j§.§else§.setCanvasSize(param3,param4);
         }
         §25§ = Math.min(param3 / §&d§,param4 / §6k§);
         §9r§ = param3 / §&d§;
         §'A§ = param4 / §6k§;
         §1!2§.§,!Y§(param3,param4);
      }
   }
}
