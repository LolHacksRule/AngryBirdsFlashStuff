package §!J§
{
   import §#K§.§?I§;
   import §&N§.§9C§;
   import §'!H§.§5,§;
   import §,B§.§?7§;
   import §7W§.§ !+§;
   import §<!Y§.§7!1§;
   import §?'§.§9N§;
   import §]C§.§9!S§;
   import flash.geom.Rectangle;
   
   public class §[&§
   {
      
      public static var §"L§:int = 0;
      
      public static var §#S§:int = 0;
      
      public static var §&!'§:§9N§;
      
      public static var §?!§:§9C§;
      
      public static var §!N§:Boolean = false;
      
      public static var §4n§:§[&§ = null;
      
      public static var §;L§:§7!1§;
      
      public static var §-!+§:Boolean = true;
      
      public static var §4'§:Number = 1;
      
      public static var §8n§:Number = 1;
      
      public static var §6!H§:Number = 1;
      
      private static var §2t§:§9!S§ = null;
      
      private static var §'V§:Boolean = false;
       
      
      public function §[&§()
      {
         super();
      }
      
      public static function §6!§() : Number
      {
         return §"L§ * §8n§;
      }
      
      public static function §#0§() : Number
      {
         return §#S§ * §6!H§;
      }
      
      public static function §[]§() : void
      {
         if(!§'V§)
         {
            §'V§ = true;
            if(§ !+§.§?!L§)
            {
               § !+§.§?!L§.§5!T§ = true;
            }
            if(§ !+§.§ Z§)
            {
               § !+§.§ Z§.§%-§(false);
            }
         }
      }
      
      public static function §>!E§() : void
      {
         if(§'V§)
         {
            §'V§ = false;
            if(§ !+§.§?!L§)
            {
               § !+§.§?!L§.§5!T§ = false;
            }
            if(§ !+§.§ Z§)
            {
               § !+§.§ Z§.§%-§(true);
            }
         }
      }
      
      public static function get §5!T§() : Boolean
      {
         return §'V§;
      }
      
      public static function init(param1:§7!1§, param2:int, param3:int) : void
      {
         §;L§ = param1;
         §"L§ = param2;
         §#S§ = param3;
         §?!§ = new §9C§(true,param1.canvas);
      }
      
      public static function §"F§(param1:XML, param2:XML) : void
      {
         §?7§.§"F§(param1,param2);
      }
      
      public static function §<!5§(param1:§5,§, param2:Array, param3:Function = null) : void
      {
         §&!'§.§<!5§(param1,param2,param3);
      }
      
      public static function §,s§(param1:§?I§) : void
      {
         §&!'§.init(param1);
      }
      
      public static function §2P§(param1:§9!S§) : void
      {
         §2t§ = param1;
         §&!'§.§2P§(param1);
      }
      
      public static function get §&#§() : §9!S§
      {
         return §2t§;
      }
      
      public static function §@!-§(param1:Boolean) : void
      {
         §-!+§ = param1;
         §&!'§.background.§@!-§(param1);
      }
      
      public static function §'a§() : Boolean
      {
         return §-!+§;
      }
      
      public static function §7!V§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.§ l§ = new Rectangle(param1,param2,param3,param4);
            § !+§.§ Z§.setCanvasSize(param3,param4);
         }
         §4'§ = Math.min(param3 / §"L§,param4 / §#S§);
         §8n§ = param3 / §"L§;
         §6!H§ = param4 / §#S§;
         §&!'§.§8"§(param3,param4);
      }
   }
}
