package §;#D§
{
   import §;$3§.§>f§;
   import §=#G§.§;3§;
   import §?"#§.§1!C§;
   import §?"e§.Starling;
   import §@0§.§%!q§;
   import §@l§.§6$9§;
   import §]!6§.§>!1§;
   import flash.geom.Rectangle;
   
   public class §3#U§
   {
      
      public static var §,g§:int = 0;
      
      public static var §2b§:int = 0;
      
      public static var §#$4§:§%!q§;
      
      public static var §8!_§:§>!1§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §2!D§:§3#U§ = null;
      
      public static var §9#^§:§6$9§;
      
      public static var §>"m§:Boolean = true;
      
      public static var §6"m§:Number = 1;
      
      public static var §<!K§:Number = 1;
      
      public static var §>!p§:Number = 1;
      
      private static var §>!D§:§;3§ = null;
      
      private static var §^#+§:Boolean = false;
       
      
      public function §3#U§()
      {
         super();
      }
      
      public static function §5j§() : Number
      {
         return §,g§ * §<!K§;
      }
      
      public static function §,$>§() : Number
      {
         return §2b§ * §>!p§;
      }
      
      public static function pause() : void
      {
         if(!§^#+§)
         {
            §^#+§ = true;
            if(Starling.§%!&§)
            {
               Starling.§%!&§.isPaused = true;
            }
            if(Starling.§@#K§)
            {
               Starling.§@#K§.§1"-§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§^#+§)
         {
            §^#+§ = false;
            if(Starling.§%!&§)
            {
               Starling.§%!&§.isPaused = false;
            }
            if(Starling.§@#K§)
            {
               Starling.§@#K§.§1"-§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §^#+§;
      }
      
      public static function init(param1:§6$9§, param2:int, param3:int) : void
      {
         §9#^§ = param1;
         §,g§ = param2;
         §2b§ = param3;
         §8!_§ = new §>!1§(true,param1.canvas);
      }
      
      public static function §'$-§(param1:§1!C§, param2:Function = null) : void
      {
         §#$4§.§'$-§(param1,param2);
      }
      
      public static function §^#j§(param1:§1!C§, param2:Array, param3:Function = null) : void
      {
         §#$4§.§^#j§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§>f§) : void
      {
         §#$4§.init(param1);
      }
      
      public static function setController(param1:§;3§) : void
      {
         §>!D§ = param1;
         §#$4§.setController(param1);
      }
      
      public static function get §8I§() : §;3§
      {
         return §>!D§;
      }
      
      public static function §-#p§(param1:Boolean) : void
      {
         §>"m§ = param1;
         §#$4§.background.§-#p§(param1);
      }
      
      public static function §3#=§() : Boolean
      {
         return §>"m§;
      }
      
      public static function §!#J§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §6"m§ = Math.min(param3 / §,g§,param4 / §2b§);
         §<!K§ = param3 / §,g§;
         §>!p§ = param4 / §2b§;
         Starling.§'!w§ = §<!K§ > §>!p§;
         if(param5)
         {
            §6"m§ = 1;
            §<!K§ = 1;
            §>!p§ = 1;
            Starling.§ !n§ = true;
         }
         Starling.§="$§ = new Rectangle(param1,param2,param3,param4);
         §#$4§.§&!1§(param3,param4,§<!K§,§>!p§);
      }
   }
}
