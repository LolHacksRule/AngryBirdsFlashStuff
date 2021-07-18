package §?§#8
{
   import §!x§.§`"L§;
   import §#v§.§-"R§;
   import §'z§.§]!T§;
   import §+#m§.§^#j§;
   import §52§.§#!,§;
   import §<!'§.§ "6§;
   import §^a§.Starling;
   import flash.geom.Rectangle;
   
   public class §>"$§
   {
      
      public static var § "+§:int = 0;
      
      public static var §&#-§:int = 0;
      
      public static var §3#'§:§#!,§;
      
      public static var §]#J§:§`"L§;
      
      public static var DEBUG_MODE_ENABLED:Boolean = false;
      
      public static var §+r§:§>"$§ = null;
      
      public static var §<_§:§ "6§;
      
      public static var §`"]§:Boolean = true;
      
      public static var §9h§:Number = 1;
      
      public static var §;!m§:Number = 1;
      
      public static var §`G§:Number = 1;
      
      private static var § "[§:§]!T§ = null;
      
      private static var §>$2§:Boolean = false;
       
      
      public function §>"$§()
      {
         super();
      }
      
      public static function §="§() : Number
      {
         return § "+§ * §;!m§;
      }
      
      public static function §@!F§() : Number
      {
         return §&#-§ * §`G§;
      }
      
      public static function pause() : void
      {
         if(!§>$2§)
         {
            §>$2§ = true;
            if(Starling.§6!h§)
            {
               Starling.§6!h§.isPaused = true;
            }
            if(Starling.§<#`§)
            {
               Starling.§<#`§.§`"x§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§>$2§)
         {
            §>$2§ = false;
            if(Starling.§6!h§)
            {
               Starling.§6!h§.isPaused = false;
            }
            if(Starling.§<#`§)
            {
               Starling.§<#`§.§`"x§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §>$2§;
      }
      
      public static function init(param1:§ "6§, param2:int, param3:int) : void
      {
         §<_§ = param1;
         § "+§ = param2;
         §&#-§ = param3;
         §]#J§ = new §`"L§(true,param1.canvas);
      }
      
      public static function §;#3§(param1:§^#j§, param2:Function = null) : void
      {
         §3#'§.§;#3§(param1,param2);
      }
      
      public static function §0"c§(param1:§^#j§, param2:Array, param3:Function = null) : void
      {
         §3#'§.§0"c§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§-"R§) : void
      {
         §3#'§.init(param1);
      }
      
      public static function setController(param1:§]!T§) : void
      {
         § "[§ = param1;
         §3#'§.setController(param1);
      }
      
      public static function get §#0§() : §]!T§
      {
         return § "[§;
      }
      
      public static function §,#K§(param1:Boolean) : void
      {
         §`"]§ = param1;
         §3#'§.background.§,#K§(param1);
      }
      
      public static function §-$5§() : Boolean
      {
         return §`"]§;
      }
      
      public static function §76§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §9h§ = Math.min(param3 / § "+§,param4 / §&#-§);
         §;!m§ = param3 / § "+§;
         §`G§ = param4 / §&#-§;
         Starling.§1$9§ = new Rectangle(param1,param2,param3,param4);
         Starling.§+#8§ = §;!m§ > §`G§;
         §3#'§.§,!L§(param3,param4,§;!m§,§`G§);
      }
   }
}
