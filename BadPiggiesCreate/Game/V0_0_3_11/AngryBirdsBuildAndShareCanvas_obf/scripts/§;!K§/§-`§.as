package §;!K§
{
   import §'!D§.§5&§;
   import §'!D§.§9!;§;
   import §-1§.§?+§;
   import §1&§.§!!W§;
   import §1&§.§!;§;
   import §1&§.§+"5§;
   import §1&§.§1"#§;
   import §4"4§.§!!c§;
   import §4"4§.§-!G§;
   import §4s§.§!8§;
   import §4s§.§0s§;
   import §4s§.§>P§;
   import §6g§.§'"5§;
   import §6g§.§for §;
   import §7!N§.§]!U§;
   import §8!X§.§7'§;
   import §9H§.§ y§;
   import §9H§.§-"2§;
   import §=!N§.§,!r§;
   import §=!N§.§<!=§;
   import §=H§.§,W§;
   import §@D§.§,!,§;
   import §@D§.§89§;
   import §@D§.§@t§;
   import §break§.§+m§;
   import §break§.§7!s§;
   import §break§.§;t§;
   import §break§.§<!E§;
   import §break§.§<"'§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §-`§
   {
      
      private static var §#!q§:§]!U§ = new §]!U§();
      
      private static var §>_§:§<!=§ = new §<!=§(§#!q§);
      
      private static var §="5§:§7'§ = new §,W§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §="5§.start();
         §,!r§.§=f§(§#!q§);
         § y§.§=f§(§#!q§);
         §-"2§.§=f§(§#!q§);
         §?+§.§=f§(§#!q§);
      }
      
      public function §-`§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §>P§
      {
         return new §@t§(§="5§,param1,param2);
      }
      
      public static function § !&§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §>P§
      {
         return new §,!,§(§="5§,param1,param2,param3,param4,param5);
      }
      
      public static function §0!o§(... rest) : §!8§
      {
         return §-6§(rest);
      }
      
      public static function scale(param1:§>P§, param2:Number) : §>P§
      {
         return new §+m§(param1 as §!!W§,param2);
      }
      
      public static function §-6§(param1:Array) : §!8§
      {
         return new §5&§(param1,§="5§,0);
      }
      
      public static function §<#§(param1:Object, param2:Object, param3:Object = null, param4:§-!G§ = null) : §0s§
      {
         var _loc5_:§1"#§;
         (_loc5_ = new §1"#§(§="5§)).§""+§ = §>_§.§4"9§(param1,param2,param3,param4 || §for §.§7"7§());
         return _loc5_;
      }
      
      public static function §8!h§(param1:DisplayObject) : §>P§
      {
         return new §89§(§="5§,param1);
      }
      
      public static function slice(param1:§>P§, param2:Number, param3:Number, param4:Boolean = false) : §>P§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §<!E§(new §7!s§(param1 as §!!W§,param3,param2),0);
         }
         return new §7!s§(param1 as §!!W§,param2,param3);
      }
      
      public static function repeat(param1:§>P§, param2:uint) : §>P§
      {
         return new §;t§(param1 as §!!W§,param2);
      }
      
      public static function §2!E§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§-!G§ = null) : void
      {
         var _loc6_:§1"#§;
         (_loc6_ = new §1"#§(§="5§)).§""+§ = §>_§.§4"9§(param1,param2,param3,param5 || §for §.§7"7§());
         _loc6_.update(param4);
      }
      
      public static function §?!g§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§!!c§ = null) : §0s§
      {
         var _loc7_:§+"5§;
         (_loc7_ = new §+"5§(§="5§)).§""+§ = §>_§.§%!t§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§2!U§ = param6 || §'"5§.§`^§;
         return _loc7_;
      }
      
      public static function §3=§(param1:Object, param2:Object, param3:§-!G§ = null) : §0s§
      {
         var _loc4_:§1"#§;
         (_loc4_ = new §1"#§(§="5§)).§""+§ = §>_§.§4"9§(param1,null,param2,param3 || §for §.§7"7§());
         return _loc4_;
      }
      
      public static function delay(param1:§>P§, param2:Number, param3:Number = 0.0) : §>P§
      {
         return new §<"'§(param1 as §!!W§,param2,param3);
      }
      
      public static function reverse(param1:§>P§, param2:Boolean = true) : §>P§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §<!E§)
         {
            return new §!;§((param1 as §<!E§).§`"§,_loc3_);
         }
         if((param1 as Object).constructor == §!;§)
         {
            param1 = (param1 as §!;§).§`"§;
         }
         return new §<!E§(param1 as §!!W§,_loc3_);
      }
      
      public static function §"!E§(param1:Object, param2:Object, param3:Number = 1.0, param4:§!!c§ = null) : §0s§
      {
         var _loc5_:§+"5§;
         (_loc5_ = new §+"5§(§="5§)).§""+§ = §>_§.§'F§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§2!U§ = param4 || §'"5§.§`^§;
         return _loc5_;
      }
      
      public static function §4!E§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§!!c§ = null) : §0s§
      {
         var _loc6_:§+"5§;
         (_loc6_ = new §+"5§(§="5§)).§""+§ = §>_§.§'F§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§2!U§ = param5 || §'"5§.§`^§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§!!c§ = null) : void
      {
         var _loc7_:§+"5§;
         (_loc7_ = new §+"5§(§="5§)).§""+§ = §>_§.§'F§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§2!U§ = param6 || §'"5§.§`^§;
         _loc7_.update(param5);
      }
      
      public static function §import§(param1:Object, param2:Object, param3:§-!G§ = null) : §0s§
      {
         var _loc4_:§1"#§;
         (_loc4_ = new §1"#§(§="5§)).§""+§ = §>_§.§4"9§(param1,param2,null,param3 || §for §.§7"7§());
         return _loc4_;
      }
      
      public static function §?!Z§(... rest) : §!8§
      {
         return §`R§(rest);
      }
      
      public static function §,y§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§!!c§ = null) : §0s§
      {
         var _loc6_:§+"5§;
         (_loc6_ = new §+"5§(§="5§)).§""+§ = §>_§.§%!t§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§2!U§ = param5 || §'"5§.§`^§;
         return _loc6_;
      }
      
      public static function §#"0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§!!c§ = null) : §0s§
      {
         var _loc6_:§+"5§;
         (_loc6_ = new §+"5§(§="5§)).§""+§ = §>_§.§%!t§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§2!U§ = param5 || §'"5§.§`^§;
         return _loc6_;
      }
      
      public static function §"!%§(param1:Object, param2:Object, param3:Number = 1.0, param4:§!!c§ = null) : §0s§
      {
         var _loc5_:§+"5§;
         (_loc5_ = new §+"5§(§="5§)).§""+§ = §>_§.§'F§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§2!U§ = param4 || §'"5§.§`^§;
         return _loc5_;
      }
      
      public static function §`R§(param1:Array) : §!8§
      {
         return new §9!;§(param1,§="5§,0);
      }
   }
}
