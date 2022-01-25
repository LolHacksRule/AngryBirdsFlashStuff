package §0!b§
{
   import §"m§.§^B§;
   import §%!^§.§"!7§;
   import §%!a§.§ !R§;
   import §&F§.§>!2§;
   import §+&§.§?y§;
   import §-!D§.§?!%§;
   import §5!5§.§%k§;
   import §^=§.§;!d§;
   import flash.geom.Rectangle;
   
   public class §#!=§
   {
      
      public static var §[!]§:int = 0;
      
      public static var §?!E§:int = 0;
      
      public static var §&![§:§>!2§;
      
      public static var §-!'§:§;!d§;
      
      public static var §?!-§:Boolean = false;
      
      public static var §5d§:§#!=§ = null;
      
      public static var §3!@§:§?!%§;
      
      public static var §,T§:Boolean = true;
      
      public static var each:Number = 1;
      
      public static var §,@§:Number = 1;
      
      public static var §>0§:Number = 1;
      
      private static var §3!=§:§^B§ = null;
      
      private static var §9!2§:Boolean = false;
       
      
      public function §#!=§()
      {
         super();
      }
      
      public static function §"Q§() : Number
      {
         return §[!]§ * §,@§;
      }
      
      public static function §&§() : Number
      {
         return §?!E§ * §>0§;
      }
      
      public static function §8!§() : void
      {
         if(!§9!2§)
         {
            §9!2§ = true;
            if(§?y§.§0&§)
            {
               §?y§.§0&§.isPaused = true;
            }
            if(§?y§.§,u§)
            {
               §?y§.§,u§.§!!W§(false);
            }
         }
      }
      
      public static function §<A§() : void
      {
         if(§9!2§)
         {
            §9!2§ = false;
            if(§?y§.§0&§)
            {
               §?y§.§0&§.isPaused = false;
            }
            if(§?y§.§,u§)
            {
               §?y§.§,u§.§!!W§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §9!2§;
      }
      
      public static function init(param1:§?!%§, param2:int, param3:int) : void
      {
         §3!@§ = param1;
         §[!]§ = param2;
         §?!E§ = param3;
         §-!'§ = new §;!d§(true,param1.canvas);
      }
      
      public static function §0%§(param1:XML, param2:XML) : void
      {
         § !R§.§0%§(param1,param2);
      }
      
      public static function §'!X§(param1:§%k§, param2:Array, param3:Function = null) : void
      {
         §&![§.§'!X§(param1,param2,param3);
      }
      
      public static function § H§(param1:§"!7§) : void
      {
         §&![§.init(param1);
      }
      
      public static function §5!7§(param1:§^B§) : void
      {
         §3!=§ = param1;
         §&![§.§5!7§(param1);
      }
      
      public static function get §3!W§() : §^B§
      {
         return §3!=§;
      }
      
      public static function §,!!§(param1:Boolean) : void
      {
         §,T§ = param1;
         §&![§.background.§,!!§(param1);
      }
      
      public static function §>X§() : Boolean
      {
         return §,T§;
      }
      
      public static function §?I§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§?y§.§,u§)
         {
            §?y§.§,u§.§@f§ = new Rectangle(param1,param2,param3,param4);
            §?y§.§,u§.setCanvasSize(param3,param4);
         }
         each = Math.min(param3 / §[!]§,param4 / §?!E§);
         §,@§ = param3 / §[!]§;
         §>0§ = param4 / §?!E§;
         §&![§.§%!'§(param3,param4);
      }
   }
}
