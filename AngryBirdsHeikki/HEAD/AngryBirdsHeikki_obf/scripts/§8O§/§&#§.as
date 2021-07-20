package §8O§
{
   import § A§.§8z§;
   import §#!C§.§3o§;
   import §&!b§.§%!5§;
   import §&L§.§?]§;
   import §,!V§.§`H§;
   import §7e§.§8!P§;
   import §9!'§.§0!%§;
   import §>'§.§super§;
   import flash.geom.Rectangle;
   
   public class §&#§
   {
      
      public static var §4!3§:int = 0;
      
      public static var §1l§:int = 0;
      
      public static var §3!D§:§0!%§;
      
      public static var §3B§:§%!5§;
      
      public static var §9!G§:Boolean = false;
      
      public static var §<!,§:§&#§ = null;
      
      public static var §%!X§:§super§;
      
      public static var §]X§:Boolean = true;
      
      public static var §&!J§:Number = 1;
      
      public static var §>!L§:Number = 1;
      
      public static var §>!§:Number = 1;
      
      private static var §&!E§:§`H§ = null;
      
      private static var §^Z§:Boolean = false;
       
      
      public function §&#§()
      {
         super();
      }
      
      public static function §4!Q§() : Number
      {
         return §4!3§ * §>!L§;
      }
      
      public static function §3H§() : Number
      {
         return §1l§ * §>!§;
      }
      
      public static function §?p§() : void
      {
         if(!§^Z§)
         {
            §^Z§ = true;
            if(§?]§.§+!9§)
            {
               §?]§.§+!9§.isPaused = true;
            }
            if(§?]§.§`!H§)
            {
               §?]§.§`!H§.§]!M§(false);
            }
         }
      }
      
      public static function §3!H§() : void
      {
         if(§^Z§)
         {
            §^Z§ = false;
            if(§?]§.§+!9§)
            {
               §?]§.§+!9§.isPaused = false;
            }
            if(§?]§.§`!H§)
            {
               §?]§.§`!H§.§]!M§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §^Z§;
      }
      
      public static function init(param1:§super§, param2:int, param3:int) : void
      {
         §%!X§ = param1;
         §4!3§ = param2;
         §1l§ = param3;
         §3B§ = new §%!5§(true,param1.canvas);
      }
      
      public static function §7S§(param1:XML, param2:XML) : void
      {
         §8z§.§7S§(param1,param2);
      }
      
      public static function §2@§(param1:§3o§, param2:Array, param3:Function = null) : void
      {
         §3!D§.§2@§(param1,param2,param3);
      }
      
      public static function §8>§(param1:§8!P§) : void
      {
         §3!D§.init(param1);
      }
      
      public static function §>A§(param1:§`H§) : void
      {
         §&!E§ = param1;
         §3!D§.§>A§(param1);
      }
      
      public static function get §"1§() : §`H§
      {
         return §&!E§;
      }
      
      public static function §]!W§(param1:Boolean) : void
      {
         §]X§ = param1;
         §3!D§.background.§]!W§(param1);
      }
      
      public static function §2!g§() : Boolean
      {
         return §]X§;
      }
      
      public static function §&C§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§?]§.§`!H§)
         {
            §?]§.§`!H§.§-y§ = new Rectangle(param1,param2,param3,param4);
            §?]§.§`!H§.setCanvasSize(param3,param4);
         }
         §&!J§ = Math.min(param3 / §4!3§,param4 / §1l§);
         §>!L§ = param3 / §4!3§;
         §>!§ = param4 / §1l§;
         §3!D§.§2#§(param3,param4);
      }
   }
}
