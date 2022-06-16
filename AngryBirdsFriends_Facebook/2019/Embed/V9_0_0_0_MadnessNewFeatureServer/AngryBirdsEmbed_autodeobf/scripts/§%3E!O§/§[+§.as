package §>!O§
{
   import §'6§.§8h§;
   import §+_§.§2!'§;
   import §,!,§.§2t§;
   import §2!!§.§<6§;
   import §2E§.§]B§;
   import §?!$§.§%1§;
   import §?j§.§9?§;
   import §`!4§.§6l§;
   import flash.geom.Rectangle;
   
   public class §[+§
   {
      
      public static var §'q§:int = 0;
      
      public static var §0!-§:int = 0;
      
      public static var §,!&§:§6l§;
      
      public static var §!N§:§8h§;
      
      public static var §^!I§:Boolean = false;
      
      public static var §"U§:§[+§ = null;
      
      public static var §&!"§:§%1§;
      
      public static var §&;§:Boolean = true;
      
      public static var §0p§:Number = 1;
      
      public static var §;!7§:Number = 1;
      
      public static var §!M§:Number = 1;
      
      private static var §+u§:§2!'§ = null;
      
      private static var §-X§:Boolean = false;
       
      
      public function §[+§()
      {
         super();
      }
      
      public static function §`!$§() : Number
      {
         return §'q§ * §;!7§;
      }
      
      public static function §case§() : Number
      {
         return §0!-§ * §!M§;
      }
      
      public static function pause() : void
      {
         if(!§-X§)
         {
            §-X§ = true;
            if(§2t§.§^!!§)
            {
               §2t§.§^!!§.isPaused = true;
            }
            if(§2t§.§,!E§)
            {
               §2t§.§,!E§.§"^§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§-X§)
         {
            §-X§ = false;
            if(§2t§.§^!!§)
            {
               §2t§.§^!!§.isPaused = false;
            }
            if(§2t§.§,!E§)
            {
               §2t§.§,!E§.§"^§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §-X§;
      }
      
      public static function init(param1:§%1§, param2:int, param3:int) : void
      {
         §&!"§ = param1;
         §'q§ = param2;
         §0!-§ = param3;
         §!N§ = new §8h§(true,param1.canvas);
      }
      
      public static function §^=§(param1:XML, param2:XML) : void
      {
         §]B§.§^=§(param1,param2);
      }
      
      public static function §''§(param1:§<6§, param2:Array, param3:Function = null) : void
      {
         §,!&§.§''§(param1,param2,param3);
      }
      
      public static function §true §(param1:§9?§) : void
      {
         §,!&§.init(param1);
      }
      
      public static function §^!0§(param1:§2!'§) : void
      {
         §+u§ = param1;
         §,!&§.§^!0§(param1);
      }
      
      public static function get controller() : §2!'§
      {
         return §+u§;
      }
      
      public static function §?m§(param1:Boolean) : void
      {
         §&;§ = param1;
         §,!&§.background.§?m§(param1);
      }
      
      public static function §1!8§() : Boolean
      {
         return §&;§;
      }
      
      public static function §@§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §0p§ = Math.min(param3 / §'q§,param4 / §0!-§);
         §;!7§ = param3 / §'q§;
         §!M§ = param4 / §0!-§;
         §2t§.§3P§ = new Rectangle(param1,param2,param3,param4);
         §2t§.§4I§ = true;
         §,!&§.§!6§(param3,param4);
      }
   }
}
