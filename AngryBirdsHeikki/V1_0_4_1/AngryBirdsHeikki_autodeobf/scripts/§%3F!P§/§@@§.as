package §?!P§
{
   import §%!$§.§'!C§;
   import §,J§.§74§;
   import §3h§.§`_§;
   import §4t§.§^!@§;
   import §5H§.§9!P§;
   import §?!5§.§2d§;
   import §^!7§.§^A§;
   import §`Y§.§]!%§;
   import flash.geom.Rectangle;
   
   public class §@@§
   {
      
      public static var §!!P§:int = 0;
      
      public static var §9!8§:int = 0;
      
      public static var § !8§:§^A§;
      
      public static var §'!X§:§'!C§;
      
      public static var §7U§:Boolean = false;
      
      public static var §@`§:§@@§ = null;
      
      public static var §&9§:§`_§;
      
      public static var §>!`§:Boolean = true;
      
      public static var §4!#§:Number = 1;
      
      public static var §0!D§:Number = 1;
      
      public static var §@H§:Number = 1;
      
      private static var §'§:§^!@§ = null;
      
      private static var §%!,§:Boolean = false;
       
      
      public function §@@§()
      {
         super();
      }
      
      public static function §0h§() : Number
      {
         return §!!P§ * §0!D§;
      }
      
      public static function §-t§() : Number
      {
         return §9!8§ * §@H§;
      }
      
      public static function §9@§() : void
      {
         if(!§%!,§)
         {
            §%!,§ = true;
            if(§2d§.§8e§)
            {
               §2d§.§8e§.isPaused = true;
            }
            if(§2d§.§0A§)
            {
               §2d§.§0A§.§[8§(false);
            }
         }
      }
      
      public static function §"Q§() : void
      {
         if(§%!,§)
         {
            §%!,§ = false;
            if(§2d§.§8e§)
            {
               §2d§.§8e§.isPaused = false;
            }
            if(§2d§.§0A§)
            {
               §2d§.§0A§.§[8§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §%!,§;
      }
      
      public static function init(param1:§`_§, param2:int, param3:int) : void
      {
         §&9§ = param1;
         §!!P§ = param2;
         §9!8§ = param3;
         §'!X§ = new §'!C§(true,param1.canvas);
      }
      
      public static function §>O§(param1:XML, param2:XML) : void
      {
         §]!%§.§>O§(param1,param2);
      }
      
      public static function §=!R§(param1:§9!P§, param2:Array, param3:Function = null) : void
      {
         § !8§.§=!R§(param1,param2,param3);
      }
      
      public static function §get §(param1:§74§) : void
      {
         § !8§.init(param1);
      }
      
      public static function §1!V§(param1:§^!@§) : void
      {
         §'§ = param1;
         § !8§.§1!V§(param1);
      }
      
      public static function get §6!L§() : §^!@§
      {
         return §'§;
      }
      
      public static function §'!6§(param1:Boolean) : void
      {
         §>!`§ = param1;
         § !8§.background.§'!6§(param1);
      }
      
      public static function §;B§() : Boolean
      {
         return §>!`§;
      }
      
      public static function §7q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§2d§.§0A§)
         {
            §2d§.§0A§.§?!>§ = new Rectangle(param1,param2,param3,param4);
            §2d§.§0A§.setCanvasSize(param3,param4);
         }
         §4!#§ = Math.min(param3 / §!!P§,param4 / §9!8§);
         §0!D§ = param3 / §!!P§;
         §@H§ = param4 / §9!8§;
         § !8§.§-!J§(param3,param4);
      }
   }
}
