package §-l§
{
   import §&I§.§3! §;
   import §'8§.§>;§;
   import §+!%§.§'!"§;
   import §,Y§.§32§;
   import §0[§.§!!"§;
   import §2!,§.§!W§;
   import §2x§.§6!>§;
   import §<!@§.§+!-§;
   import flash.geom.Rectangle;
   
   public class §?'§
   {
      
      public static var §?t§:int = 0;
      
      public static var §,!,§:int = 0;
      
      public static var §5!§:§'!"§;
      
      public static var §,!B§:§6!>§;
      
      public static var §!k§:Boolean = false;
      
      public static var §^!=§:§?'§ = null;
      
      public static var §0_§:§!W§;
      
      public static var §&4§:Boolean = true;
      
      public static var §+^§:Number = 1;
      
      public static var §]!§:Number = 1;
      
      public static var §&!0§:Number = 1;
      
      private static var §4a§:§>;§ = null;
      
      private static var §6E§:Boolean = false;
       
      
      public function §?'§()
      {
         super();
      }
      
      public static function §`[§() : Number
      {
         return §?t§ * §]!§;
      }
      
      public static function §3h§() : Number
      {
         return §,!,§ * §&!0§;
      }
      
      public static function pause() : void
      {
         if(!§6E§)
         {
            §6E§ = true;
            if(§3! §.§`S§)
            {
               §3! §.§`S§.§;P§ = true;
            }
            if(§3! §.§"n§)
            {
               §3! §.§"n§.§]h§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§6E§)
         {
            §6E§ = false;
            if(§3! §.§`S§)
            {
               §3! §.§`S§.§;P§ = false;
            }
            if(§3! §.§"n§)
            {
               §3! §.§"n§.§]h§(true);
            }
         }
      }
      
      public static function get §;P§() : Boolean
      {
         return §6E§;
      }
      
      public static function init(param1:§!W§, param2:int, param3:int) : void
      {
         §0_§ = param1;
         §?t§ = param2;
         §,!,§ = param3;
         §,!B§ = new §6!>§(true,param1.canvas);
      }
      
      public static function §#u§(param1:XML, param2:XML) : void
      {
         §32§.§#u§(param1,param2);
      }
      
      public static function §#!?§(param1:§!!"§, param2:Array, param3:Function = null) : void
      {
         §5!§.§#!?§(param1,param2,param3);
      }
      
      public static function §-7§(param1:§+!-§) : void
      {
         §5!§.init(param1);
      }
      
      public static function §]`§(param1:§>;§) : void
      {
         §4a§ = param1;
         §5!§.§]`§(param1);
      }
      
      public static function get controller() : §>;§
      {
         return §4a§;
      }
      
      public static function §]!!§(param1:Boolean) : void
      {
         §&4§ = param1;
         §5!§.background.§]!!§(param1);
      }
      
      public static function §]P§() : Boolean
      {
         return §&4§;
      }
      
      public static function §<C§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§3! §.§"n§)
         {
            §3! §.§"n§.§5P§ = new Rectangle(param1,param2,param3,param4);
            §3! §.§"n§.setCanvasSize(param3,param4);
         }
         §+^§ = Math.min(param3 / §?t§,param4 / §,!,§);
         §]!§ = param3 / §?t§;
         §&!0§ = param4 / §,!,§;
         §5!§.§;N§(param3,param4);
      }
   }
}
