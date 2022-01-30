package com.angrybirds
{
   import § !Q§.§-T§;
   import §!P§.§2"4§;
   import §0!`§.§-",§;
   import §="3§.§[N§;
   import §]A§.§[d§;
   import §^x§.§="4§;
   import §`V§.§;6§;
   import flash.geom.Rectangle;
   
   public class §#Z§
   {
      
      public static var § c§:int = 0;
      
      public static var §1<§:int = 0;
      
      public static var §'0§:§[d§;
      
      public static var §@!V§:§-T§;
      
      public static var §?!,§:Boolean = false;
      
      public static var §02§:§#Z§ = null;
      
      public static var §-!6§:§[N§;
      
      public static var §@t§:Boolean = true;
      
      public static var §93§:Number = 1;
      
      public static var §&"3§:Number = 1;
      
      public static var §]w§:Number = 1;
      
      private static var §,k§:§="4§ = null;
      
      private static var §!!U§:Boolean = false;
       
      
      public function §#Z§()
      {
         super();
      }
      
      public static function §true §() : Number
      {
         return § c§ * §&"3§;
      }
      
      public static function §1K§() : Number
      {
         return §1<§ * §]w§;
      }
      
      public static function pause() : void
      {
         if(!§!!U§)
         {
            §!!U§ = true;
            if(§;6§.§`"!§)
            {
               §;6§.§`"!§.isPaused = true;
            }
            if(§;6§.§@X§)
            {
               §;6§.§@X§.§&F§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§!!U§)
         {
            §!!U§ = false;
            if(§;6§.§`"!§)
            {
               §;6§.§`"!§.isPaused = false;
            }
            if(§;6§.§@X§)
            {
               §;6§.§@X§.§&F§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §!!U§;
      }
      
      public static function init(param1:§[N§, param2:int, param3:int) : void
      {
         §-!6§ = param1;
         § c§ = param2;
         §1<§ = param3;
         §@!V§ = new §-T§(true,param1.canvas);
      }
      
      public static function §&!`§(param1:§-",§, param2:Function = null) : void
      {
         §'0§.§&!`§(param1,param2);
      }
      
      public static function loadLevel(param1:§2"4§) : void
      {
         §'0§.init(param1);
      }
      
      public static function setController(param1:§="4§) : void
      {
         §,k§ = param1;
         §'0§.setController(param1);
      }
      
      public static function get controller() : §="4§
      {
         return §,k§;
      }
      
      public static function §?!m§(param1:Boolean) : void
      {
         §@t§ = param1;
         §'0§.background.§?!m§(param1);
      }
      
      public static function §-"5§() : Boolean
      {
         return §@t§;
      }
      
      public static function §&B§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §93§ = Math.min(param3 / § c§,param4 / §1<§);
         §&"3§ = param3 / § c§;
         §]w§ = param4 / §1<§;
         §;6§.§8!"§ = new Rectangle(param1,param2,param3,param4);
         §;6§.§[!u§ = §&"3§ > §]w§;
         §'0§.§0!r§(param3,param4,§&"3§,§]w§);
      }
   }
}
