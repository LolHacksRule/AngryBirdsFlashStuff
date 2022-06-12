package §1U§
{
   import §&!s§.§+!O§;
   import §+!d§.§`!+§;
   import §,y§.§>v§;
   import §4!s§.§%I§;
   import §5!5§.§^e§;
   import §7M§.§+R§;
   import §8"!§.§8! §;
   import §9!G§.§38§;
   import flash.geom.Rectangle;
   
   public class §"!V§
   {
      
      public static var §<!8§:int = 0;
      
      public static var §[V§:int = 0;
      
      public static var §!j§:§%I§;
      
      public static var §8!§:§38§;
      
      public static var §2!_§:Boolean = false;
      
      public static var §7l§:§"!V§ = null;
      
      public static var §1T§:§8! §;
      
      public static var §""9§:Boolean = true;
      
      public static var §,!w§:Number = 1;
      
      public static var §4-§:Number = 1;
      
      public static var §8!e§:Number = 1;
      
      private static var §"!4§:§>v§ = null;
      
      private static var §@"-§:Boolean = false;
       
      
      public function §"!V§()
      {
         super();
      }
      
      public static function § !N§() : Number
      {
         return §<!8§ * §4-§;
      }
      
      public static function §@!w§() : Number
      {
         return §[V§ * §8!e§;
      }
      
      public static function pause() : void
      {
         if(!§@"-§)
         {
            §@"-§ = true;
            if(§^e§.§,_§)
            {
               §^e§.§,_§.isPaused = true;
            }
            if(§^e§.§-_§)
            {
               §^e§.§-_§.§`i§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§@"-§)
         {
            §@"-§ = false;
            if(§^e§.§,_§)
            {
               §^e§.§,_§.isPaused = false;
            }
            if(§^e§.§-_§)
            {
               §^e§.§-_§.§`i§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@"-§;
      }
      
      public static function init(param1:§8! §, param2:int, param3:int) : void
      {
         §1T§ = param1;
         §<!8§ = param2;
         §[V§ = param3;
         §8!§ = new §38§(true,param1.canvas);
      }
      
      public static function §6!&§(param1:XML, param2:XML) : void
      {
         §+!O§.§6!&§(param1,param2);
      }
      
      public static function §%6§(param1:§`!+§, param2:Array, param3:Function = null) : void
      {
         §!j§.§%6§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§+R§) : void
      {
         §!j§.init(param1);
      }
      
      public static function §`!G§(param1:§>v§) : void
      {
         §"!4§ = param1;
         §!j§.§`!G§(param1);
      }
      
      public static function get § !o§() : §>v§
      {
         return §"!4§;
      }
      
      public static function §;!o§(param1:Boolean) : void
      {
         §""9§ = param1;
         §!j§.background.§;!o§(param1);
      }
      
      public static function §1!u§() : Boolean
      {
         return §""9§;
      }
      
      public static function §7!K§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§^e§.§-_§)
         {
            §^e§.§-_§.§?%§ = new Rectangle(param1,param2,param3,param4);
            §^e§.§-_§.setCanvasSize(param3,param4);
         }
         §,!w§ = Math.min(param3 / §<!8§,param4 / §[V§);
         §4-§ = param3 / §<!8§;
         §8!e§ = param4 / §[V§;
         §!j§.§3!K§(param3,param4);
      }
   }
}
