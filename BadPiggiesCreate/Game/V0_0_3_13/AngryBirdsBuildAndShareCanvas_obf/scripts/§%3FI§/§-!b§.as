package §?I§
{
   import § !3§.§3!@§;
   import § !3§.§9!d§;
   import § !s§.§!!d§;
   import § !s§.§%L§;
   import § use§.§@Z§;
   import § use§.§`!R§;
   import §#!,§.§='§;
   import §%!`§.§,!4§;
   import §%!`§.§8!h§;
   import §1R§.§#" §;
   import §1R§.§4!T§;
   import §1R§.§67§;
   import §1R§.§`?§;
   import §4!x§.§7"?§;
   import §4!x§.§>F§;
   import §5"6§.§!9§;
   import §5"6§.§'0§;
   import §5"6§.§-d§;
   import §6!>§.§>!#§;
   import §7[§.§,!r§;
   import §7[§.§0!`§;
   import §7[§.§`"+§;
   import §7u§.§+!0§;
   import §=!a§.§,!C§;
   import §?!'§.§!f§;
   import §?!'§.§0!G§;
   import §?!'§.§7G§;
   import §?!'§.§?!7§;
   import §?!'§.§?u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §-!b§
   {
      
      private static var §&D§:§='§ = new §='§();
      
      private static var §4!e§:§3!@§ = new §3!@§(§&D§);
      
      private static var §05§:§>!#§ = new §,!C§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §05§.start();
         §9!d§.§3a§(§&D§);
         §%L§.§3a§(§&D§);
         §!!d§.§3a§(§&D§);
         §+!0§.§3a§(§&D§);
      }
      
      public function §-!b§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §0!`§
      {
         return new §!9§(§05§,param1,param2);
      }
      
      public static function §=!r§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §0!`§
      {
         return new §-d§(§05§,param1,param2,param3,param4,param5);
      }
      
      public static function §;"=§(... rest) : §`"+§
      {
         return §?6§(rest);
      }
      
      public static function scale(param1:§0!`§, param2:Number) : §0!`§
      {
         return new §7G§(param1 as §4!T§,param2);
      }
      
      public static function §?6§(param1:Array) : §`"+§
      {
         return new §,!4§(param1,§05§,0);
      }
      
      public static function §4E§(param1:Object, param2:Object, param3:Object = null, param4:§7"?§ = null) : §,!r§
      {
         var _loc5_:§`?§;
         (_loc5_ = new §`?§(§05§)).§!_§ = §4!e§.§-"5§(param1,param2,param3,param4 || §@Z§.§^N§());
         return _loc5_;
      }
      
      public static function §!i§(param1:DisplayObject) : §0!`§
      {
         return new §'0§(§05§,param1);
      }
      
      public static function slice(param1:§0!`§, param2:Number, param3:Number, param4:Boolean = false) : §0!`§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §0!G§(new §!f§(param1 as §4!T§,param3,param2),0);
         }
         return new §!f§(param1 as §4!T§,param2,param3);
      }
      
      public static function repeat(param1:§0!`§, param2:uint) : §0!`§
      {
         return new §?!7§(param1 as §4!T§,param2);
      }
      
      public static function §`D§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§7"?§ = null) : void
      {
         var _loc6_:§`?§;
         (_loc6_ = new §`?§(§05§)).§!_§ = §4!e§.§-"5§(param1,param2,param3,param5 || §@Z§.§^N§());
         _loc6_.update(param4);
      }
      
      public static function §>§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§>F§ = null) : §,!r§
      {
         var _loc7_:§#" §;
         (_loc7_ = new §#" §(§05§)).§!_§ = §4!e§.§50§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§=&§ = param6 || §`!R§.§!&§;
         return _loc7_;
      }
      
      public static function §?f§(param1:Object, param2:Object, param3:§7"?§ = null) : §,!r§
      {
         var _loc4_:§`?§;
         (_loc4_ = new §`?§(§05§)).§!_§ = §4!e§.§-"5§(param1,null,param2,param3 || §@Z§.§^N§());
         return _loc4_;
      }
      
      public static function delay(param1:§0!`§, param2:Number, param3:Number = 0.0) : §0!`§
      {
         return new §?u§(param1 as §4!T§,param2,param3);
      }
      
      public static function reverse(param1:§0!`§, param2:Boolean = true) : §0!`§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §0!G§)
         {
            return new §67§((param1 as §0!G§).§[!q§,_loc3_);
         }
         if((param1 as Object).constructor == §67§)
         {
            param1 = (param1 as §67§).§[!q§;
         }
         return new §0!G§(param1 as §4!T§,_loc3_);
      }
      
      public static function §2!1§(param1:Object, param2:Object, param3:Number = 1.0, param4:§>F§ = null) : §,!r§
      {
         var _loc5_:§#" §;
         (_loc5_ = new §#" §(§05§)).§!_§ = §4!e§.§4p§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§=&§ = param4 || §`!R§.§!&§;
         return _loc5_;
      }
      
      public static function §,z§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§>F§ = null) : §,!r§
      {
         var _loc6_:§#" §;
         (_loc6_ = new §#" §(§05§)).§!_§ = §4!e§.§4p§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§=&§ = param5 || §`!R§.§!&§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§>F§ = null) : void
      {
         var _loc7_:§#" §;
         (_loc7_ = new §#" §(§05§)).§!_§ = §4!e§.§4p§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§=&§ = param6 || §`!R§.§!&§;
         _loc7_.update(param5);
      }
      
      public static function §&u§(param1:Object, param2:Object, param3:§7"?§ = null) : §,!r§
      {
         var _loc4_:§`?§;
         (_loc4_ = new §`?§(§05§)).§!_§ = §4!e§.§-"5§(param1,param2,null,param3 || §@Z§.§^N§());
         return _loc4_;
      }
      
      public static function §>x§(... rest) : §`"+§
      {
         return §&S§(rest);
      }
      
      public static function §;_§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§>F§ = null) : §,!r§
      {
         var _loc6_:§#" §;
         (_loc6_ = new §#" §(§05§)).§!_§ = §4!e§.§50§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§=&§ = param5 || §`!R§.§!&§;
         return _loc6_;
      }
      
      public static function §?=§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§>F§ = null) : §,!r§
      {
         var _loc6_:§#" §;
         (_loc6_ = new §#" §(§05§)).§!_§ = §4!e§.§50§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§=&§ = param5 || §`!R§.§!&§;
         return _loc6_;
      }
      
      public static function §+!G§(param1:Object, param2:Object, param3:Number = 1.0, param4:§>F§ = null) : §,!r§
      {
         var _loc5_:§#" §;
         (_loc5_ = new §#" §(§05§)).§!_§ = §4!e§.§4p§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§=&§ = param4 || §`!R§.§!&§;
         return _loc5_;
      }
      
      public static function §&S§(param1:Array) : §`"+§
      {
         return new §8!h§(param1,§05§,0);
      }
   }
}
