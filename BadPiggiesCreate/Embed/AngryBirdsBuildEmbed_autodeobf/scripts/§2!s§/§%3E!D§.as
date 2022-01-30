package §2!s§
{
   import §%=§.§1!H§;
   import §%=§.§2_§;
   import §%=§.§`k§;
   import §-u§.DisplayObjectUpdater;
   import §-u§.MovieClipUpdater;
   import §1O§.§59§;
   import §3§.§3!T§;
   import §3§.§?!>§;
   import §4!7§.§%!m§;
   import §4!r§.§7R§;
   import §4!r§.§[!m§;
   import §64§.§ 3§;
   import §64§.§%r§;
   import §64§.§6!D§;
   import §64§.§=!g§;
   import §64§.§@!m§;
   import §;!,§.§#>§;
   import §;!,§.§3!u§;
   import §;!,§.§;!p§;
   import §;!,§.§=!I§;
   import §;0§.§@!E§;
   import §?!4§.§=Y§;
   import §?!4§.§@!b§;
   import §?!4§.§^4§;
   import §]s§.§&[§;
   import §^g§.§@!'§;
   import §^g§.§`X§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import §true §.§0F§;
   import §true §.§@q§;
   
   public class §>!D§
   {
      
      private static var §;$§:§&[§ = new §&[§();
      
      private static var § 7§:§3!T§ = new §3!T§(§;$§);
      
      private static var §5!§:§%!m§ = new §59§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §5!§.start();
         §?!>§.§-V§(§;$§);
         DisplayObjectUpdater.§-V§(§;$§);
         MovieClipUpdater.§-V§(§;$§);
         §@!E§.§-V§(§;$§);
      }
      
      public function §>!D§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §=Y§
      {
         return new §1!H§(§5!§,param1,param2);
      }
      
      public static function §8!s§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §=Y§
      {
         return new §`k§(§5!§,param1,param2,param3,param4,param5);
      }
      
      public static function §+a§(... rest) : §^4§
      {
         return §]"§(rest);
      }
      
      public static function scale(param1:§=Y§, param2:Number) : §=Y§
      {
         return new §=!g§(param1 as §#>§,param2);
      }
      
      public static function §]"§(param1:Array) : §^4§
      {
         return new §@q§(param1,§5!§,0);
      }
      
      public static function §2i§(param1:Object, param2:Object, param3:Object = null, param4:§[!m§ = null) : §@!b§
      {
         var _loc5_:§;!p§;
         (_loc5_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,param2,param3,param4 || §@!'§.§7<§());
         return _loc5_;
      }
      
      public static function §`!9§(param1:DisplayObject) : §=Y§
      {
         return new §2_§(§5!§,param1);
      }
      
      public static function slice(param1:§=Y§, param2:Number, param3:Number, param4:Boolean = false) : §=Y§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §6!D§(new §@!m§(param1 as §#>§,param3,param2),0);
         }
         return new §@!m§(param1 as §#>§,param2,param3);
      }
      
      public static function repeat(param1:§=Y§, param2:uint) : §=Y§
      {
         return new § 3§(param1 as §#>§,param2);
      }
      
      public static function §?L§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§[!m§ = null) : void
      {
         var _loc6_:§;!p§;
         (_loc6_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,param2,param3,param5 || §@!'§.§7<§());
         _loc6_.update(param4);
      }
      
      public static function §4!U§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§7R§ = null) : §@!b§
      {
         var _loc7_:§=!I§;
         (_loc7_ = new §=!I§(§5!§)).§`I§ = § 7§.§^`§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§-;§ = param6 || §`X§.§!!G§;
         return _loc7_;
      }
      
      public static function §5y§(param1:Object, param2:Object, param3:§[!m§ = null) : §@!b§
      {
         var _loc4_:§;!p§;
         (_loc4_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,null,param2,param3 || §@!'§.§7<§());
         return _loc4_;
      }
      
      public static function delay(param1:§=Y§, param2:Number, param3:Number = 0.0) : §=Y§
      {
         return new §%r§(param1 as §#>§,param2,param3);
      }
      
      public static function reverse(param1:§=Y§, param2:Boolean = true) : §=Y§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §6!D§)
         {
            return new §3!u§((param1 as §6!D§).§-C§,_loc3_);
         }
         if((param1 as Object).constructor == §3!u§)
         {
            param1 = (param1 as §3!u§).§-C§;
         }
         return new §6!D§(param1 as §#>§,_loc3_);
      }
      
      public static function §9!j§(param1:Object, param2:Object, param3:Number = 1.0, param4:§7R§ = null) : §@!b§
      {
         var _loc5_:§=!I§;
         (_loc5_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§-;§ = param4 || §`X§.§!!G§;
         return _loc5_;
      }
      
      public static function §-8§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7R§ = null) : §@!b§
      {
         var _loc6_:§=!I§;
         (_loc6_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§-;§ = param5 || §`X§.§!!G§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§7R§ = null) : void
      {
         var _loc7_:§=!I§;
         (_loc7_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§-;§ = param6 || §`X§.§!!G§;
         _loc7_.update(param5);
      }
      
      public static function §3!+§(param1:Object, param2:Object, param3:§[!m§ = null) : §@!b§
      {
         var _loc4_:§;!p§;
         (_loc4_ = new §;!p§(§5!§)).§`I§ = § 7§.§!!U§(param1,param2,null,param3 || §@!'§.§7<§());
         return _loc4_;
      }
      
      public static function §^#§(... rest) : §^4§
      {
         return §0!S§(rest);
      }
      
      public static function §>+§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7R§ = null) : §@!b§
      {
         var _loc6_:§=!I§;
         (_loc6_ = new §=!I§(§5!§)).§`I§ = § 7§.§^`§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§-;§ = param5 || §`X§.§!!G§;
         return _loc6_;
      }
      
      public static function §?!Z§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7R§ = null) : §@!b§
      {
         var _loc6_:§=!I§;
         (_loc6_ = new §=!I§(§5!§)).§`I§ = § 7§.§^`§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§-;§ = param5 || §`X§.§!!G§;
         return _loc6_;
      }
      
      public static function §`!H§(param1:Object, param2:Object, param3:Number = 1.0, param4:§7R§ = null) : §@!b§
      {
         var _loc5_:§=!I§;
         (_loc5_ = new §=!I§(§5!§)).§`I§ = § 7§.§%!o§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§-;§ = param4 || §`X§.§!!G§;
         return _loc5_;
      }
      
      public static function §0!S§(param1:Array) : §^4§
      {
         return new §0F§(param1,§5!§,0);
      }
   }
}
