package §-y§
{
   import § w§.§"^§;
   import § w§.§]!u§;
   import § w§.§`@§;
   import §"E§.§&!h§;
   import §%!n§.§;!'§;
   import §&x§.§%p§;
   import §0§.§6!B§;
   import §0§.§`B§;
   import §0x§.§6z§;
   import §0x§.§?"3§;
   import §?"6§.§ !j§;
   import §@!e§.§!!>§;
   import §@!e§.§0"=§;
   import §]!-§.§&"@§;
   import §]!-§.§5C§;
   import §]6§.§+l§;
   import §]6§.§[f§;
   import §]6§.§`<§;
   import §]_§.§%!T§;
   import §]_§.§2I§;
   import §]_§.§8"5§;
   import §]_§.§=!X§;
   import §]_§.§^!B§;
   import §`!#§.§"!&§;
   import §`!#§.§1!B§;
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`4§.§#!]§;
   import §`4§.§&"$§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §]D§
   {
      
      private static var §9! §:§&!h§ = new §&!h§();
      
      private static var § ,§:§6!B§ = new §6!B§(§9! §);
      
      private static var §`!D§:§;!'§ = new § !j§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §`!D§.start();
         §`B§.§;-§(§9! §);
         §&"$§.§;-§(§9! §);
         §#!]§.§;-§(§9! §);
         §%p§.§;-§(§9! §);
      }
      
      public function §]D§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §[f§
      {
         return new §]!u§(§`!D§,param1,param2);
      }
      
      public static function §4<§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §[f§
      {
         return new §`@§(§`!D§,param1,param2,param3,param4,param5);
      }
      
      public static function §2!r§(... rest) : §`<§
      {
         return § !l§(rest);
      }
      
      public static function scale(param1:§[f§, param2:Number) : §[f§
      {
         return new §=!X§(param1 as §?f§,param2);
      }
      
      public static function § !l§(param1:Array) : §`<§
      {
         return new §!!>§(param1,§`!D§,0);
      }
      
      public static function §^!V§(param1:Object, param2:Object, param3:Object = null, param4:§?"3§ = null) : §+l§
      {
         var _loc5_:§1!B§;
         (_loc5_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,param2,param3,param4 || §5C§.§3Y§());
         return _loc5_;
      }
      
      public static function §?J§(param1:DisplayObject) : §[f§
      {
         return new §"^§(§`!D§,param1);
      }
      
      public static function slice(param1:§[f§, param2:Number, param3:Number, param4:Boolean = false) : §[f§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §2I§(new §8"5§(param1 as §?f§,param3,param2),0);
         }
         return new §8"5§(param1 as §?f§,param2,param3);
      }
      
      public static function repeat(param1:§[f§, param2:uint) : §[f§
      {
         return new §%!T§(param1 as §?f§,param2);
      }
      
      public static function §=!Q§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§?"3§ = null) : void
      {
         var _loc6_:§1!B§;
         (_loc6_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,param2,param3,param5 || §5C§.§3Y§());
         _loc6_.update(param4);
      }
      
      public static function §5"=§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§6z§ = null) : §+l§
      {
         var _loc7_:§"!&§;
         (_loc7_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§1!m§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§3!`§ = param6 || §&"@§.§4l§;
         return _loc7_;
      }
      
      public static function §3!o§(param1:Object, param2:Object, param3:§?"3§ = null) : §+l§
      {
         var _loc4_:§1!B§;
         (_loc4_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,null,param2,param3 || §5C§.§3Y§());
         return _loc4_;
      }
      
      public static function delay(param1:§[f§, param2:Number, param3:Number = 0.0) : §[f§
      {
         return new §^!B§(param1 as §?f§,param2,param3);
      }
      
      public static function reverse(param1:§[f§, param2:Boolean = true) : §[f§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §2I§)
         {
            return new §9!0§((param1 as §2I§).§]!2§,_loc3_);
         }
         if((param1 as Object).constructor == §9!0§)
         {
            param1 = (param1 as §9!0§).§]!2§;
         }
         return new §2I§(param1 as §?f§,_loc3_);
      }
      
      public static function §="6§(param1:Object, param2:Object, param3:Number = 1.0, param4:§6z§ = null) : §+l§
      {
         var _loc5_:§"!&§;
         (_loc5_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§3!`§ = param4 || §&"@§.§4l§;
         return _loc5_;
      }
      
      public static function §@! §(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6z§ = null) : §+l§
      {
         var _loc6_:§"!&§;
         (_loc6_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§3!`§ = param5 || §&"@§.§4l§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§6z§ = null) : void
      {
         var _loc7_:§"!&§;
         (_loc7_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§3!`§ = param6 || §&"@§.§4l§;
         _loc7_.update(param5);
      }
      
      public static function §[C§(param1:Object, param2:Object, param3:§?"3§ = null) : §+l§
      {
         var _loc4_:§1!B§;
         (_loc4_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,param2,null,param3 || §5C§.§3Y§());
         return _loc4_;
      }
      
      public static function §'J§(... rest) : §`<§
      {
         return §^,§(rest);
      }
      
      public static function §+A§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6z§ = null) : §+l§
      {
         var _loc6_:§"!&§;
         (_loc6_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§1!m§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§3!`§ = param5 || §&"@§.§4l§;
         return _loc6_;
      }
      
      public static function §`!b§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6z§ = null) : §+l§
      {
         var _loc6_:§"!&§;
         (_loc6_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§1!m§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§3!`§ = param5 || §&"@§.§4l§;
         return _loc6_;
      }
      
      public static function §[g§(param1:Object, param2:Object, param3:Number = 1.0, param4:§6z§ = null) : §+l§
      {
         var _loc5_:§"!&§;
         (_loc5_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§3!`§ = param4 || §&"@§.§4l§;
         return _loc5_;
      }
      
      public static function §^,§(param1:Array) : §`<§
      {
         return new §0"=§(param1,§`!D§,0);
      }
   }
}
