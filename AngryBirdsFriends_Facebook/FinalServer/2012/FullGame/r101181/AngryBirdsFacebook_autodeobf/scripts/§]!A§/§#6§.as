package §]!A§
{
   import §#!e§.§1"B§;
   import §%Q§.§6G§;
   import §'6§.§"]§;
   import §-"6§.§3X§;
   import §3![§.§5!@§;
   import §6o§.§""5§;
   import §9"!§.§9"3§;
   import §>i§.§'!p§;
   import flash.geom.Rectangle;
   
   public class §#6§
   {
      
      public static var §;H§:int = 0;
      
      public static var §+P§:int = 0;
      
      public static var §6!z§:§9"3§;
      
      public static var §=_§:§""5§;
      
      public static var §4x§:Boolean = false;
      
      public static var §%"&§:§#6§ = null;
      
      public static var § q§:§3X§;
      
      public static var §4!n§:Boolean = true;
      
      public static var §!;§:Number = 1;
      
      public static var §>!F§:Number = 1;
      
      public static var §"e§:Number = 1;
      
      private static var §9F§:§5!@§ = null;
      
      private static var §+"2§:Boolean = false;
       
      
      public function §#6§()
      {
         super();
      }
      
      public static function §7!-§() : Number
      {
         return §;H§ * §>!F§;
      }
      
      public static function §8h§() : Number
      {
         return §+P§ * §"e§;
      }
      
      public static function pause() : void
      {
         if(!§+"2§)
         {
            §+"2§ = true;
            if(§"]§.§^!v§)
            {
               §"]§.§^!v§.isPaused = true;
            }
            if(§"]§.§!X§)
            {
               §"]§.§!X§.§@!f§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§+"2§)
         {
            §+"2§ = false;
            if(§"]§.§^!v§)
            {
               §"]§.§^!v§.isPaused = false;
            }
            if(§"]§.§!X§)
            {
               §"]§.§!X§.§@!f§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §+"2§;
      }
      
      public static function init(param1:§3X§, param2:int, param3:int) : void
      {
         § q§ = param1;
         §;H§ = param2;
         §+P§ = param3;
         §=_§ = new §""5§(true,param1.canvas);
      }
      
      public static function §%!e§(param1:XML, param2:XML) : void
      {
         §6G§.§%!e§(param1,param2);
      }
      
      public static function §[!2§(param1:§'!p§, param2:Array, param3:Function = null) : void
      {
         §6!z§.§[!2§(param1,param2,param3);
      }
      
      public static function §-!4§(param1:§1"B§) : void
      {
         §6!z§.init(param1);
      }
      
      public static function setController(param1:§5!@§) : void
      {
         §9F§ = param1;
         §6!z§.setController(param1);
      }
      
      public static function get §'" §() : §5!@§
      {
         return §9F§;
      }
      
      public static function §'h§(param1:Boolean) : void
      {
         §4!n§ = param1;
         §6!z§.background.§'h§(param1);
      }
      
      public static function §&9§() : Boolean
      {
         return §4!n§;
      }
      
      public static function §^9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§"]§.§!X§)
         {
            §"]§.§!X§.§?!;§ = new Rectangle(param1,param2,param3,param4);
            §"]§.§!X§.setCanvasSize(param3,param4);
         }
         §!;§ = Math.min(param3 / §;H§,param4 / §+P§);
         §>!F§ = param3 / §;H§;
         §"e§ = param4 / §+P§;
         §6!z§.§@r§(param3,param4);
      }
   }
}
