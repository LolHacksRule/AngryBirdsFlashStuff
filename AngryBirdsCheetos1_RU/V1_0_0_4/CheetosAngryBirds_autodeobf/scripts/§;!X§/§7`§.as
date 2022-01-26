package §;!X§
{
   import §#!O§.§0P§;
   import §,h§.§%! §;
   import §5x§.§]R§;
   import §7!0§.§`g§;
   import §7z§.§]!-§;
   import §=q§.§?X§;
   import §^!&§.§4u§;
   import §`M§.§'C§;
   import flash.geom.Rectangle;
   
   public class §7`§
   {
      
      public static var §1=§:int = 0;
      
      public static var §@!#§:int = 0;
      
      public static var §2'§:§]!-§;
      
      public static var §#x§:§4u§;
      
      public static var §4!-§:Boolean = false;
      
      public static var §9$§:§7`§ = null;
      
      public static var §7!A§:§%! §;
      
      public static var §6!-§:Boolean = true;
      
      public static var §!q§:Number = 1;
      
      public static var §%u§:Number = 1;
      
      public static var §4h§:Number = 1;
      
      private static var §3W§:§0P§ = null;
      
      private static var §6!D§:Boolean = false;
       
      
      public function §7`§()
      {
         super();
      }
      
      public static function §#!8§() : Number
      {
         return §1=§ * §%u§;
      }
      
      public static function § p§() : Number
      {
         return §@!#§ * §4h§;
      }
      
      public static function §,-§() : void
      {
         if(!§6!D§)
         {
            §6!D§ = true;
            if(§'C§.§&=§)
            {
               §'C§.§&=§.isPaused = true;
            }
            if(§'C§.§3b§)
            {
               §'C§.§3b§.§'r§(false);
            }
         }
      }
      
      public static function §,!V§() : void
      {
         if(§6!D§)
         {
            §6!D§ = false;
            if(§'C§.§&=§)
            {
               §'C§.§&=§.isPaused = false;
            }
            if(§'C§.§3b§)
            {
               §'C§.§3b§.§'r§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §6!D§;
      }
      
      public static function init(param1:§%! §, param2:int, param3:int) : void
      {
         §7!A§ = param1;
         §1=§ = param2;
         §@!#§ = param3;
         §#x§ = new §4u§(true,param1.canvas);
      }
      
      public static function §[!W§(param1:XML, param2:XML) : void
      {
         §]R§.§[!W§(param1,param2);
      }
      
      public static function §0o§(param1:§`g§, param2:Array, param3:Function = null) : void
      {
         §2'§.§0o§(param1,param2,param3);
      }
      
      public static function §4b§(param1:§?X§) : void
      {
         §2'§.init(param1);
      }
      
      public static function §9Z§(param1:§0P§) : void
      {
         §3W§ = param1;
         §2'§.§9Z§(param1);
      }
      
      public static function get §`P§() : §0P§
      {
         return §3W§;
      }
      
      public static function §0!&§(param1:Boolean) : void
      {
         §6!-§ = param1;
         §2'§.background.§0!&§(param1);
      }
      
      public static function §+x§() : Boolean
      {
         return §6!-§;
      }
      
      public static function §,!6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§'C§.§3b§)
         {
            §'C§.§3b§.§1O§ = new Rectangle(param1,param2,param3,param4);
            §'C§.§3b§.setCanvasSize(param3,param4);
         }
         §!q§ = Math.min(param3 / §1=§,param4 / §@!#§);
         §%u§ = param3 / §1=§;
         §4h§ = param4 / §@!#§;
         §2'§.§1P§(param3,param4);
      }
   }
}
