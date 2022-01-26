package §7!U§
{
   import §"!@§.§&;§;
   import §"!E§.§]p§;
   import §'!S§.§,!%§;
   import §'b§.§"^§;
   import §-!6§.§]![§;
   import §3E§.§6w§;
   import §3i§.§6c§;
   import §9!%§.§<!L§;
   import flash.geom.Rectangle;
   
   public class §2!7§
   {
      
      public static var §'s§:int = 0;
      
      public static var §&!8§:int = 0;
      
      public static var §5G§:§6w§;
      
      public static var §5H§:§]![§;
      
      public static var §;6§:Boolean = false;
      
      public static var §4!§:§2!7§ = null;
      
      public static var §6'§:§6c§;
      
      public static var §!A§:Boolean = true;
      
      public static var §1$§:Number = 1;
      
      public static var §!!D§:Number = 1;
      
      public static var §0m§:Number = 1;
      
      private static var §@O§:§]p§ = null;
      
      private static var §@7§:Boolean = false;
       
      
      public function §2!7§()
      {
         super();
      }
      
      public static function § !+§() : Number
      {
         return §'s§ * §!!D§;
      }
      
      public static function §=I§() : Number
      {
         return §&!8§ * §0m§;
      }
      
      public static function §9!V§() : void
      {
         if(!§@7§)
         {
            §@7§ = true;
            if(§,!%§.§7x§)
            {
               §,!%§.§7x§.isPaused = true;
            }
            if(§,!%§.§]!C§)
            {
               §,!%§.§]!C§.§]!]§(false);
            }
         }
      }
      
      public static function §2T§() : void
      {
         if(§@7§)
         {
            §@7§ = false;
            if(§,!%§.§7x§)
            {
               §,!%§.§7x§.isPaused = false;
            }
            if(§,!%§.§]!C§)
            {
               §,!%§.§]!C§.§]!]§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §@7§;
      }
      
      public static function init(param1:§6c§, param2:int, param3:int) : void
      {
         §6'§ = param1;
         §'s§ = param2;
         §&!8§ = param3;
         §5H§ = new §]![§(true,param1.canvas);
      }
      
      public static function §=<§(param1:XML, param2:XML) : void
      {
         §<!L§.§=<§(param1,param2);
      }
      
      public static function §@!M§(param1:§"^§, param2:Array, param3:Function = null) : void
      {
         §5G§.§@!M§(param1,param2,param3);
      }
      
      public static function §'!D§(param1:§&;§) : void
      {
         §5G§.init(param1);
      }
      
      public static function §`!@§(param1:§]p§) : void
      {
         §@O§ = param1;
         §5G§.§`!@§(param1);
      }
      
      public static function get §@!H§() : §]p§
      {
         return §@O§;
      }
      
      public static function §9!O§(param1:Boolean) : void
      {
         §!A§ = param1;
         §5G§.background.§9!O§(param1);
      }
      
      public static function §^4§() : Boolean
      {
         return §!A§;
      }
      
      public static function § !7§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.§<O§ = new Rectangle(param1,param2,param3,param4);
            §,!%§.§]!C§.setCanvasSize(param3,param4);
         }
         §1$§ = Math.min(param3 / §'s§,param4 / §&!8§);
         §!!D§ = param3 / §'s§;
         §0m§ = param4 / §&!8§;
         §5G§.§@!?§(param3,param4);
      }
   }
}
