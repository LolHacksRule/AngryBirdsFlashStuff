package §;A§
{
   import §,-§.§'i§;
   import §1!4§.§,X§;
   import §2!G§.§2!V§;
   import §3U§.§ !M§;
   import §9]§.§9J§;
   import §<!!§.§ -§;
   import §[U§.§!!U§;
   import §^!&§.§,!S§;
   import flash.geom.Rectangle;
   
   public class §7!K§
   {
      
      public static var §'[§:int = 0;
      
      public static var §+!U§:int = 0;
      
      public static var §=j§:§2!V§;
      
      public static var §9!@§:§ -§;
      
      public static var §2H§:Boolean = false;
      
      public static var §0-§:§7!K§ = null;
      
      public static var §7!I§:§,X§;
      
      public static var §=7§:Boolean = true;
      
      public static var §&n§:Number = 1;
      
      public static var §=x§:Number = 1;
      
      public static var §7Y§:Number = 1;
      
      private static var §,!D§:§,!S§ = null;
      
      private static var §!!K§:Boolean = false;
       
      
      public function §7!K§()
      {
         super();
      }
      
      public static function §+!`§() : Number
      {
         return §'[§ * §=x§;
      }
      
      public static function §5!C§() : Number
      {
         return §+!U§ * §7Y§;
      }
      
      public static function §]T§() : void
      {
         if(!§!!K§)
         {
            §!!K§ = true;
            if(§9J§.§!L§)
            {
               §9J§.§!L§.isPaused = true;
            }
            if(§9J§.§?X§)
            {
               §9J§.§?X§.§-p§(false);
            }
         }
      }
      
      public static function §1m§() : void
      {
         if(§!!K§)
         {
            §!!K§ = false;
            if(§9J§.§!L§)
            {
               §9J§.§!L§.isPaused = false;
            }
            if(§9J§.§?X§)
            {
               §9J§.§?X§.§-p§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §!!K§;
      }
      
      public static function init(param1:§,X§, param2:int, param3:int) : void
      {
         §7!I§ = param1;
         §'[§ = param2;
         §+!U§ = param3;
         §9!@§ = new § -§(true,param1.canvas);
      }
      
      public static function §3^§(param1:XML, param2:XML) : void
      {
         §'i§.§3^§(param1,param2);
      }
      
      public static function §1!O§(param1:§!!U§, param2:Array, param3:Function = null) : void
      {
         §=j§.§1!O§(param1,param2,param3);
      }
      
      public static function §4y§(param1:§ !M§) : void
      {
         §=j§.init(param1);
      }
      
      public static function §,'§(param1:§,!S§) : void
      {
         §,!D§ = param1;
         §=j§.§,'§(param1);
      }
      
      public static function get §0!9§() : §,!S§
      {
         return §,!D§;
      }
      
      public static function §!!`§(param1:Boolean) : void
      {
         §=7§ = param1;
         §=j§.background.§!!`§(param1);
      }
      
      public static function §8j§() : Boolean
      {
         return §=7§;
      }
      
      public static function §#!1§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§9J§.§?X§)
         {
            §9J§.§?X§.§+T§ = new Rectangle(param1,param2,param3,param4);
            §9J§.§?X§.setCanvasSize(param3,param4);
         }
         §&n§ = Math.min(param3 / §'[§,param4 / §+!U§);
         §=x§ = param3 / §'[§;
         §7Y§ = param4 / §+!U§;
         §=j§.§-,§(param3,param4);
      }
   }
}
