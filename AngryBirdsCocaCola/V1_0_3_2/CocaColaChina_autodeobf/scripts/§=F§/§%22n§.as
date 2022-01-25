package §=F§
{
   import §!!a§.§8=§;
   import §+R§.§0O§;
   import §24§.§5!,§;
   import §5!?§.§>"§;
   import §6!Q§.§-+§;
   import §8S§.§7,§;
   import §[o§.§4L§;
   import §]!>§.§6m§;
   import flash.geom.Rectangle;
   
   public class §"n§
   {
      
      public static var §,T§:int = 0;
      
      public static var §8-§:int = 0;
      
      public static var §[b§:§>"§;
      
      public static var § !7§:§-+§;
      
      public static var §2!@§:Boolean = false;
      
      public static var §8<§:§"n§ = null;
      
      public static var §%p§:§6m§;
      
      public static var §,<§:Boolean = true;
      
      public static var §9d§:Number = 1;
      
      public static var §#"§:Number = 1;
      
      public static var §+l§:Number = 1;
      
      private static var §!!3§:§7,§ = null;
      
      private static var §^!Q§:Boolean = false;
       
      
      public function §"n§()
      {
         super();
      }
      
      public static function § x§() : Number
      {
         return §,T§ * §#"§;
      }
      
      public static function §7-§() : Number
      {
         return §8-§ * §+l§;
      }
      
      public static function §0@§() : void
      {
         if(!§^!Q§)
         {
            §^!Q§ = true;
            if(§0O§.§&H§)
            {
               §0O§.§&H§.§catch§ = true;
            }
            if(§0O§.§=&§)
            {
               §0O§.§=&§.§##§(false);
            }
         }
      }
      
      public static function §<l§() : void
      {
         if(§^!Q§)
         {
            §^!Q§ = false;
            if(§0O§.§&H§)
            {
               §0O§.§&H§.§catch§ = false;
            }
            if(§0O§.§=&§)
            {
               §0O§.§=&§.§##§(true);
            }
         }
      }
      
      public static function get §catch§() : Boolean
      {
         return §^!Q§;
      }
      
      public static function init(param1:§6m§, param2:int, param3:int) : void
      {
         §%p§ = param1;
         §,T§ = param2;
         §8-§ = param3;
         § !7§ = new §-+§(true,param1.canvas);
      }
      
      public static function §'S§(param1:XML, param2:XML) : void
      {
         §4L§.§'S§(param1,param2);
      }
      
      public static function §?i§(param1:§5!,§, param2:Array, param3:Function = null) : void
      {
         §[b§.§?i§(param1,param2,param3);
      }
      
      public static function §%^§(param1:§8=§) : void
      {
         §[b§.init(param1);
      }
      
      public static function §51§(param1:§7,§) : void
      {
         §!!3§ = param1;
         §[b§.§51§(param1);
      }
      
      public static function get §5]§() : §7,§
      {
         return §!!3§;
      }
      
      public static function §%a§(param1:Boolean) : void
      {
         §,<§ = param1;
         §[b§.background.§%a§(param1);
      }
      
      public static function §?2§() : Boolean
      {
         return §,<§;
      }
      
      public static function §;'§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§0O§.§=&§)
         {
            §0O§.§=&§.§+;§ = new Rectangle(param1,param2,param3,param4);
            §0O§.§=&§.setCanvasSize(param3,param4);
         }
         §9d§ = Math.min(param3 / §,T§,param4 / §8-§);
         §#"§ = param3 / §,T§;
         §+l§ = param4 / §8-§;
         §[b§.§[!3§(param3,param4);
      }
   }
}
