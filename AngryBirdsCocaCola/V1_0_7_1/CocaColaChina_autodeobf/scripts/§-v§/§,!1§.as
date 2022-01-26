package §-v§
{
   import § F§.§3!&§;
   import §#m§.§3T§;
   import §,§.§?!G§;
   import §-X§.§5!F§;
   import §4A§.§&_§;
   import §?@§.§-&§;
   import §`!+§.§]!"§;
   import flash.geom.Rectangle;
   import §in§.§]!K§;
   
   public class §,!1§
   {
      
      public static var § e§:int = 0;
      
      public static var §9!;§:int = 0;
      
      public static var §2T§:§&_§;
      
      public static var §2O§:§-&§;
      
      public static var §7e§:Boolean = false;
      
      public static var § t§:§,!1§ = null;
      
      public static var §0!9§:§?!G§;
      
      public static var §7! §:Boolean = true;
      
      public static var §]!L§:Number = 1;
      
      public static var §@!7§:Number = 1;
      
      public static var §"R§:Number = 1;
      
      private static var §?!1§:§]!"§ = null;
      
      private static var §9^§:Boolean = false;
       
      
      public function §,!1§()
      {
         super();
      }
      
      public static function §[!#§() : Number
      {
         return § e§ * §@!7§;
      }
      
      public static function §;!O§() : Number
      {
         return §9!;§ * §"R§;
      }
      
      public static function §]w§() : void
      {
         if(!§9^§)
         {
            §9^§ = true;
            if(§3!&§.§#6§)
            {
               §3!&§.§#6§.isPaused = true;
            }
            if(§3!&§.§<1§)
            {
               §3!&§.§<1§.§>@§(false);
            }
         }
      }
      
      public static function §0#§() : void
      {
         if(§9^§)
         {
            §9^§ = false;
            if(§3!&§.§#6§)
            {
               §3!&§.§#6§.isPaused = false;
            }
            if(§3!&§.§<1§)
            {
               §3!&§.§<1§.§>@§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §9^§;
      }
      
      public static function init(param1:§?!G§, param2:int, param3:int) : void
      {
         §0!9§ = param1;
         § e§ = param2;
         §9!;§ = param3;
         §2O§ = new §-&§(true,param1.canvas);
      }
      
      public static function §>,§(param1:XML, param2:XML) : void
      {
         §3T§.§>,§(param1,param2);
      }
      
      public static function §&f§(param1:§]!K§, param2:Array, param3:Function = null) : void
      {
         §2T§.§&f§(param1,param2,param3);
      }
      
      public static function §do §(param1:§5!F§) : void
      {
         §2T§.init(param1);
      }
      
      public static function §2!L§(param1:§]!"§) : void
      {
         §?!1§ = param1;
         §2T§.§2!L§(param1);
      }
      
      public static function get §>o§() : §]!"§
      {
         return §?!1§;
      }
      
      public static function §^T§(param1:Boolean) : void
      {
         §7! § = param1;
         §2T§.background.§^T§(param1);
      }
      
      public static function §[!T§() : Boolean
      {
         return §7! §;
      }
      
      public static function §]!#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§3!&§.§<1§)
         {
            §3!&§.§<1§.§3!O§ = new Rectangle(param1,param2,param3,param4);
            §3!&§.§<1§.setCanvasSize(param3,param4);
         }
         §]!L§ = Math.min(param3 / § e§,param4 / §9!;§);
         §@!7§ = param3 / § e§;
         §"R§ = param4 / §9!;§;
         §2T§.§]v§(param3,param4);
      }
   }
}
