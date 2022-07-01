package §@!G§
{
   import § "'§.§&K§;
   import § "'§.§3@§;
   import § "'§.§4!z§;
   import §"K§.§8!T§;
   import §"K§.§@Y§;
   import §%!;§.§,!L§;
   import §%!;§.§4!`§;
   import §%!m§.§2!T§;
   import §%!m§.§4!c§;
   import §%!m§.§9Y§;
   import §'&§.§"!7§;
   import §'&§.§-"&§;
   import §1!k§.§ T§;
   import §1!k§.§"U§;
   import §1!k§.§#!9§;
   import §1!k§.§?H§;
   import §2p§.§1>§;
   import §2p§.§`2§;
   import §4"6§.§=!h§;
   import §6"2§.§ "6§;
   import §6"2§.§3!4§;
   import §6"2§.§7!m§;
   import §6"2§.§@!`§;
   import §6"2§.§`!u§;
   import §8!&§.§]!^§;
   import §8=§.§+!p§;
   import §8=§.§[!H§;
   import §<!3§.§"`§;
   import §=b§.§%"2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §5!!§
   {
      
      private static var §<!8§:§"`§ = new §"`§();
      
      private static var §'2§:§[!H§ = new §[!H§(§<!8§);
      
      private static var §1!I§:§%"2§ = new §]!^§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §1!I§.start();
         §+!p§.§>!X§(§<!8§);
         §@Y§.§>!X§(§<!8§);
         §8!T§.§>!X§(§<!8§);
         §=!h§.§>!X§(§<!8§);
      }
      
      public function §5!!§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §3@§
      {
         return new §4!c§(§1!I§,param1,param2);
      }
      
      public static function §[!p§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §3@§
      {
         return new §2!T§(§1!I§,param1,param2,param3,param4,param5);
      }
      
      public static function §3">§(... rest) : §&K§
      {
         return §-`§(rest);
      }
      
      public static function scale(param1:§3@§, param2:Number) : §3@§
      {
         return new § "6§(param1 as §?H§,param2);
      }
      
      public static function §-`§(param1:Array) : §&K§
      {
         return new §,!L§(param1,§1!I§,0);
      }
      
      public static function § !§(param1:Object, param2:Object, param3:Object = null, param4:§1>§ = null) : §4!z§
      {
         var _loc5_:§ T§;
         (_loc5_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,param2,param3,param4 || §"!7§.§ >§());
         return _loc5_;
      }
      
      public static function §<!>§(param1:DisplayObject) : §3@§
      {
         return new §9Y§(§1!I§,param1);
      }
      
      public static function slice(param1:§3@§, param2:Number, param3:Number, param4:Boolean = false) : §3@§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §@!`§(new §3!4§(param1 as §?H§,param3,param2),0);
         }
         return new §3!4§(param1 as §?H§,param2,param3);
      }
      
      public static function repeat(param1:§3@§, param2:uint) : §3@§
      {
         return new §7!m§(param1 as §?H§,param2);
      }
      
      public static function §>j§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§1>§ = null) : void
      {
         var _loc6_:§ T§;
         (_loc6_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,param2,param3,param5 || §"!7§.§ >§());
         _loc6_.update(param4);
      }
      
      public static function §4O§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§`2§ = null) : §4!z§
      {
         var _loc7_:§#!9§;
         (_loc7_ = new §#!9§(§1!I§)).§1q§ = §'2§.§6N§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§!!T§ = param6 || §-"&§.§?!6§;
         return _loc7_;
      }
      
      public static function § 9§(param1:Object, param2:Object, param3:§1>§ = null) : §4!z§
      {
         var _loc4_:§ T§;
         (_loc4_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,null,param2,param3 || §"!7§.§ >§());
         return _loc4_;
      }
      
      public static function delay(param1:§3@§, param2:Number, param3:Number = 0.0) : §3@§
      {
         return new §`!u§(param1 as §?H§,param2,param3);
      }
      
      public static function reverse(param1:§3@§, param2:Boolean = true) : §3@§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §@!`§)
         {
            return new §"U§((param1 as §@!`§).§2O§,_loc3_);
         }
         if((param1 as Object).constructor == §"U§)
         {
            param1 = (param1 as §"U§).§2O§;
         }
         return new §@!`§(param1 as §?H§,_loc3_);
      }
      
      public static function §,Q§(param1:Object, param2:Object, param3:Number = 1.0, param4:§`2§ = null) : §4!z§
      {
         var _loc5_:§#!9§;
         (_loc5_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§!!T§ = param4 || §-"&§.§?!6§;
         return _loc5_;
      }
      
      public static function §3!b§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§`2§ = null) : §4!z§
      {
         var _loc6_:§#!9§;
         (_loc6_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§!!T§ = param5 || §-"&§.§?!6§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§`2§ = null) : void
      {
         var _loc7_:§#!9§;
         (_loc7_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§!!T§ = param6 || §-"&§.§?!6§;
         _loc7_.update(param5);
      }
      
      public static function §>!N§(param1:Object, param2:Object, param3:§1>§ = null) : §4!z§
      {
         var _loc4_:§ T§;
         (_loc4_ = new § T§(§1!I§)).§1q§ = §'2§.§`!I§(param1,param2,null,param3 || §"!7§.§ >§());
         return _loc4_;
      }
      
      public static function §&!f§(... rest) : §&K§
      {
         return §23§(rest);
      }
      
      public static function §,!8§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§`2§ = null) : §4!z§
      {
         var _loc6_:§#!9§;
         (_loc6_ = new §#!9§(§1!I§)).§1q§ = §'2§.§6N§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§!!T§ = param5 || §-"&§.§?!6§;
         return _loc6_;
      }
      
      public static function §`6§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§`2§ = null) : §4!z§
      {
         var _loc6_:§#!9§;
         (_loc6_ = new §#!9§(§1!I§)).§1q§ = §'2§.§6N§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§!!T§ = param5 || §-"&§.§?!6§;
         return _loc6_;
      }
      
      public static function §^!Z§(param1:Object, param2:Object, param3:Number = 1.0, param4:§`2§ = null) : §4!z§
      {
         var _loc5_:§#!9§;
         (_loc5_ = new §#!9§(§1!I§)).§1q§ = §'2§.§ !I§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§!!T§ = param4 || §-"&§.§?!6§;
         return _loc5_;
      }
      
      public static function §23§(param1:Array) : §&K§
      {
         return new §4!`§(param1,§1!I§,0);
      }
   }
}
