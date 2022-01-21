package § !Y§
{
   import § %§.§`M§;
   import §!U§.§2d§;
   import §%!n§.§"+§;
   import §3!@§.§ s§;
   import §5K§.§6d§;
   import §<!Z§.§8X§;
   import §[!L§.§^j§;
   import §finally§.§@z§;
   import flash.geom.Rectangle;
   
   public class §2#§
   {
      
      public static var §#@§:int = 0;
      
      public static var §#k§:int = 0;
      
      public static var §"@§:§ s§;
      
      public static var §@!!§:§6d§;
      
      public static var §6T§:Boolean = false;
      
      public static var §<o§:§2#§ = null;
      
      public static var §>§:§8X§;
      
      public static var §2o§:Boolean = true;
      
      public static var §'@§:Number = 1;
      
      public static var §`4§:Number = 1;
      
      public static var §2"§:Number = 1;
      
      private static var §2u§:§^j§ = null;
      
      private static var §[#§:Boolean = false;
       
      
      public function §2#§()
      {
         super();
      }
      
      public static function §4D§() : Number
      {
         return §#@§ * §`4§;
      }
      
      public static function §!!Y§() : Number
      {
         return §#k§ * §2"§;
      }
      
      public static function §2![§() : void
      {
         if(!§[#§)
         {
            §[#§ = true;
            if(§`M§.§7!7§)
            {
               §`M§.§7!7§.isPaused = true;
            }
            if(§`M§.§93§)
            {
               §`M§.§93§.§5%§(false);
            }
         }
      }
      
      public static function §1F§() : void
      {
         if(§[#§)
         {
            §[#§ = false;
            if(§`M§.§7!7§)
            {
               §`M§.§7!7§.isPaused = false;
            }
            if(§`M§.§93§)
            {
               §`M§.§93§.§5%§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §[#§;
      }
      
      public static function init(param1:§8X§, param2:int, param3:int) : void
      {
         §>§ = param1;
         §#@§ = param2;
         §#k§ = param3;
         §@!!§ = new §6d§(true,param1.canvas);
      }
      
      public static function §]A§(param1:XML, param2:XML) : void
      {
         §"+§.§]A§(param1,param2);
      }
      
      public static function §%!M§(param1:§2d§, param2:Array, param3:Function = null) : void
      {
         §"@§.§%!M§(param1,param2,param3);
      }
      
      public static function §;z§(param1:§@z§) : void
      {
         §"@§.init(param1);
      }
      
      public static function setController(param1:§^j§) : void
      {
         §2u§ = param1;
         §"@§.setController(param1);
      }
      
      public static function get §[I§() : §^j§
      {
         return §2u§;
      }
      
      public static function §">§(param1:Boolean) : void
      {
         §2o§ = param1;
         §"@§.background.§">§(param1);
      }
      
      public static function §1A§() : Boolean
      {
         return §2o§;
      }
      
      public static function §]!L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§`M§.§93§)
         {
            §`M§.§93§.§%A§ = new Rectangle(param1,param2,param3,param4);
            §`M§.§93§.setCanvasSize(param3,param4);
         }
         §'@§ = Math.min(param3 / §#@§,param4 / §#k§);
         §`4§ = param3 / §#@§;
         §2"§ = param4 / §#k§;
         §"@§.§;!`§(param3,param4);
      }
   }
}
