package §`#@§
{
   import §&m§.§#U§;
   import §'!j§.Starling;
   import §,"v§.§7!J§;
   import §1#v§.§]T§;
   import §4§.§="r§;
   import §;$<§.§2#$§;
   import §>2§.§!6§;
   import flash.geom.Rectangle;
   
   public class §7n§
   {
      
      public static var §1!Q§:int = 0;
      
      public static var §##3§:int = 0;
      
      public static var §6#K§:§!6§;
      
      public static var §9";§:§]T§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §9#5§:§7n§ = null;
      
      public static var §-$<§:§#U§;
      
      public static var §0=§:Boolean = true;
      
      public static var §0$E§:Number = 1;
      
      public static var §9#o§:Number = 1;
      
      public static var §'#M§:Number = 1;
      
      private static var §0#2§:§="r§ = null;
      
      private static var §@s§:Boolean = false;
       
      
      public function §7n§()
      {
         super();
      }
      
      public static function §]!M§() : Number
      {
         return §1!Q§ * §9#o§;
      }
      
      public static function §8j§() : Number
      {
         return §##3§ * §'#M§;
      }
      
      public static function pause() : void
      {
         if(!§@s§)
         {
            §@s§ = true;
            if(Starling.§@!T§)
            {
               Starling.§@!T§.isPaused = true;
            }
            if(Starling.§>x§)
            {
               Starling.§>x§.§%$@§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§@s§)
         {
            §@s§ = false;
            if(Starling.§@!T§)
            {
               Starling.§@!T§.isPaused = false;
            }
            if(Starling.§>x§)
            {
               Starling.§>x§.§%$@§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@s§;
      }
      
      public static function init(param1:§#U§, param2:int, param3:int) : void
      {
         §-$<§ = param1;
         §1!Q§ = param2;
         §##3§ = param3;
         §9";§ = new §]T§(true,param1.canvas);
      }
      
      public static function § "C§(param1:§2#$§, param2:Function = null) : void
      {
         §6#K§.§ "C§(param1,param2);
      }
      
      public static function §["`§(param1:§2#$§, param2:Array, param3:Function = null) : void
      {
         §6#K§.§["`§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§7!J§) : void
      {
         §6#K§.init(param1);
      }
      
      public static function setController(param1:§="r§) : void
      {
         §0#2§ = param1;
         §6#K§.setController(param1);
      }
      
      public static function get § "'§() : §="r§
      {
         return §0#2§;
      }
      
      public static function §4#P§(param1:Boolean) : void
      {
         §0=§ = param1;
         §6#K§.background.§4#P§(param1);
      }
      
      public static function §?$5§() : Boolean
      {
         return §0=§;
      }
      
      public static function §1"[§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §0$E§ = Math.min(param3 / §1!Q§,param4 / §##3§);
         §9#o§ = param3 / §1!Q§;
         §'#M§ = param4 / §##3§;
         Starling.§1#t§ = §9#o§ > §'#M§;
         if(param5)
         {
            §0$E§ = 1;
            §9#o§ = 1;
            §'#M§ = 1;
            Starling.§8"+§ = true;
         }
         Starling.§?2§ = new Rectangle(param1,param2,param3,param4);
         §6#K§.§<#Q§(param3,param4,§9#o§,§'#M§);
      }
   }
}
