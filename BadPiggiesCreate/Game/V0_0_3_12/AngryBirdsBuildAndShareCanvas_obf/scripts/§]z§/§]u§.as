package §]z§
{
   import § get§.§0!i§;
   import § get§.§[!d§;
   import §!e§.§4"!§;
   import §!e§.§7!G§;
   import §"!^§.§#"-§;
   import §"!^§.§3p§;
   import §"!^§.§8h§;
   import §"!^§.§?!N§;
   import §"!^§.§]s§;
   import §%!D§.§,h§;
   import §%!D§.§]!e§;
   import §%!D§.§]@§;
   import §2n§.§8"7§;
   import §4!H§.§05§;
   import §4!H§.§7;§;
   import §4!w§.§!!<§;
   import §4!w§.§,!7§;
   import §4!w§.§5!7§;
   import §7"9§.§0!Z§;
   import §7"9§.§1J§;
   import §8!J§.§," §;
   import §8!J§.§3!_§;
   import §8!J§.§3j§;
   import §8!J§.§>u§;
   import §<!Z§.§5"$§;
   import §?"3§.§6!A§;
   import §?"5§.§'W§;
   import §?"5§.§7! §;
   import §[!6§.§1[§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §]u§
   {
      
      private static var §#!U§:§6!A§ = new §6!A§();
      
      private static var §`!K§:§[!d§ = new §[!d§(§#!U§);
      
      private static var §+!s§:§8"7§ = new §5"$§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §+!s§.start();
         §0!i§.§"!6§(§#!U§);
         §1J§.§"!6§(§#!U§);
         §0!Z§.§"!6§(§#!U§);
         §1[§.§"!6§(§#!U§);
      }
      
      public function §]u§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §,h§
      {
         return new §5!7§(§+!s§,param1,param2);
      }
      
      public static function §["+§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §,h§
      {
         return new §,!7§(§+!s§,param1,param2,param3,param4,param5);
      }
      
      public static function §;!i§(... rest) : §]@§
      {
         return §>!E§(rest);
      }
      
      public static function scale(param1:§,h§, param2:Number) : §,h§
      {
         return new §8h§(param1 as §3j§,param2);
      }
      
      public static function §>!E§(param1:Array) : §]@§
      {
         return new §7!G§(param1,§+!s§,0);
      }
      
      public static function §-!R§(param1:Object, param2:Object, param3:Object = null, param4:§05§ = null) : §]!e§
      {
         var _loc5_:§," §;
         (_loc5_ = new §," §(§+!s§)).§6+§ = §`!K§.§3"4§(param1,param2,param3,param4 || §7! §.§=!`§());
         return _loc5_;
      }
      
      public static function §^!r§(param1:DisplayObject) : §,h§
      {
         return new §!!<§(§+!s§,param1);
      }
      
      public static function slice(param1:§,h§, param2:Number, param3:Number, param4:Boolean = false) : §,h§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §]s§(new §#"-§(param1 as §3j§,param3,param2),0);
         }
         return new §#"-§(param1 as §3j§,param2,param3);
      }
      
      public static function repeat(param1:§,h§, param2:uint) : §,h§
      {
         return new §3p§(param1 as §3j§,param2);
      }
      
      public static function §4!k§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§05§ = null) : void
      {
         var _loc6_:§," §;
         (_loc6_ = new §," §(§+!s§)).§6+§ = §`!K§.§3"4§(param1,param2,param3,param5 || §7! §.§=!`§());
         _loc6_.update(param4);
      }
      
      public static function §^@§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§7;§ = null) : §]!e§
      {
         var _loc7_:§>u§;
         (_loc7_ = new §>u§(§+!s§)).§6+§ = §`!K§.§@A§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§1<§ = param6 || §'W§.§&[§;
         return _loc7_;
      }
      
      public static function §-"8§(param1:Object, param2:Object, param3:§05§ = null) : §]!e§
      {
         var _loc4_:§," §;
         (_loc4_ = new §," §(§+!s§)).§6+§ = §`!K§.§3"4§(param1,null,param2,param3 || §7! §.§=!`§());
         return _loc4_;
      }
      
      public static function delay(param1:§,h§, param2:Number, param3:Number = 0.0) : §,h§
      {
         return new §?!N§(param1 as §3j§,param2,param3);
      }
      
      public static function reverse(param1:§,h§, param2:Boolean = true) : §,h§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §]s§)
         {
            return new §3!_§((param1 as §]s§).§"!D§,_loc3_);
         }
         if((param1 as Object).constructor == §3!_§)
         {
            param1 = (param1 as §3!_§).§"!D§;
         }
         return new §]s§(param1 as §3j§,_loc3_);
      }
      
      public static function §;" §(param1:Object, param2:Object, param3:Number = 1.0, param4:§7;§ = null) : §]!e§
      {
         var _loc5_:§>u§;
         (_loc5_ = new §>u§(§+!s§)).§6+§ = §`!K§.§=!L§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§1<§ = param4 || §'W§.§&[§;
         return _loc5_;
      }
      
      public static function §'!H§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7;§ = null) : §]!e§
      {
         var _loc6_:§>u§;
         (_loc6_ = new §>u§(§+!s§)).§6+§ = §`!K§.§=!L§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§1<§ = param5 || §'W§.§&[§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§7;§ = null) : void
      {
         var _loc7_:§>u§;
         (_loc7_ = new §>u§(§+!s§)).§6+§ = §`!K§.§=!L§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§1<§ = param6 || §'W§.§&[§;
         _loc7_.update(param5);
      }
      
      public static function §@!3§(param1:Object, param2:Object, param3:§05§ = null) : §]!e§
      {
         var _loc4_:§," §;
         (_loc4_ = new §," §(§+!s§)).§6+§ = §`!K§.§3"4§(param1,param2,null,param3 || §7! §.§=!`§());
         return _loc4_;
      }
      
      public static function §@!Q§(... rest) : §]@§
      {
         return §0r§(rest);
      }
      
      public static function §#!L§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7;§ = null) : §]!e§
      {
         var _loc6_:§>u§;
         (_loc6_ = new §>u§(§+!s§)).§6+§ = §`!K§.§@A§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§1<§ = param5 || §'W§.§&[§;
         return _loc6_;
      }
      
      public static function §1§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7;§ = null) : §]!e§
      {
         var _loc6_:§>u§;
         (_loc6_ = new §>u§(§+!s§)).§6+§ = §`!K§.§@A§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§1<§ = param5 || §'W§.§&[§;
         return _loc6_;
      }
      
      public static function §]<§(param1:Object, param2:Object, param3:Number = 1.0, param4:§7;§ = null) : §]!e§
      {
         var _loc5_:§>u§;
         (_loc5_ = new §>u§(§+!s§)).§6+§ = §`!K§.§=!L§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§1<§ = param4 || §'W§.§&[§;
         return _loc5_;
      }
      
      public static function §0r§(param1:Array) : §]@§
      {
         return new §4"!§(param1,§+!s§,0);
      }
   }
}
