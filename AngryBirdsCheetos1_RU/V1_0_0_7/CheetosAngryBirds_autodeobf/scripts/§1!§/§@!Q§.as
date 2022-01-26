package §1!§
{
   import § !F§.§?Z§;
   import §%n§.§5!6§;
   import §'D§.§`E§;
   import §-!§.§-§;
   import §0H§.§0!&§;
   import §6-§.§3R§;
   import §8!`§.§4J§;
   import §=Z§.§+q§;
   import flash.geom.Rectangle;
   
   public class §@!Q§
   {
      
      public static var §`!N§:int = 0;
      
      public static var §1!9§:int = 0;
      
      public static var §7l§:§4J§;
      
      public static var §^g§:§`E§;
      
      public static var §8G§:Boolean = false;
      
      public static var §5=§:§@!Q§ = null;
      
      public static var §'x§:§+q§;
      
      public static var §!!N§:Boolean = true;
      
      public static var §%!>§:Number = 1;
      
      public static var §'!§:Number = 1;
      
      public static var §2!M§:Number = 1;
      
      private static var §]!9§:§?Z§ = null;
      
      private static var §8!>§:Boolean = false;
       
      
      public function §@!Q§()
      {
         super();
      }
      
      public static function §>!6§() : Number
      {
         return §`!N§ * §'!§;
      }
      
      public static function §%!_§() : Number
      {
         return §1!9§ * §2!M§;
      }
      
      public static function §?!]§() : void
      {
         if(!§8!>§)
         {
            §8!>§ = true;
            if(§-§.§'L§)
            {
               §-§.§'L§.isPaused = true;
            }
            if(§-§.§-G§)
            {
               §-§.§-G§.§6!?§(false);
            }
         }
      }
      
      public static function §5m§() : void
      {
         if(§8!>§)
         {
            §8!>§ = false;
            if(§-§.§'L§)
            {
               §-§.§'L§.isPaused = false;
            }
            if(§-§.§-G§)
            {
               §-§.§-G§.§6!?§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §8!>§;
      }
      
      public static function init(param1:§+q§, param2:int, param3:int) : void
      {
         §'x§ = param1;
         §`!N§ = param2;
         §1!9§ = param3;
         §^g§ = new §`E§(true,param1.canvas);
      }
      
      public static function §3!D§(param1:XML, param2:XML) : void
      {
         §5!6§.§3!D§(param1,param2);
      }
      
      public static function §=!>§(param1:§3R§, param2:Array, param3:Function = null) : void
      {
         §7l§.§=!>§(param1,param2,param3);
      }
      
      public static function §"1§(param1:§0!&§) : void
      {
         §7l§.init(param1);
      }
      
      public static function §5"§(param1:§?Z§) : void
      {
         §]!9§ = param1;
         §7l§.§5"§(param1);
      }
      
      public static function get § !=§() : §?Z§
      {
         return §]!9§;
      }
      
      public static function §&H§(param1:Boolean) : void
      {
         §!!N§ = param1;
         §7l§.background.§&H§(param1);
      }
      
      public static function §@5§() : Boolean
      {
         return §!!N§;
      }
      
      public static function §=!V§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§-§.§-G§)
         {
            §-§.§-G§.§+!&§ = new Rectangle(param1,param2,param3,param4);
            §-§.§-G§.setCanvasSize(param3,param4);
         }
         §%!>§ = Math.min(param3 / §`!N§,param4 / §1!9§);
         §'!§ = param3 / §`!N§;
         §2!M§ = param4 / §1!9§;
         §7l§.§[A§(param3,param4);
      }
   }
}
