package §3!0§
{
   import § 2§.§=+§;
   import §'"&§.§4!2§;
   import §3-§.§#s§;
   import §8!$§.§3w§;
   import §=!d§.§5!5§;
   import §>T§.§,"3§;
   import flash.geom.Rectangle;
   
   public class §`i§
   {
      
      public static var §8#§:int = 0;
      
      public static var §1k§:int = 0;
      
      public static var §&!L§:§=+§;
      
      public static var §-!0§:§3w§;
      
      public static var §#!a§:Boolean = false;
      
      public static var §9!V§:§`i§ = null;
      
      public static var §+H§:§4!2§;
      
      public static var §%W§:Boolean = true;
      
      public static var §;!<§:Number = 1;
      
      public static var §=!I§:Number = 1;
      
      public static var §%!a§:Number = 1;
      
      private static var §0R§:§,"3§ = null;
      
      private static var §&!$§:Boolean = false;
       
      
      public function §`i§()
      {
         super();
      }
      
      public static function §]!W§() : Number
      {
         return §8#§ * §=!I§;
      }
      
      public static function §-!`§() : Number
      {
         return §1k§ * §%!a§;
      }
      
      public static function pause() : void
      {
         if(!§&!$§)
         {
            §&!$§ = true;
            if(§5!5§.§>F§)
            {
               §5!5§.§>F§.isPaused = true;
            }
            if(§5!5§.§^'§)
            {
               §5!5§.§^'§.§+!g§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§&!$§)
         {
            §&!$§ = false;
            if(§5!5§.§>F§)
            {
               §5!5§.§>F§.isPaused = false;
            }
            if(§5!5§.§^'§)
            {
               §5!5§.§^'§.§+!g§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §&!$§;
      }
      
      public static function init(param1:§4!2§, param2:int, param3:int) : void
      {
         §+H§ = param1;
         §8#§ = param2;
         §1k§ = param3;
         §-!0§ = new §3w§(true,param1.canvas);
      }
      
      public static function §0C§(param1:§#s§, param2:Function = null) : void
      {
         §&!L§.§0C§(param1,param2);
      }
      
      public static function loadLevel(param1:§[d§) : void
      {
         §&!L§.init(param1);
      }
      
      public static function setController(param1:§,"3§) : void
      {
         §0R§ = param1;
         §&!L§.setController(param1);
      }
      
      public static function get controller() : §,"3§
      {
         return §0R§;
      }
      
      public static function §;![§(param1:Boolean) : void
      {
         §%W§ = param1;
         §&!L§.background.§;![§(param1);
      }
      
      public static function §-!v§() : Boolean
      {
         return §%W§;
      }
      
      public static function §0J§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §;!<§ = Math.min(param3 / §8#§,param4 / §1k§);
         §=!I§ = param3 / §8#§;
         §%!a§ = param4 / §1k§;
         §5!5§.§5`§ = new Rectangle(param1,param2,param3,param4);
         §5!5§.§!n§ = §=!I§ > §%!a§;
         §&!L§.§`!M§(param3,param4,§=!I§,§%!a§);
      }
   }
}
