package §@!"§
{
   import §"a§.§!"J§;
   import §%"J§.§3!O§;
   import §+!c§.§>!D§;
   import §,"R§.§>!E§;
   import §-f§.§8!<§;
   import §-p§.§7"4§;
   import §4!<§.§'!S§;
   import §9!n§.§0"T§;
   import flash.geom.Rectangle;
   
   public class §?l§
   {
      
      public static var §7!H§:int = 0;
      
      public static var §<"P§:int = 0;
      
      public static var §'h§:§'!S§;
      
      public static var §#"$§:§>!D§;
      
      public static var §#V§:Boolean = false;
      
      public static var §6";§:§?l§ = null;
      
      public static var § "G§:§3!O§;
      
      public static var §^q§:Boolean = true;
      
      public static var §,"Z§:Number = 1;
      
      public static var §+!9§:Number = 1;
      
      public static var §0!S§:Number = 1;
      
      private static var §1c§:§7"4§ = null;
      
      private static var §,L§:Boolean = false;
       
      
      public function §?l§()
      {
         super();
      }
      
      public static function §""E§() : Number
      {
         return §7!H§ * §+!9§;
      }
      
      public static function §5&§() : Number
      {
         return §<"P§ * §0!S§;
      }
      
      public static function pause() : void
      {
         if(!§,L§)
         {
            §,L§ = true;
            if(§!"J§.§<!C§)
            {
               §!"J§.§<!C§.isPaused = true;
            }
            if(§!"J§.§1&§)
            {
               §!"J§.§1&§.§>"1§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§,L§)
         {
            §,L§ = false;
            if(§!"J§.§<!C§)
            {
               §!"J§.§<!C§.isPaused = false;
            }
            if(§!"J§.§1&§)
            {
               §!"J§.§1&§.§>"1§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §,L§;
      }
      
      public static function init(param1:§3!O§, param2:int, param3:int) : void
      {
         § "G§ = param1;
         §7!H§ = param2;
         §<"P§ = param3;
         §#"$§ = new §>!D§(true,param1.canvas);
      }
      
      public static function §`!I§(param1:XML, param2:XML) : void
      {
         §8!<§.§`!I§(param1,param2);
      }
      
      public static function §&!_§(param1:§>!E§, param2:Array, param3:Function = null) : void
      {
         §'h§.§&!_§(param1,param2,param3);
      }
      
      public static function §,!m§(param1:§0"T§) : void
      {
         §'h§.init(param1);
      }
      
      public static function setController(param1:§7"4§) : void
      {
         §1c§ = param1;
         §'h§.setController(param1);
      }
      
      public static function get §5-§() : §7"4§
      {
         return §1c§;
      }
      
      public static function §%"7§(param1:Boolean) : void
      {
         §^q§ = param1;
         §'h§.background.§%"7§(param1);
      }
      
      public static function §'!R§() : Boolean
      {
         return §^q§;
      }
      
      public static function §4!c§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §,"Z§ = Math.min(param3 / §7!H§,param4 / §<"P§);
         §+!9§ = param3 / §7!H§;
         §0!S§ = param4 / §<"P§;
         §!"J§.§8N§ = new Rectangle(param1,param2,param3,param4);
         §!"J§.§8!'§ = true;
         §'h§.§=r§(param3,param4);
      }
   }
}
