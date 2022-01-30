package §7"1§
{
   import §"p§.§<!B§;
   import §#?§.§%!O§;
   import §&=§.§%!j§;
   import §0E§.§#O§;
   import §3",§.§0"<§;
   import §3u§.§>Y§;
   import §[B§.§"d§;
   import §[m§.§!";§;
   import flash.geom.Rectangle;
   
   public class §%W§
   {
      
      public static var §0<§:int = 0;
      
      public static var §-!'§:int = 0;
      
      public static var §5"8§:§"d§;
      
      public static var §=X§:§<!B§;
      
      public static var §;[§:Boolean = false;
      
      public static var §#!D§:§%W§ = null;
      
      public static var §4!t§:§!";§;
      
      public static var §+!A§:Boolean = true;
      
      public static var §+!u§:Number = 1;
      
      public static var §@!N§:Number = 1;
      
      public static var §`N§:Number = 1;
      
      private static var §1U§:§%!j§ = null;
      
      private static var § 2§:Boolean = false;
       
      
      public function §%W§()
      {
         super();
      }
      
      public static function §;v§() : Number
      {
         return §0<§ * §@!N§;
      }
      
      public static function §>^§() : Number
      {
         return §-!'§ * §`N§;
      }
      
      public static function pause() : void
      {
         if(!§ 2§)
         {
            § 2§ = true;
            if(§0"<§.§1!G§)
            {
               §0"<§.§1!G§.isPaused = true;
            }
            if(§0"<§.§<?§)
            {
               §0"<§.§<?§.§^!D§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§ 2§)
         {
            § 2§ = false;
            if(§0"<§.§1!G§)
            {
               §0"<§.§1!G§.isPaused = false;
            }
            if(§0"<§.§<?§)
            {
               §0"<§.§<?§.§^!D§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return § 2§;
      }
      
      public static function init(param1:§!";§, param2:int, param3:int) : void
      {
         §4!t§ = param1;
         §0<§ = param2;
         §-!'§ = param3;
         §=X§ = new §<!B§(true,param1.canvas);
      }
      
      public static function §1!f§(param1:XML, param2:XML) : void
      {
         §%!O§.§1!f§(param1,param2);
      }
      
      public static function §,C§(param1:§>Y§, param2:Array, param3:Function = null) : void
      {
         §5"8§.§,C§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§#O§) : void
      {
         §5"8§.init(param1);
      }
      
      public static function §92§(param1:§%!j§) : void
      {
         §1U§ = param1;
         §5"8§.§92§(param1);
      }
      
      public static function get §6h§() : §%!j§
      {
         return §1U§;
      }
      
      public static function §;!v§(param1:Boolean) : void
      {
         §+!A§ = param1;
         §5"8§.background.§;!v§(param1);
      }
      
      public static function §,4§() : Boolean
      {
         return §+!A§;
      }
      
      public static function §18§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.§9R§ = new Rectangle(param1,param2,param3,param4);
            §0"<§.§<?§.setCanvasSize(param3,param4);
         }
         §+!u§ = Math.min(param3 / §0<§,param4 / §-!'§);
         §@!N§ = param3 / §0<§;
         §`N§ = param4 / §-!'§;
         §5"8§.§,!M§(param3,param4);
      }
   }
}
