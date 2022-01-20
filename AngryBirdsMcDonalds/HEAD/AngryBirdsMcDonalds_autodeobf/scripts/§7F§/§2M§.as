package §7F§
{
   import § !J§.§%M§;
   import §%%§.§3P§;
   import §'+§.§0!&§;
   import §,4§.§0B§;
   import §-h§.§4!H§;
   import §8]§.§^Q§;
   import §9!§.§,!l§;
   import §@!1§.§#!<§;
   import flash.geom.Rectangle;
   
   public class §2M§
   {
      
      public static var §&a§:int = 0;
      
      public static var §0Z§:int = 0;
      
      public static var §1?§:§%M§;
      
      public static var §-!H§:§0!&§;
      
      public static var §,x§:Boolean = false;
      
      public static var §9>§:§2M§ = null;
      
      public static var §%!=§:§#!<§;
      
      public static var §^!h§:Boolean = true;
      
      public static var §>!E§:Number = 1;
      
      public static var §4f§:Number = 1;
      
      public static var §50§:Number = 1;
      
      private static var §,!o§:§4!H§ = null;
      
      private static var §57§:Boolean = false;
       
      
      public function §2M§()
      {
         super();
      }
      
      public static function §4F§() : Number
      {
         return §&a§ * §4f§;
      }
      
      public static function §!!6§() : Number
      {
         return §0Z§ * §50§;
      }
      
      public static function §[,§() : void
      {
         if(!§57§)
         {
            §57§ = true;
            if(§3P§.§;m§)
            {
               §3P§.§;m§.isPaused = true;
            }
            if(§3P§.§6_§)
            {
               §3P§.§6_§.§@$§(false);
            }
         }
      }
      
      public static function §3!M§() : void
      {
         if(§57§)
         {
            §57§ = false;
            if(§3P§.§;m§)
            {
               §3P§.§;m§.isPaused = false;
            }
            if(§3P§.§6_§)
            {
               §3P§.§6_§.§@$§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §57§;
      }
      
      public static function init(param1:§#!<§, param2:int, param3:int) : void
      {
         §%!=§ = param1;
         §&a§ = param2;
         §0Z§ = param3;
         §-!H§ = new §0!&§(true,param1.canvas);
      }
      
      public static function §4]§(param1:XML, param2:XML) : void
      {
         §,!l§.§4]§(param1,param2);
      }
      
      public static function §<!C§(param1:§^Q§, param2:Array, param3:Function = null) : void
      {
         §1?§.§<!C§(param1,param2,param3);
      }
      
      public static function §;!M§(param1:§0B§) : void
      {
         §1?§.init(param1);
      }
      
      public static function setController(param1:§4!H§) : void
      {
         §,!o§ = param1;
         §1?§.setController(param1);
      }
      
      public static function get §`r§() : §4!H§
      {
         return §,!o§;
      }
      
      public static function §95§(param1:Boolean) : void
      {
         §^!h§ = param1;
         §1?§.background.§95§(param1);
      }
      
      public static function §!=§() : Boolean
      {
         return §^!h§;
      }
      
      public static function §;N§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§3P§.§6_§)
         {
            §3P§.§6_§.§5!4§ = new Rectangle(param1,param2,param3,param4);
            §3P§.§6_§.setCanvasSize(param3,param4);
         }
         §>!E§ = Math.min(param3 / §&a§,param4 / §0Z§);
         §4f§ = param3 / §&a§;
         §50§ = param4 / §0Z§;
         §1?§.§^+§(param3,param4);
      }
   }
}
