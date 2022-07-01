package com.angrybirds
{
   import §0P§.§+!l§;
   import §1Q§.§?!Y§;
   import §5;§.§?"7§;
   import §8!e§.§!!E§;
   import §9G§.§2F§;
   import §;4§.§#"!§;
   import §=!6§.§+8§;
   import flash.geom.Rectangle;
   
   public class §4"6§
   {
      
      public static var §,_§:int = 0;
      
      public static var §-v§:int = 0;
      
      public static var §;!k§:§2F§;
      
      public static var §,!h§:§#"!§;
      
      public static var §5Y§:Boolean = false;
      
      public static var §&W§:§4"6§ = null;
      
      public static var §<_§:§+!l§;
      
      public static var §#!I§:Boolean = true;
      
      public static var §,"'§:Number = 1;
      
      public static var §8!N§:Number = 1;
      
      public static var §&!D§:Number = 1;
      
      private static var §8!4§:§?!Y§ = null;
      
      private static var §,8§:Boolean = false;
       
      
      public function §4"6§()
      {
         super();
      }
      
      public static function §>!f§() : Number
      {
         return §,_§ * §8!N§;
      }
      
      public static function §<!v§() : Number
      {
         return §-v§ * §&!D§;
      }
      
      public static function pause() : void
      {
         if(!§,8§)
         {
            §,8§ = true;
            if(§+8§.§@%§)
            {
               §+8§.§@%§.isPaused = true;
            }
            if(§+8§.§0j§)
            {
               §+8§.§0j§.§3+§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§,8§)
         {
            §,8§ = false;
            if(§+8§.§@%§)
            {
               §+8§.§@%§.isPaused = false;
            }
            if(§+8§.§0j§)
            {
               §+8§.§0j§.§3+§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §,8§;
      }
      
      public static function init(param1:§+!l§, param2:int, param3:int) : void
      {
         §<_§ = param1;
         §,_§ = param2;
         §-v§ = param3;
         §,!h§ = new §#"!§(true,param1.canvas);
      }
      
      public static function §&$§(param1:§?"7§, param2:Function = null) : void
      {
         §;!k§.§&$§(param1,param2);
      }
      
      public static function loadLevel(param1:§!!E§) : void
      {
         §;!k§.init(param1);
      }
      
      public static function setController(param1:§?!Y§) : void
      {
         §8!4§ = param1;
         §;!k§.setController(param1);
      }
      
      public static function get controller() : §?!Y§
      {
         return §8!4§;
      }
      
      public static function §;!7§(param1:Boolean) : void
      {
         §#!I§ = param1;
         §;!k§.background.§;!7§(param1);
      }
      
      public static function §4!f§() : Boolean
      {
         return §#!I§;
      }
      
      public static function §@! §(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §,"'§ = Math.min(param3 / §,_§,param4 / §-v§);
         §8!N§ = param3 / §,_§;
         §&!D§ = param4 / §-v§;
         §+8§.§7!S§ = new Rectangle(param1,param2,param3,param4);
         §+8§.§-C§ = §8!N§ > §&!D§;
         §;!k§.§0v§(param3,param4,§8!N§,§&!D§);
      }
   }
}
