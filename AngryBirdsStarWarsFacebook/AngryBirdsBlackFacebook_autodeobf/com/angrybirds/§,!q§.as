package com.angrybirds
{
   import §"a§.§?#&§;
   import §&#H§.§3#J§;
   import §0!=§.§]"3§;
   import §2d§.§3!R§;
   import §5t§.§##?§;
   import §?m§.§8!B§;
   import §^#>§.§#_§;
   import flash.geom.Rectangle;
   
   public class §,!q§
   {
      
      public static var §%N§:int = 0;
      
      public static var §>#O§:int = 0;
      
      public static var §9!,§:§#_§;
      
      public static var §!#=§:§##?§;
      
      public static var §<N§:Boolean = false;
      
      public static var §;"T§:§,!q§ = null;
      
      public static var §>#D§:§]"3§;
      
      public static var §-W§:Boolean = true;
      
      public static var §!6§:Number = 1;
      
      public static var §6G§:Number = 1;
      
      public static var §!"N§:Number = 1;
      
      private static var §;#=§:§?#&§ = null;
      
      private static var §;"z§:Boolean = false;
       
      
      public function §,!q§()
      {
         super();
      }
      
      public static function §0#X§() : Number
      {
         return §%N§ * §6G§;
      }
      
      public static function §[">§() : Number
      {
         return §>#O§ * §!"N§;
      }
      
      public static function pause() : void
      {
         if(!§;"z§)
         {
            §;"z§ = true;
            if(§3#J§.§^#A§)
            {
               §3#J§.§^#A§.isPaused = true;
            }
            if(§3#J§.§2!C§)
            {
               §3#J§.§2!C§.§5J§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§;"z§)
         {
            §;"z§ = false;
            if(§3#J§.§^#A§)
            {
               §3#J§.§^#A§.isPaused = false;
            }
            if(§3#J§.§2!C§)
            {
               §3#J§.§2!C§.§5J§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §;"z§;
      }
      
      public static function init(param1:§]"3§, param2:int, param3:int) : void
      {
         §>#D§ = param1;
         §%N§ = param2;
         §>#O§ = param3;
         §!#=§ = new §##?§(true,param1.canvas);
      }
      
      public static function §[#Z§(param1:§3!R§, param2:Function = null) : void
      {
         §9!,§.§[#Z§(param1,param2);
      }
      
      public static function loadLevel(param1:§8!B§) : void
      {
         §9!,§.init(param1);
      }
      
      public static function §3!Q§(param1:§?#&§) : void
      {
         §;#=§ = param1;
         §9!,§.§3!Q§(param1);
      }
      
      public static function get §>k§() : §?#&§
      {
         return §;#=§;
      }
      
      public static function §%Q§(param1:Boolean) : void
      {
         §-W§ = param1;
         §9!,§.background.§%Q§(param1);
      }
      
      public static function §0@§() : Boolean
      {
         return §-W§;
      }
      
      public static function §0!L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §!6§ = Math.min(param3 / §%N§,param4 / §>#O§);
         §6G§ = param3 / §%N§;
         §!"N§ = param4 / §>#O§;
         §3#J§.§=#_§ = new Rectangle(param1,param2,param3,param4);
         §3#J§.§+!m§ = §6G§ > §!"N§;
         §9!,§.§!=§(param3,param4,§6G§,§!"N§);
      }
   }
}
