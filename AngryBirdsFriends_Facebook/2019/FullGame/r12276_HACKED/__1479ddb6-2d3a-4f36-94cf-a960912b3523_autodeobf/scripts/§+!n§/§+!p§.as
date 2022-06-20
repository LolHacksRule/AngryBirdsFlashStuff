package §+!n§
{
   import §#"3§.§3#u§;
   import §&§.Starling;
   import §&1§.§4""§;
   import §0!>§.§^$D§;
   import §?$#§.§<d§;
   import §?o§.§ ^§;
   import §[!&§.§6!Z§;
   import flash.geom.Rectangle;
   
   public class §+!p§
   {
      
      public static var §2"?§:int = 0;
      
      public static var §%!"§:int = 0;
      
      public static var §`?§:§<d§;
      
      public static var §[#I§:§3#u§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §#!e§:§+!p§ = null;
      
      public static var §;"-§:§4""§;
      
      public static var §3"f§:Boolean = true;
      
      public static var §?#_§:Number = 1;
      
      public static var §<#,§:Number = 1;
      
      public static var §"#m§:Number = 1;
      
      private static var §"#l§:§^$D§ = null;
      
      private static var §8!;§:Boolean = false;
       
      
      public function §+!p§()
      {
         super();
      }
      
      public static function §+#L§() : Number
      {
         return §2"?§ * §<#,§;
      }
      
      public static function §[#%§() : Number
      {
         return §%!"§ * §"#m§;
      }
      
      public static function pause() : void
      {
         if(!§8!;§)
         {
            §8!;§ = true;
            if(Starling.§`"E§)
            {
               Starling.§`"E§.isPaused = true;
            }
            if(Starling.§%!q§)
            {
               Starling.§%!q§.§7#F§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§8!;§)
         {
            §8!;§ = false;
            if(Starling.§`"E§)
            {
               Starling.§`"E§.isPaused = false;
            }
            if(Starling.§%!q§)
            {
               Starling.§%!q§.§7#F§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §8!;§;
      }
      
      public static function init(param1:§4""§, param2:int, param3:int) : void
      {
         §;"-§ = param1;
         §2"?§ = param2;
         §%!"§ = param3;
         §[#I§ = new §3#u§(true,param1.canvas);
      }
      
      public static function §2"^§(param1:§6!Z§, param2:Function = null) : void
      {
         §`?§.§2"^§(param1,param2);
      }
      
      public static function §@V§(param1:§6!Z§, param2:Array, param3:Function = null) : void
      {
         §`?§.§@V§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§ ^§) : void
      {
         §`?§.init(param1);
      }
      
      public static function setController(param1:§^$D§) : void
      {
         §"#l§ = param1;
         §`?§.setController(param1);
      }
      
      public static function get §-#W§() : §^$D§
      {
         return §"#l§;
      }
      
      public static function §1#5§(param1:Boolean) : void
      {
         §3"f§ = param1;
         §`?§.background.§1#5§(param1);
      }
      
      public static function §'$,§() : Boolean
      {
         return §3"f§;
      }
      
      public static function §"E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §?#_§ = Math.min(param3 / §2"?§,param4 / §%!"§);
         §<#,§ = param3 / §2"?§;
         §"#m§ = param4 / §%!"§;
         Starling.§4"T§ = §<#,§ > §"#m§;
         if(param5)
         {
            §?#_§ = 1;
            §<#,§ = 1;
            §"#m§ = 1;
            Starling.§5"^§ = true;
         }
         Starling.§7_§ = new Rectangle(param1,param2,param3,param4);
         §`?§.§2k§(param3,param4,§<#,§,§"#m§);
      }
   }
}
