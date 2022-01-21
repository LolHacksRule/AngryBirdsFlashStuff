package §#M§
{
   import §"!g§.§2Z§;
   import §5%§.§?!Q§;
   import §7_§.§]![§;
   import §8<§.§+!n§;
   import §<L§.§!!G§;
   import §=!K§.§do§;
   import §?!'§.§[!S§;
   import §?6§.§ 6§;
   import flash.geom.Rectangle;
   
   public class §+!Z§
   {
      
      public static var §]?§:int = 0;
      
      public static var §@+§:int = 0;
      
      public static var §?!<§:§!!G§;
      
      public static var §8!B§:§+!n§;
      
      public static var §`0§:Boolean = false;
      
      public static var §`!g§:§+!Z§ = null;
      
      public static var §6"§:§?!Q§;
      
      public static var §3T§:Boolean = true;
      
      public static var §>§:Number = 1;
      
      public static var §9!E§:Number = 1;
      
      public static var §4!k§:Number = 1;
      
      private static var §3!N§:§2Z§ = null;
      
      private static var §>%§:Boolean = false;
       
      
      public function §+!Z§()
      {
         super();
      }
      
      public static function §&!+§() : Number
      {
         return §]?§ * §9!E§;
      }
      
      public static function §"!$§() : Number
      {
         return §@+§ * §4!k§;
      }
      
      public static function §2!§() : void
      {
         if(!§>%§)
         {
            §>%§ = true;
            if(§do§.§]X§)
            {
               §do§.§]X§.isPaused = true;
            }
            if(§do§.§4!G§)
            {
               §do§.§4!G§.§-9§(false);
            }
         }
      }
      
      public static function §6d§() : void
      {
         if(§>%§)
         {
            §>%§ = false;
            if(§do§.§]X§)
            {
               §do§.§]X§.isPaused = false;
            }
            if(§do§.§4!G§)
            {
               §do§.§4!G§.§-9§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §>%§;
      }
      
      public static function init(param1:§?!Q§, param2:int, param3:int) : void
      {
         §6"§ = param1;
         §]?§ = param2;
         §@+§ = param3;
         §8!B§ = new §+!n§(true,param1.canvas);
      }
      
      public static function §6j§(param1:XML, param2:XML) : void
      {
         §[!S§.§6j§(param1,param2);
      }
      
      public static function §9!i§(param1:§ 6§, param2:Array, param3:Function = null) : void
      {
         §?!<§.§9!i§(param1,param2,param3);
      }
      
      public static function §^N§(param1:§]![§) : void
      {
         §?!<§.init(param1);
      }
      
      public static function setController(param1:§2Z§) : void
      {
         §3!N§ = param1;
         §?!<§.setController(param1);
      }
      
      public static function get §8j§() : §2Z§
      {
         return §3!N§;
      }
      
      public static function §%S§(param1:Boolean) : void
      {
         §3T§ = param1;
         §?!<§.background.§%S§(param1);
      }
      
      public static function §@!U§() : Boolean
      {
         return §3T§;
      }
      
      public static function §-V§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§do§.§4!G§)
         {
            §do§.§4!G§.§,w§ = new Rectangle(param1,param2,param3,param4);
            §do§.§4!G§.setCanvasSize(param3,param4);
         }
         §>§ = Math.min(param3 / §]?§,param4 / §@+§);
         §9!E§ = param3 / §]?§;
         §4!k§ = param4 / §@+§;
         §?!<§.§8!6§(param3,param4);
      }
   }
}
