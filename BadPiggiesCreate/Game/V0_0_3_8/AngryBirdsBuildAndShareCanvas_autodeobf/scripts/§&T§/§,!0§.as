package §&T§
{
   import § !L§.§"+§;
   import § !L§.§4f§;
   import § 6§.§5`§;
   import § 6§.§6"2§;
   import §'!R§.§%!z§;
   import §1!f§.§!!0§;
   import §1!f§.§0"!§;
   import §1!f§.§0>§;
   import §1!f§.§4!A§;
   import §1!f§.§]!&§;
   import §2n§.§^!7§;
   import §6P§.§!b§;
   import §6P§.§7!o§;
   import §6P§.§@o§;
   import §6P§.§in §;
   import §9!j§.§'"#§;
   import §9g§.§-f§;
   import §9g§.§?"§;
   import §<=§.§'!a§;
   import §<=§.§8E§;
   import §>O§.§7!u§;
   import §>O§.§>!u§;
   import §]+§.§"G§;
   import §^!G§.§+#§;
   import §^!G§.§,,§;
   import §^!G§.§[!r§;
   import §`"5§.§ !J§;
   import §`"5§.§9o§;
   import §`"5§.§;5§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §,!0§
   {
      
      private static var §^"§:§'"#§ = new §'"#§();
      
      private static var §7'§:§>!u§ = new §>!u§(§^"§);
      
      private static var §;v§:§"G§ = new §^!7§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §;v§.start();
         §7!u§.§"!%§(§^"§);
         §5`§.§"!%§(§^"§);
         §6"2§.§"!%§(§^"§);
         §%!z§.§"!%§(§^"§);
      }
      
      public function §,!0§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : § !J§
      {
         return new §,,§(§;v§,param1,param2);
      }
      
      public static function §3o§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : § !J§
      {
         return new §+#§(§;v§,param1,param2,param3,param4,param5);
      }
      
      public static function §?!z§(... rest) : §9o§
      {
         return §7"$§(rest);
      }
      
      public static function scale(param1:§ !J§, param2:Number) : § !J§
      {
         return new §]!&§(param1 as §!b§,param2);
      }
      
      public static function §7"$§(param1:Array) : §9o§
      {
         return new §8E§(param1,§;v§,0);
      }
      
      public static function §1^§(param1:Object, param2:Object, param3:Object = null, param4:§-f§ = null) : §;5§
      {
         var _loc5_:§7!o§;
         (_loc5_ = new §7!o§(§;v§)).§8k§ = §7'§.§5!`§(param1,param2,param3,param4 || §"+§.§1s§());
         return _loc5_;
      }
      
      public static function §[o§(param1:DisplayObject) : § !J§
      {
         return new §[!r§(§;v§,param1);
      }
      
      public static function slice(param1:§ !J§, param2:Number, param3:Number, param4:Boolean = false) : § !J§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §!!0§(new §0"!§(param1 as §!b§,param3,param2),0);
         }
         return new §0"!§(param1 as §!b§,param2,param3);
      }
      
      public static function repeat(param1:§ !J§, param2:uint) : § !J§
      {
         return new §4!A§(param1 as §!b§,param2);
      }
      
      public static function §5"0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§-f§ = null) : void
      {
         var _loc6_:§7!o§;
         (_loc6_ = new §7!o§(§;v§)).§8k§ = §7'§.§5!`§(param1,param2,param3,param5 || §"+§.§1s§());
         _loc6_.update(param4);
      }
      
      public static function §67§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§?"§ = null) : §;5§
      {
         var _loc7_:§in §;
         (_loc7_ = new §in §(§;v§)).§8k§ = §7'§.§?!'§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§7!V§ = param6 || §4f§.§6L§;
         return _loc7_;
      }
      
      public static function §7!^§(param1:Object, param2:Object, param3:§-f§ = null) : §;5§
      {
         var _loc4_:§7!o§;
         (_loc4_ = new §7!o§(§;v§)).§8k§ = §7'§.§5!`§(param1,null,param2,param3 || §"+§.§1s§());
         return _loc4_;
      }
      
      public static function delay(param1:§ !J§, param2:Number, param3:Number = 0.0) : § !J§
      {
         return new §0>§(param1 as §!b§,param2,param3);
      }
      
      public static function reverse(param1:§ !J§, param2:Boolean = true) : § !J§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §!!0§)
         {
            return new §@o§((param1 as §!!0§).§@!-§,_loc3_);
         }
         if((param1 as Object).constructor == §@o§)
         {
            param1 = (param1 as §@o§).§@!-§;
         }
         return new §!!0§(param1 as §!b§,_loc3_);
      }
      
      public static function §%7§(param1:Object, param2:Object, param3:Number = 1.0, param4:§?"§ = null) : §;5§
      {
         var _loc5_:§in §;
         (_loc5_ = new §in §(§;v§)).§8k§ = §7'§.§4Y§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§7!V§ = param4 || §4f§.§6L§;
         return _loc5_;
      }
      
      public static function §#t§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§?"§ = null) : §;5§
      {
         var _loc6_:§in §;
         (_loc6_ = new §in §(§;v§)).§8k§ = §7'§.§4Y§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§7!V§ = param5 || §4f§.§6L§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§?"§ = null) : void
      {
         var _loc7_:§in §;
         (_loc7_ = new §in §(§;v§)).§8k§ = §7'§.§4Y§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§7!V§ = param6 || §4f§.§6L§;
         _loc7_.update(param5);
      }
      
      public static function §+!C§(param1:Object, param2:Object, param3:§-f§ = null) : §;5§
      {
         var _loc4_:§7!o§;
         (_loc4_ = new §7!o§(§;v§)).§8k§ = §7'§.§5!`§(param1,param2,null,param3 || §"+§.§1s§());
         return _loc4_;
      }
      
      public static function §4X§(... rest) : §9o§
      {
         return §5s§(rest);
      }
      
      public static function §1&§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§?"§ = null) : §;5§
      {
         var _loc6_:§in §;
         (_loc6_ = new §in §(§;v§)).§8k§ = §7'§.§?!'§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§7!V§ = param5 || §4f§.§6L§;
         return _loc6_;
      }
      
      public static function §2!=§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§?"§ = null) : §;5§
      {
         var _loc6_:§in §;
         (_loc6_ = new §in §(§;v§)).§8k§ = §7'§.§?!'§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§7!V§ = param5 || §4f§.§6L§;
         return _loc6_;
      }
      
      public static function §&!3§(param1:Object, param2:Object, param3:Number = 1.0, param4:§?"§ = null) : §;5§
      {
         var _loc5_:§in §;
         (_loc5_ = new §in §(§;v§)).§8k§ = §7'§.§4Y§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§7!V§ = param4 || §4f§.§6L§;
         return _loc5_;
      }
      
      public static function §5s§(param1:Array) : §9o§
      {
         return new §'!a§(param1,§;v§,0);
      }
   }
}
