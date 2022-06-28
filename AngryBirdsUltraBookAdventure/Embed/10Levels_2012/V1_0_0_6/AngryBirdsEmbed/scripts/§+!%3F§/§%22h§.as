package §+!?§
{
   import §,!C§.§0v§;
   import §3G§.§!E§;
   import §8c§.§1N§;
   import §<=§.§9x§;
   import §=!B§.§^!9§;
   import §=E§.§"!5§;
   import §>K§.§;Q§;
   import §catch§.§4@§;
   import flash.geom.Rectangle;
   
   public class §"h§
   {
      
      public static var §4T§:int = 0;
      
      public static var §0!$§:int = 0;
      
      public static var §1C§:§!E§;
      
      public static var §73§:§;Q§;
      
      public static var §0b§:Boolean = false;
      
      public static var §<o§:§"h§ = null;
      
      public static var §'7§:§1N§;
      
      public static var § a§:Boolean = true;
      
      public static var §],§:Number = 1;
      
      public static var §'!I§:Number = 1;
      
      public static var §for§:Number = 1;
      
      private static var §'!J§:§"!5§ = null;
      
      private static var §^!+§:Boolean = false;
       
      
      public function §"h§()
      {
         super();
      }
      
      public static function §=[§() : Number
      {
         return §4T§ * §'!I§;
      }
      
      public static function §+_§() : Number
      {
         return §0!$§ * §for§;
      }
      
      public static function pause() : void
      {
         if(!§^!+§)
         {
            §^!+§ = true;
            if(§4@§.§&R§)
            {
               §4@§.§&R§.isPaused = true;
            }
            if(§4@§.§0W§)
            {
               §4@§.§0W§.§`H§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§^!+§)
         {
            §^!+§ = false;
            if(§4@§.§&R§)
            {
               §4@§.§&R§.isPaused = false;
            }
            if(§4@§.§0W§)
            {
               §4@§.§0W§.§`H§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §^!+§;
      }
      
      public static function init(param1:§1N§, param2:int, param3:int) : void
      {
         §'7§ = param1;
         §4T§ = param2;
         §0!$§ = param3;
         §73§ = new §;Q§(true,param1.canvas);
      }
      
      public static function §&M§(param1:XML, param2:XML) : void
      {
         §0v§.§&M§(param1,param2);
      }
      
      public static function §#y§(param1:§9x§, param2:Array, param3:Function = null) : void
      {
         §1C§.§#y§(param1,param2,param3);
      }
      
      public static function §6!9§(param1:§^!9§) : void
      {
         §1C§.init(param1);
      }
      
      public static function §;j§(param1:§"!5§) : void
      {
         §'!J§ = param1;
         §1C§.§;j§(param1);
      }
      
      public static function get controller() : §"!5§
      {
         return §'!J§;
      }
      
      public static function §=K§(param1:Boolean) : void
      {
         § a§ = param1;
         §1C§.background.§=K§(param1);
      }
      
      public static function §"+§() : Boolean
      {
         return § a§;
      }
      
      public static function §19§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§4@§.§0W§)
         {
            §4@§.§0W§.§5B§ = new Rectangle(param1,param2,param3,param4);
            §4@§.§0W§.setCanvasSize(param3,param4);
         }
         §],§ = Math.min(param3 / §4T§,param4 / §0!$§);
         §'!I§ = param3 / §4T§;
         §for§ = param4 / §0!$§;
         §1C§.§`!I§(param3,param4);
      }
   }
}
