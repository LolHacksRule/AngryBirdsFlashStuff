package §8""§
{
   import §!!%§.§-!g§;
   import §!!%§.§7"-§;
   import §"c§.§0l§;
   import §"c§.§2H§;
   import §0"2§.§`P§;
   import §0S§.§!c§;
   import §0S§.§%!x§;
   import §0S§.§-!x§;
   import §0S§.§7B§;
   import §0S§.§@!T§;
   import §6!!§.§,!B§;
   import §6!!§.§38§;
   import §6!!§.§8v§;
   import §6!!§.§9o§;
   import §7o§.§%[§;
   import §7o§.§=!b§;
   import §;!%§.§3o§;
   import §=!^§.§,!D§;
   import §=!^§.§84§;
   import §=!^§.§9!V§;
   import §?u§.§1!v§;
   import §?u§.§2!N§;
   import §@!C§.§ c§;
   import §@!C§.§[!!§;
   import §@!C§.§`+§;
   import §^!B§.§1!P§;
   import §^b§.§ E§;
   import §`!?§.§5q§;
   import §`!?§.§6!K§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §,"!§
   {
      
      private static var §`M§:§1!P§ = new §1!P§();
      
      private static var §if§:§2!N§ = new §2!N§(§`M§);
      
      private static var §=!9§:§ E§ = new §3o§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §=!9§.start();
         §1!v§.§5"+§(§`M§);
         §7"-§.§5"+§(§`M§);
         §-!g§.§5"+§(§`M§);
         §`P§.§5"+§(§`M§);
      }
      
      public function §,"!§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §9!V§
      {
         return new § c§(§=!9§,param1,param2);
      }
      
      public static function §=!V§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §9!V§
      {
         return new §`+§(§=!9§,param1,param2,param3,param4,param5);
      }
      
      public static function §2!K§(... rest) : §,!D§
      {
         return §#s§(rest);
      }
      
      public static function scale(param1:§9!V§, param2:Number) : §9!V§
      {
         return new §%!x§(param1 as §,!B§,param2);
      }
      
      public static function §#s§(param1:Array) : §,!D§
      {
         return new §2H§(param1,§=!9§,0);
      }
      
      public static function §6!q§(param1:Object, param2:Object, param3:Object = null, param4:§6!K§ = null) : §84§
      {
         var _loc5_:§8v§;
         (_loc5_ = new §8v§(§=!9§)).§2"+§ = §if§.§9!C§(param1,param2,param3,param4 || §=!b§.§^n§());
         return _loc5_;
      }
      
      public static function §,!Q§(param1:DisplayObject) : §9!V§
      {
         return new §[!!§(§=!9§,param1);
      }
      
      public static function slice(param1:§9!V§, param2:Number, param3:Number, param4:Boolean = false) : §9!V§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §7B§(new §@!T§(param1 as §,!B§,param3,param2),0);
         }
         return new §@!T§(param1 as §,!B§,param2,param3);
      }
      
      public static function repeat(param1:§9!V§, param2:uint) : §9!V§
      {
         return new §!c§(param1 as §,!B§,param2);
      }
      
      public static function §="&§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6!K§ = null) : void
      {
         var _loc6_:§8v§;
         (_loc6_ = new §8v§(§=!9§)).§2"+§ = §if§.§9!C§(param1,param2,param3,param5 || §=!b§.§^n§());
         _loc6_.update(param4);
      }
      
      public static function §&!x§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§5q§ = null) : §84§
      {
         var _loc7_:§38§;
         (_loc7_ = new §38§(§=!9§)).§2"+§ = §if§.§"2§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§,@§ = param6 || §%[§.§7!u§;
         return _loc7_;
      }
      
      public static function §!'§(param1:Object, param2:Object, param3:§6!K§ = null) : §84§
      {
         var _loc4_:§8v§;
         (_loc4_ = new §8v§(§=!9§)).§2"+§ = §if§.§9!C§(param1,null,param2,param3 || §=!b§.§^n§());
         return _loc4_;
      }
      
      public static function delay(param1:§9!V§, param2:Number, param3:Number = 0.0) : §9!V§
      {
         return new §-!x§(param1 as §,!B§,param2,param3);
      }
      
      public static function reverse(param1:§9!V§, param2:Boolean = true) : §9!V§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §7B§)
         {
            return new §9o§((param1 as §7B§).§@[§,_loc3_);
         }
         if((param1 as Object).constructor == §9o§)
         {
            param1 = (param1 as §9o§).§@[§;
         }
         return new §7B§(param1 as §,!B§,_loc3_);
      }
      
      public static function §[!F§(param1:Object, param2:Object, param3:Number = 1.0, param4:§5q§ = null) : §84§
      {
         var _loc5_:§38§;
         (_loc5_ = new §38§(§=!9§)).§2"+§ = §if§.§2!#§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§,@§ = param4 || §%[§.§7!u§;
         return _loc5_;
      }
      
      public static function §`?§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§5q§ = null) : §84§
      {
         var _loc6_:§38§;
         (_loc6_ = new §38§(§=!9§)).§2"+§ = §if§.§2!#§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§,@§ = param5 || §%[§.§7!u§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§5q§ = null) : void
      {
         var _loc7_:§38§;
         (_loc7_ = new §38§(§=!9§)).§2"+§ = §if§.§2!#§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§,@§ = param6 || §%[§.§7!u§;
         _loc7_.update(param5);
      }
      
      public static function §!;§(param1:Object, param2:Object, param3:§6!K§ = null) : §84§
      {
         var _loc4_:§8v§;
         (_loc4_ = new §8v§(§=!9§)).§2"+§ = §if§.§9!C§(param1,param2,null,param3 || §=!b§.§^n§());
         return _loc4_;
      }
      
      public static function §;t§(... rest) : §,!D§
      {
         return §;,§(rest);
      }
      
      public static function §5n§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§5q§ = null) : §84§
      {
         var _loc6_:§38§;
         (_loc6_ = new §38§(§=!9§)).§2"+§ = §if§.§"2§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§,@§ = param5 || §%[§.§7!u§;
         return _loc6_;
      }
      
      public static function §6Z§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§5q§ = null) : §84§
      {
         var _loc6_:§38§;
         (_loc6_ = new §38§(§=!9§)).§2"+§ = §if§.§"2§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§,@§ = param5 || §%[§.§7!u§;
         return _loc6_;
      }
      
      public static function §-!X§(param1:Object, param2:Object, param3:Number = 1.0, param4:§5q§ = null) : §84§
      {
         var _loc5_:§38§;
         (_loc5_ = new §38§(§=!9§)).§2"+§ = §if§.§2!#§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§,@§ = param4 || §%[§.§7!u§;
         return _loc5_;
      }
      
      public static function §;,§(param1:Array) : §,!D§
      {
         return new §0l§(param1,§=!9§,0);
      }
   }
}
