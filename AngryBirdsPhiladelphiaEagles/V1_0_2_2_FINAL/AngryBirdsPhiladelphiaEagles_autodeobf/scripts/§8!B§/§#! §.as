package §8!B§
{
   import §2G§.§>U§;
   import §5Z§.§[Z§;
   import §9P§.§[!4§;
   import §9T§.§1r§;
   import §=I§.§2i§;
   import §?#§.§,H§;
   import §^]§.§[z§;
   import §`K§.§!f§;
   import flash.geom.Rectangle;
   
   public class §#! §
   {
      
      public static var §-p§:int = 0;
      
      public static var §5!9§:int = 0;
      
      public static var §`'§:§1r§;
      
      public static var §92§:§!f§;
      
      public static var §^!E§:Boolean = false;
      
      public static var §?V§:§#! § = null;
      
      public static var § A§:§[!4§;
      
      public static var §>Y§:Boolean = true;
      
      public static var §+!&§:Number = 1;
      
      public static var §3M§:Number = 1;
      
      public static var §+!E§:Number = 1;
      
      private static var §<L§:§,H§ = null;
      
      private static var §+A§:Boolean = false;
       
      
      public function §#! §()
      {
         super();
      }
      
      public static function §,!F§() : Number
      {
         return §-p§ * §3M§;
      }
      
      public static function § v§() : Number
      {
         return §5!9§ * §+!E§;
      }
      
      public static function pause() : void
      {
         if(!§+A§)
         {
            §+A§ = true;
            if(§[Z§.§[A§)
            {
               §[Z§.§[A§.isPaused = true;
            }
            if(§[Z§.§%m§)
            {
               §[Z§.§%m§.§=!P§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§+A§)
         {
            §+A§ = false;
            if(§[Z§.§[A§)
            {
               §[Z§.§[A§.isPaused = false;
            }
            if(§[Z§.§%m§)
            {
               §[Z§.§%m§.§=!P§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §+A§;
      }
      
      public static function init(param1:§[!4§, param2:int, param3:int) : void
      {
         § A§ = param1;
         §-p§ = param2;
         §5!9§ = param3;
         §92§ = new §!f§(true,param1.canvas);
      }
      
      public static function §+Q§(param1:XML, param2:XML) : void
      {
         §>U§.§+Q§(param1,param2);
      }
      
      public static function §0!8§(param1:§2i§, param2:Array, param3:Function = null) : void
      {
         §`'§.§0!8§(param1,param2,param3);
      }
      
      public static function §!e§(param1:§[z§) : void
      {
         §`'§.init(param1);
      }
      
      public static function §;]§(param1:§,H§) : void
      {
         §<L§ = param1;
         §`'§.§;]§(param1);
      }
      
      public static function get controller() : §,H§
      {
         return §<L§;
      }
      
      public static function §!Y§(param1:Boolean) : void
      {
         §>Y§ = param1;
         §`'§.background.§!Y§(param1);
      }
      
      public static function §#!-§() : Boolean
      {
         return §>Y§;
      }
      
      public static function §%U§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.§&!L§ = new Rectangle(param1,param2,param3,param4);
            §[Z§.§%m§.setCanvasSize(param3,param4);
         }
         §+!&§ = Math.min(param3 / §-p§,param4 / §5!9§);
         §3M§ = param3 / §-p§;
         §+!E§ = param4 / §5!9§;
         §`'§.§=,§(param3,param4);
      }
   }
}
