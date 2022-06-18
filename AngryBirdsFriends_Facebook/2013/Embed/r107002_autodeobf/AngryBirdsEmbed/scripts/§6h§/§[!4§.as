package §6h§
{
   import §3u§.§<r§;
   import §6Z§.§"!;§;
   import §7!§.§,L§;
   import §9s§.§^9§;
   import §;!'§.§=j§;
   import §<1§.§=!H§;
   import §@!;§.§6§;
   import §`R§.§8!1§;
   import flash.geom.Rectangle;
   
   public class §[!4§
   {
      
      public static var §71§:int = 0;
      
      public static var §=6§:int = 0;
      
      public static var §continue§:§^9§;
      
      public static var §>B§:§6§;
      
      public static var §78§:Boolean = false;
      
      public static var §@B§:§[!4§ = null;
      
      public static var §@b§:§8!1§;
      
      public static var §,h§:Boolean = true;
      
      public static var §3!9§:Number = 1;
      
      public static var §4p§:Number = 1;
      
      public static var §<^§:Number = 1;
      
      private static var §8!K§:§<r§ = null;
      
      private static var §1!9§:Boolean = false;
       
      
      public function §[!4§()
      {
         super();
      }
      
      public static function §!L§() : Number
      {
         return §71§ * §4p§;
      }
      
      public static function §-!§() : Number
      {
         return §=6§ * §<^§;
      }
      
      public static function pause() : void
      {
         if(!§1!9§)
         {
            §1!9§ = true;
            if(§,L§.§5I§)
            {
               §,L§.§5I§.isPaused = true;
            }
            if(§,L§.§3v§)
            {
               §,L§.§3v§.§ ! §(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§1!9§)
         {
            §1!9§ = false;
            if(§,L§.§5I§)
            {
               §,L§.§5I§.isPaused = false;
            }
            if(§,L§.§3v§)
            {
               §,L§.§3v§.§ ! §(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §1!9§;
      }
      
      public static function init(param1:§8!1§, param2:int, param3:int) : void
      {
         §@b§ = param1;
         §71§ = param2;
         §=6§ = param3;
         §>B§ = new §6§(true,param1.canvas);
      }
      
      public static function §['§(param1:XML, param2:XML) : void
      {
         §=j§.§['§(param1,param2);
      }
      
      public static function §+Q§(param1:§=!H§, param2:Array, param3:Function = null) : void
      {
         §continue§.§+Q§(param1,param2,param3);
      }
      
      public static function §4y§(param1:§"!;§) : void
      {
         §continue§.init(param1);
      }
      
      public static function §>L§(param1:§<r§) : void
      {
         §8!K§ = param1;
         §continue§.§>L§(param1);
      }
      
      public static function get controller() : §<r§
      {
         return §8!K§;
      }
      
      public static function §=!F§(param1:Boolean) : void
      {
         §,h§ = param1;
         §continue§.background.§=!F§(param1);
      }
      
      public static function §-u§() : Boolean
      {
         return §,h§;
      }
      
      public static function §3m§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §3!9§ = Math.min(param3 / §71§,param4 / §=6§);
         §4p§ = param3 / §71§;
         §<^§ = param4 / §=6§;
         §,L§.§1N§ = new Rectangle(param1,param2,param3,param4);
         §,L§.§,!%§ = true;
         §continue§.§true§(param3,param4);
      }
   }
}
