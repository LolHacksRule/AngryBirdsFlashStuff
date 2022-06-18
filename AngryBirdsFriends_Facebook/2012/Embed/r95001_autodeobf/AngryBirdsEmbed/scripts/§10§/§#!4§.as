package §10§
{
   import § "§.§;4§;
   import §!!G§.§8!G§;
   import §!T§.§2!!§;
   import §-z§.§0!§;
   import §9!2§.§7N§;
   import §9!?§.§^]§;
   import §9H§.§5!D§;
   import §[!&§.§42§;
   import flash.geom.Rectangle;
   
   public class §#!4§
   {
      
      public static var §each §:int = 0;
      
      public static var §81§:int = 0;
      
      public static var §^Y§:§^]§;
      
      public static var § try§:§5!D§;
      
      public static var §,!%§:Boolean = false;
      
      public static var §1%§:§#!4§ = null;
      
      public static var §='§:§42§;
      
      public static var §3m§:Boolean = true;
      
      public static var §-r§:Number = 1;
      
      public static var §+!8§:Number = 1;
      
      public static var §51§:Number = 1;
      
      private static var §0<§:§8!G§ = null;
      
      private static var §1e§:Boolean = false;
       
      
      public function §#!4§()
      {
         super();
      }
      
      public static function §?D§() : Number
      {
         return §each § * §+!8§;
      }
      
      public static function §^"§() : Number
      {
         return §81§ * §51§;
      }
      
      public static function pause() : void
      {
         if(!§1e§)
         {
            §1e§ = true;
            if(§7N§.§<Y§)
            {
               §7N§.§<Y§.§"7§ = true;
            }
            if(§7N§.§17§)
            {
               §7N§.§17§.§]!8§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§1e§)
         {
            §1e§ = false;
            if(§7N§.§<Y§)
            {
               §7N§.§<Y§.§"7§ = false;
            }
            if(§7N§.§17§)
            {
               §7N§.§17§.§]!8§(true);
            }
         }
      }
      
      public static function get §"7§() : Boolean
      {
         return §1e§;
      }
      
      public static function init(param1:§42§, param2:int, param3:int) : void
      {
         §='§ = param1;
         §each § = param2;
         §81§ = param3;
         § try§ = new §5!D§(true,param1.canvas);
      }
      
      public static function §6!&§(param1:XML, param2:XML) : void
      {
         §2!!§.§6!&§(param1,param2);
      }
      
      public static function §@^§(param1:§0!§, param2:Array, param3:Function = null) : void
      {
         §^Y§.§@^§(param1,param2,param3);
      }
      
      public static function §+f§(param1:§;4§) : void
      {
         §^Y§.init(param1);
      }
      
      public static function §>=§(param1:§8!G§) : void
      {
         §0<§ = param1;
         §^Y§.§>=§(param1);
      }
      
      public static function get controller() : §8!G§
      {
         return §0<§;
      }
      
      public static function §>R§(param1:Boolean) : void
      {
         §3m§ = param1;
         §^Y§.background.§>R§(param1);
      }
      
      public static function §9!A§() : Boolean
      {
         return §3m§;
      }
      
      public static function §=h§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§7N§.§17§)
         {
            §7N§.§17§.§-4§ = new Rectangle(param1,param2,param3,param4);
            §7N§.§17§.setCanvasSize(param3,param4);
         }
         §-r§ = Math.min(param3 / §each §,param4 / §81§);
         §+!8§ = param3 / §each §;
         §51§ = param4 / §81§;
         §^Y§.§'m§(param3,param4);
      }
   }
}
