package §;!y§
{
   import §"!i§.§"!'§;
   import §-!$§.§4P§;
   import §0S§.§7!Z§;
   import §1!B§.§0!X§;
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §48§.§5Y§;
   import §<8§.§,!J§;
   import flash.geom.Rectangle;
   
   public class §,!s§
   {
      
      public static var §!"#§:int = 0;
      
      public static var §8p§:int = 0;
      
      public static var §=!I§:§5G§;
      
      public static var §3!h§:§0!X§;
      
      public static var §?C§:Boolean = false;
      
      public static var §7""§:§,!s§ = null;
      
      public static var §]!J§:§4P§;
      
      public static var §?l§:Boolean = true;
      
      public static var §0!!§:Number = 1;
      
      public static var §8;§:Number = 1;
      
      public static var §#d§:Number = 1;
      
      private static var §>!u§:§5Y§ = null;
      
      private static var §@,§:Boolean = false;
       
      
      public function §,!s§()
      {
         super();
      }
      
      public static function §!!Q§() : Number
      {
         return §!"#§ * §8;§;
      }
      
      public static function §<!S§() : Number
      {
         return §8p§ * §#d§;
      }
      
      public static function pause() : void
      {
         if(!§@,§)
         {
            §@,§ = true;
            if(§<!?§.§#T§)
            {
               §<!?§.§#T§.isPaused = true;
            }
            if(§<!?§.§,=§)
            {
               §<!?§.§,=§.§7d§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§@,§)
         {
            §@,§ = false;
            if(§<!?§.§#T§)
            {
               §<!?§.§#T§.isPaused = false;
            }
            if(§<!?§.§,=§)
            {
               §<!?§.§,=§.§7d§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@,§;
      }
      
      public static function init(param1:§4P§, param2:int, param3:int) : void
      {
         §]!J§ = param1;
         §!"#§ = param2;
         §8p§ = param3;
         §3!h§ = new §0!X§(true,param1.canvas);
      }
      
      public static function §=$§(param1:XML, param2:XML) : void
      {
         §7!Z§.§=$§(param1,param2);
      }
      
      public static function §"!t§(param1:§,!J§, param2:Array, param3:Function = null) : void
      {
         §=!I§.§"!t§(param1,param2,param3);
      }
      
      public static function §`!O§(param1:§"!'§) : void
      {
         §=!I§.init(param1);
      }
      
      public static function setController(param1:§5Y§) : void
      {
         §>!u§ = param1;
         §=!I§.setController(param1);
      }
      
      public static function get § Q§() : §5Y§
      {
         return §>!u§;
      }
      
      public static function §'6§(param1:Boolean) : void
      {
         §?l§ = param1;
         §=!I§.background.§'6§(param1);
      }
      
      public static function §^@§() : Boolean
      {
         return §?l§;
      }
      
      public static function §4J§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §0!!§ = Math.min(param3 / §!"#§,param4 / §8p§);
         §8;§ = param3 / §!"#§;
         §#d§ = param4 / §8p§;
         §<!?§.§+i§ = new Rectangle(param1,param2,param3,param4);
         §<!?§.§8!`§ = true;
         §=!I§.§6!'§(param3,param4);
      }
   }
}
