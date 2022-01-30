package §-! §
{
   import § !R§.§5!-§;
   import §!4§.§"!'§;
   import §%!<§.§#!r§;
   import §%!<§.§8f§;
   import §&!V§.§+v§;
   import §'!D§.§ !<§;
   import §'!D§.§#!x§;
   import §'!D§.§&s§;
   import §'!D§.§1!J§;
   import §4H§.§4]§;
   import §4H§.§8r§;
   import §6!F§.§&N§;
   import §6!F§.§7!U§;
   import §7"+§.§-!<§;
   import §7"+§.§]F§;
   import §8S§.§2!C§;
   import §8S§.§3!C§;
   import §8S§.§4!]§;
   import §8S§.§6z§;
   import §8S§.§=!=§;
   import §=!9§.§%![§;
   import §=!9§.§'!$§;
   import §=!9§.§@!A§;
   import §@J§.§-H§;
   import §@J§.§<K§;
   import §["6§.§@D§;
   import §]!N§.§"!W§;
   import §]!N§.§'!n§;
   import §]!N§.§7"3§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §"A§
   {
      
      private static var §&"§:§5!-§ = new §5!-§();
      
      private static var §-"0§:§&N§ = new §&N§(§&"§);
      
      private static var §9%§:§@D§ = new §+v§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §9%§.start();
         §7!U§.§8!m§(§&"§);
         §<K§.§8!m§(§&"§);
         §-H§.§8!m§(§&"§);
         §"!'§.§8!m§(§&"§);
      }
      
      public function §"A§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §7"3§
      {
         return new §@!A§(§9%§,param1,param2);
      }
      
      public static function § !C§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §7"3§
      {
         return new §'!$§(§9%§,param1,param2,param3,param4,param5);
      }
      
      public static function §'9§(... rest) : §'!n§
      {
         return §`!8§(rest);
      }
      
      public static function scale(param1:§7"3§, param2:Number) : §7"3§
      {
         return new §4!]§(param1 as §&s§,param2);
      }
      
      public static function §`!8§(param1:Array) : §'!n§
      {
         return new §4]§(param1,§9%§,0);
      }
      
      public static function §7!@§(param1:Object, param2:Object, param3:Object = null, param4:§]F§ = null) : §"!W§
      {
         var _loc5_:§#!x§;
         (_loc5_ = new §#!x§(§9%§)).§;!r§ = §-"0§.§%!$§(param1,param2,param3,param4 || §8f§.§3+§());
         return _loc5_;
      }
      
      public static function §33§(param1:DisplayObject) : §7"3§
      {
         return new §%![§(§9%§,param1);
      }
      
      public static function slice(param1:§7"3§, param2:Number, param3:Number, param4:Boolean = false) : §7"3§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §6z§(new §2!C§(param1 as §&s§,param3,param2),0);
         }
         return new §2!C§(param1 as §&s§,param2,param3);
      }
      
      public static function repeat(param1:§7"3§, param2:uint) : §7"3§
      {
         return new §=!=§(param1 as §&s§,param2);
      }
      
      public static function §]O§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§]F§ = null) : void
      {
         var _loc6_:§#!x§;
         (_loc6_ = new §#!x§(§9%§)).§;!r§ = §-"0§.§%!$§(param1,param2,param3,param5 || §8f§.§3+§());
         _loc6_.update(param4);
      }
      
      public static function §2@§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§-!<§ = null) : §"!W§
      {
         var _loc7_:§ !<§;
         (_loc7_ = new § !<§(§9%§)).§;!r§ = §-"0§.§ "'§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§-5§ = param6 || §#!r§.§7!1§;
         return _loc7_;
      }
      
      public static function §]!I§(param1:Object, param2:Object, param3:§]F§ = null) : §"!W§
      {
         var _loc4_:§#!x§;
         (_loc4_ = new §#!x§(§9%§)).§;!r§ = §-"0§.§%!$§(param1,null,param2,param3 || §8f§.§3+§());
         return _loc4_;
      }
      
      public static function delay(param1:§7"3§, param2:Number, param3:Number = 0.0) : §7"3§
      {
         return new §3!C§(param1 as §&s§,param2,param3);
      }
      
      public static function reverse(param1:§7"3§, param2:Boolean = true) : §7"3§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §6z§)
         {
            return new §1!J§((param1 as §6z§).§4f§,_loc3_);
         }
         if((param1 as Object).constructor == §1!J§)
         {
            param1 = (param1 as §1!J§).§4f§;
         }
         return new §6z§(param1 as §&s§,_loc3_);
      }
      
      public static function §="'§(param1:Object, param2:Object, param3:Number = 1.0, param4:§-!<§ = null) : §"!W§
      {
         var _loc5_:§ !<§;
         (_loc5_ = new § !<§(§9%§)).§;!r§ = §-"0§.§%!!§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§-5§ = param4 || §#!r§.§7!1§;
         return _loc5_;
      }
      
      public static function §3!+§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§-!<§ = null) : §"!W§
      {
         var _loc6_:§ !<§;
         (_loc6_ = new § !<§(§9%§)).§;!r§ = §-"0§.§%!!§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§-5§ = param5 || §#!r§.§7!1§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§-!<§ = null) : void
      {
         var _loc7_:§ !<§;
         (_loc7_ = new § !<§(§9%§)).§;!r§ = §-"0§.§%!!§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§-5§ = param6 || §#!r§.§7!1§;
         _loc7_.update(param5);
      }
      
      public static function §<!K§(param1:Object, param2:Object, param3:§]F§ = null) : §"!W§
      {
         var _loc4_:§#!x§;
         (_loc4_ = new §#!x§(§9%§)).§;!r§ = §-"0§.§%!$§(param1,param2,null,param3 || §8f§.§3+§());
         return _loc4_;
      }
      
      public static function §^!3§(... rest) : §'!n§
      {
         return §9!7§(rest);
      }
      
      public static function §;6§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§-!<§ = null) : §"!W§
      {
         var _loc6_:§ !<§;
         (_loc6_ = new § !<§(§9%§)).§;!r§ = §-"0§.§ "'§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§-5§ = param5 || §#!r§.§7!1§;
         return _loc6_;
      }
      
      public static function §6@§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§-!<§ = null) : §"!W§
      {
         var _loc6_:§ !<§;
         (_loc6_ = new § !<§(§9%§)).§;!r§ = §-"0§.§ "'§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§-5§ = param5 || §#!r§.§7!1§;
         return _loc6_;
      }
      
      public static function §?"7§(param1:Object, param2:Object, param3:Number = 1.0, param4:§-!<§ = null) : §"!W§
      {
         var _loc5_:§ !<§;
         (_loc5_ = new § !<§(§9%§)).§;!r§ = §-"0§.§%!!§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§-5§ = param4 || §#!r§.§7!1§;
         return _loc5_;
      }
      
      public static function §9!7§(param1:Array) : §'!n§
      {
         return new §8r§(param1,§9%§,0);
      }
   }
}
