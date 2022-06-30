package §9b§
{
   import §"!I§.§^!2§;
   import §"^§.§+!'§;
   import §,-§.§3!f§;
   import §3!b§.§;!7§;
   import §9L§.§]o§;
   import §@0§.§`>§;
   import §@R§.§-!I§;
   import §^!5§.§&!E§;
   import flash.geom.Rectangle;
   
   public class §"!S§
   {
      
      public static var §3i§:int = 0;
      
      public static var §!!d§:int = 0;
      
      public static var §-!7§:§^!2§;
      
      public static var §;4§:§-!I§;
      
      public static var §]!^§:Boolean = false;
      
      public static var §=h§:§"!S§ = null;
      
      public static var §%!U§:§]o§;
      
      public static var §`Z§:Boolean = true;
      
      public static var §^!c§:Number = 1;
      
      public static var §<!4§:Number = 1;
      
      public static var §[=§:Number = 1;
      
      private static var §8!b§:§;!7§ = null;
      
      private static var §?!9§:Boolean = false;
       
      
      public function §"!S§()
      {
         super();
      }
      
      public static function §#!F§() : Number
      {
         return §3i§ * §<!4§;
      }
      
      public static function §4w§() : Number
      {
         return §!!d§ * §[=§;
      }
      
      public static function §99§() : void
      {
         if(!§?!9§)
         {
            §?!9§ = true;
            if(§+!'§.§9!;§)
            {
               §+!'§.§9!;§.isPaused = true;
            }
            if(§+!'§.§2d§)
            {
               §+!'§.§2d§.§]K§(false);
            }
         }
      }
      
      public static function §^e§() : void
      {
         if(§?!9§)
         {
            §?!9§ = false;
            if(§+!'§.§9!;§)
            {
               §+!'§.§9!;§.isPaused = false;
            }
            if(§+!'§.§2d§)
            {
               §+!'§.§2d§.§]K§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §?!9§;
      }
      
      public static function init(param1:§]o§, param2:int, param3:int) : void
      {
         §%!U§ = param1;
         §3i§ = param2;
         §!!d§ = param3;
         §;4§ = new §-!I§(true,param1.canvas);
      }
      
      public static function §"A§(param1:XML, param2:XML) : void
      {
         §`>§.§"A§(param1,param2);
      }
      
      public static function §2K§(param1:§3!f§, param2:Array, param3:Function = null) : void
      {
         §-!7§.§2K§(param1,param2,param3);
      }
      
      public static function §&O§(param1:§&!E§) : void
      {
         §-!7§.init(param1);
      }
      
      public static function §8m§(param1:§;!7§) : void
      {
         §8!b§ = param1;
         §-!7§.§8m§(param1);
      }
      
      public static function get §]O§() : §;!7§
      {
         return §8!b§;
      }
      
      public static function §=[§(param1:Boolean) : void
      {
         §`Z§ = param1;
         §-!7§.background.§=[§(param1);
      }
      
      public static function §^l§() : Boolean
      {
         return §`Z§;
      }
      
      public static function §[!6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§+!'§.§2d§)
         {
            §+!'§.§2d§.§9!_§ = new Rectangle(param1,param2,param3,param4);
            §+!'§.§2d§.setCanvasSize(param3,param4);
         }
         §^!c§ = Math.min(param3 / §3i§,param4 / §!!d§);
         §<!4§ = param3 / §3i§;
         §[=§ = param4 / §!!d§;
         §-!7§.§?!]§(param3,param4);
      }
   }
}
