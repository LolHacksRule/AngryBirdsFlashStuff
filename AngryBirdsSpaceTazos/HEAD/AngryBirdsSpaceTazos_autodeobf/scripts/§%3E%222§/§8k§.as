package §>"2§
{
   import §&f§.§%!x§;
   import §'!B§.§8T§;
   import §1z§.§2#§;
   import §3"#§.§`"8§;
   import §;!^§.§"7§;
   import §@u§.§1"&§;
   import §`!w§.§ !&§;
   import flash.geom.Rectangle;
   
   public class §8k§
   {
      
      public static var §<A§:int = 0;
      
      public static var §[s§:int = 0;
      
      public static var §;!]§:§`"8§;
      
      public static var §9i§:§ !&§;
      
      public static var §"",§:Boolean = false;
      
      public static var §7!,§:§8k§ = null;
      
      public static var §^"+§:§1"&§;
      
      public static var §^!m§:Boolean = true;
      
      public static var §"#§:Number = 1;
      
      public static var §`"5§:Number = 1;
      
      public static var §&i§:Number = 1;
      
      private static var §1!e§:§%!x§ = null;
      
      private static var § P§:Boolean = false;
       
      
      public function §8k§()
      {
         super();
      }
      
      public static function §`!+§() : Number
      {
         return §<A§ * §`"5§;
      }
      
      public static function §>"9§() : Number
      {
         return §[s§ * §&i§;
      }
      
      public static function pause() : void
      {
         if(!§ P§)
         {
            § P§ = true;
            if(§8T§.§?!c§)
            {
               §8T§.§?!c§.isPaused = true;
            }
            if(§8T§.§5!Y§)
            {
               §8T§.§5!Y§.§@>§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§ P§)
         {
            § P§ = false;
            if(§8T§.§?!c§)
            {
               §8T§.§?!c§.isPaused = false;
            }
            if(§8T§.§5!Y§)
            {
               §8T§.§5!Y§.§@>§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return § P§;
      }
      
      public static function init(param1:§1"&§, param2:int, param3:int) : void
      {
         §^"+§ = param1;
         §<A§ = param2;
         §[s§ = param3;
         §9i§ = new § !&§(true,param1.canvas);
      }
      
      public static function §^"7§(param1:§"7§, param2:Function = null) : void
      {
         §;!]§.§^"7§(param1,param2);
      }
      
      public static function loadLevel(param1:§2#§) : void
      {
         §;!]§.init(param1);
      }
      
      public static function §&x§(param1:§%!x§) : void
      {
         §1!e§ = param1;
         §;!]§.§&x§(param1);
      }
      
      public static function get §0!Q§() : §%!x§
      {
         return §1!e§;
      }
      
      public static function §7!+§(param1:Boolean) : void
      {
         §^!m§ = param1;
         §;!]§.background.§7!+§(param1);
      }
      
      public static function §-D§() : Boolean
      {
         return §^!m§;
      }
      
      public static function §+6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §"#§ = Math.min(param3 / §<A§,param4 / §[s§);
         §`"5§ = param3 / §<A§;
         §&i§ = param4 / §[s§;
         §8T§.§5"-§ = new Rectangle(param1,param2,param3,param4);
         §8T§.§2"@§ = §`"5§ > §&i§;
         §;!]§.§4!t§(param3,param4,§`"5§,§&i§);
      }
   }
}
