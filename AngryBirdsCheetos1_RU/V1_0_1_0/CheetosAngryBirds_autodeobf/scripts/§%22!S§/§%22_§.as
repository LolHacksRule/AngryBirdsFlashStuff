package §"!S§
{
   import §!!V§.§&I§;
   import §"4§.§<h§;
   import §%t§.§;P§;
   import §-D§.§[h§;
   import §5!$§.§"!I§;
   import §7k§.§#>§;
   import §>8§.§#%§;
   import §@z§.§%>§;
   import flash.geom.Rectangle;
   
   public class §"_§
   {
      
      public static var §]!`§:int = 0;
      
      public static var §-$§:int = 0;
      
      public static var §+!^§:§&I§;
      
      public static var §&!K§:§;P§;
      
      public static var §6!-§:Boolean = false;
      
      public static var §#H§:§"_§ = null;
      
      public static var §[!P§:§%>§;
      
      public static var §6D§:Boolean = true;
      
      public static var §6!J§:Number = 1;
      
      public static var §5[§:Number = 1;
      
      public static var §5o§:Number = 1;
      
      private static var §!!$§:§[h§ = null;
      
      private static var §@N§:Boolean = false;
       
      
      public function §"_§()
      {
         super();
      }
      
      public static function §&!§() : Number
      {
         return §]!`§ * §5[§;
      }
      
      public static function §>I§() : Number
      {
         return §-$§ * §5o§;
      }
      
      public static function §5q§() : void
      {
         if(!§@N§)
         {
            §@N§ = true;
            if(§<h§.§4!J§)
            {
               §<h§.§4!J§.isPaused = true;
            }
            if(§<h§.§%!]§)
            {
               §<h§.§%!]§.§^O§(false);
            }
         }
      }
      
      public static function §@A§() : void
      {
         if(§@N§)
         {
            §@N§ = false;
            if(§<h§.§4!J§)
            {
               §<h§.§4!J§.isPaused = false;
            }
            if(§<h§.§%!]§)
            {
               §<h§.§%!]§.§^O§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@N§;
      }
      
      public static function init(param1:§%>§, param2:int, param3:int) : void
      {
         §[!P§ = param1;
         §]!`§ = param2;
         §-$§ = param3;
         §&!K§ = new §;P§(true,param1.canvas);
      }
      
      public static function §@n§(param1:XML, param2:XML) : void
      {
         §"!I§.§@n§(param1,param2);
      }
      
      public static function §?G§(param1:§#>§, param2:Array, param3:Function = null) : void
      {
         §+!^§.§?G§(param1,param2,param3);
      }
      
      public static function §7T§(param1:§#%§) : void
      {
         §+!^§.init(param1);
      }
      
      public static function §>!'§(param1:§[h§) : void
      {
         §!!$§ = param1;
         §+!^§.§>!'§(param1);
      }
      
      public static function get §,z§() : §[h§
      {
         return §!!$§;
      }
      
      public static function §,T§(param1:Boolean) : void
      {
         §6D§ = param1;
         §+!^§.background.§,T§(param1);
      }
      
      public static function §!<§() : Boolean
      {
         return §6D§;
      }
      
      public static function §#F§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.§-!M§ = new Rectangle(param1,param2,param3,param4);
            §<h§.§%!]§.setCanvasSize(param3,param4);
         }
         §6!J§ = Math.min(param3 / §]!`§,param4 / §-$§);
         §5[§ = param3 / §]!`§;
         §5o§ = param4 / §-$§;
         §+!^§.§>V§(param3,param4);
      }
   }
}
