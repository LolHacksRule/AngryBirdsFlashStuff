package §>!F§
{
   import § d§.§'!"§;
   import §0i§.§>!!§;
   import §1y§.§&!B§;
   import §6c§.§4D§;
   import §8! §.§1_§;
   import §<<§.§#!T§;
   import §>0§.§;-§;
   import §^-§.§;!f§;
   import flash.geom.Rectangle;
   
   public class §9!Z§
   {
      
      public static var §,e§:int = 0;
      
      public static var §5§:int = 0;
      
      public static var §5!$§:§'!"§;
      
      public static var §`!1§:§>!!§;
      
      public static var §1!7§:Boolean = false;
      
      public static var §]l§:§9!Z§ = null;
      
      public static var §85§:§4D§;
      
      public static var §!F§:Boolean = true;
      
      public static var §]t§:Number = 1;
      
      public static var §0!6§:Number = 1;
      
      public static var §+C§:Number = 1;
      
      private static var §=!!§:§#!T§ = null;
      
      private static var §7n§:Boolean = false;
       
      
      public function §9!Z§()
      {
         super();
      }
      
      public static function §+!X§() : Number
      {
         return §,e§ * §0!6§;
      }
      
      public static function §0!b§() : Number
      {
         return §5§ * §+C§;
      }
      
      public static function §0!G§() : void
      {
         if(!§7n§)
         {
            §7n§ = true;
            if(§&!B§.§[q§)
            {
               §&!B§.§[q§.isPaused = true;
            }
            if(§&!B§.§^8§)
            {
               §&!B§.§^8§.§6y§(false);
            }
         }
      }
      
      public static function §`5§() : void
      {
         if(§7n§)
         {
            §7n§ = false;
            if(§&!B§.§[q§)
            {
               §&!B§.§[q§.isPaused = false;
            }
            if(§&!B§.§^8§)
            {
               §&!B§.§^8§.§6y§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §7n§;
      }
      
      public static function init(param1:§4D§, param2:int, param3:int) : void
      {
         §85§ = param1;
         §,e§ = param2;
         §5§ = param3;
         §`!1§ = new §>!!§(true,param1.canvas);
      }
      
      public static function §;!X§(param1:XML, param2:XML) : void
      {
         §;!f§.§;!X§(param1,param2);
      }
      
      public static function §5C§(param1:§;-§, param2:Array, param3:Function = null) : void
      {
         §5!$§.§5C§(param1,param2,param3);
      }
      
      public static function §[6§(param1:§1_§) : void
      {
         §5!$§.init(param1);
      }
      
      public static function §5q§(param1:§#!T§) : void
      {
         §=!!§ = param1;
         §5!$§.§5q§(param1);
      }
      
      public static function get §[-§() : §#!T§
      {
         return §=!!§;
      }
      
      public static function §,;§(param1:Boolean) : void
      {
         §!F§ = param1;
         §5!$§.background.§,;§(param1);
      }
      
      public static function §null §() : Boolean
      {
         return §!F§;
      }
      
      public static function §^#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§&!B§.§^8§)
         {
            §&!B§.§^8§.§1L§ = new Rectangle(param1,param2,param3,param4);
            §&!B§.§^8§.setCanvasSize(param3,param4);
         }
         §]t§ = Math.min(param3 / §,e§,param4 / §5§);
         §0!6§ = param3 / §,e§;
         §+C§ = param4 / §5§;
         §5!$§.§#l§(param3,param4);
      }
   }
}
