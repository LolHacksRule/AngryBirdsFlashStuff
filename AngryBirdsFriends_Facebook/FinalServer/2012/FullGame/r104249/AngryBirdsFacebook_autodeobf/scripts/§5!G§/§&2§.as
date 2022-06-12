package §5!G§
{
   import §+!F§.§1!D§;
   import §0!2§.§5"L§;
   import §70§.§<!j§;
   import §8!k§.§9=§;
   import §=%§.§>"-§;
   import §[x§.§;"<§;
   import §^"7§.§^!0§;
   import §`!n§.§#!s§;
   import flash.geom.Rectangle;
   
   public class §&2§
   {
      
      public static var §5!f§:int = 0;
      
      public static var §#!h§:int = 0;
      
      public static var §],§:§5"L§;
      
      public static var §8"I§:§;"<§;
      
      public static var §&!M§:Boolean = false;
      
      public static var §?!#§:§&2§ = null;
      
      public static var §5!k§:§9=§;
      
      public static var §7&§:Boolean = true;
      
      public static var §0!T§:Number = 1;
      
      public static var §3"J§:Number = 1;
      
      public static var §0"@§:Number = 1;
      
      private static var §5R§:§<!j§ = null;
      
      private static var §=b§:Boolean = false;
       
      
      public function §&2§()
      {
         super();
      }
      
      public static function §]b§() : Number
      {
         return §5!f§ * §3"J§;
      }
      
      public static function §&!F§() : Number
      {
         return §#!h§ * §0"@§;
      }
      
      public static function pause() : void
      {
         if(!§=b§)
         {
            §=b§ = true;
            if(§1!D§.§&!?§)
            {
               §1!D§.§&!?§.isPaused = true;
            }
            if(§1!D§.§7!T§)
            {
               §1!D§.§7!T§.§8§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§=b§)
         {
            §=b§ = false;
            if(§1!D§.§&!?§)
            {
               §1!D§.§&!?§.isPaused = false;
            }
            if(§1!D§.§7!T§)
            {
               §1!D§.§7!T§.§8§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §=b§;
      }
      
      public static function init(param1:§9=§, param2:int, param3:int) : void
      {
         §5!k§ = param1;
         §5!f§ = param2;
         §#!h§ = param3;
         §8"I§ = new §;"<§(true,param1.canvas);
      }
      
      public static function §2"K§(param1:XML, param2:XML) : void
      {
         §>"-§.§2"K§(param1,param2);
      }
      
      public static function §2H§(param1:§^!0§, param2:Array, param3:Function = null) : void
      {
         §],§.§2H§(param1,param2,param3);
      }
      
      public static function §^p§(param1:§#!s§) : void
      {
         §],§.init(param1);
      }
      
      public static function setController(param1:§<!j§) : void
      {
         §5R§ = param1;
         §],§.setController(param1);
      }
      
      public static function get §,!x§() : §<!j§
      {
         return §5R§;
      }
      
      public static function §7"C§(param1:Boolean) : void
      {
         §7&§ = param1;
         §],§.background.§7"C§(param1);
      }
      
      public static function §5;§() : Boolean
      {
         return §7&§;
      }
      
      public static function §"!E§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §0!T§ = Math.min(param3 / §5!f§,param4 / §#!h§);
         §3"J§ = param3 / §5!f§;
         §0"@§ = param4 / §#!h§;
         §1!D§.§-H§ = new Rectangle(param1,param2,param3,param4);
         §1!D§.§?"5§ = true;
         §],§.§9+§(param3,param4);
      }
   }
}
