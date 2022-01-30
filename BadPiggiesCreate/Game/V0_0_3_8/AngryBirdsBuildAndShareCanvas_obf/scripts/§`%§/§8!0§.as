package §`%§
{
   import §%!<§.§7V§;
   import §%h§.§5X§;
   import §'!O§.§@!l§;
   import §0!F§.§^d§;
   import §4!S§.§&!4§;
   import §4u§.§26§;
   import §6!]§.§"!@§;
   import §?l§.§9!X§;
   import flash.geom.Rectangle;
   
   public class §8!0§
   {
      
      public static var §;"#§:int = 0;
      
      public static var §3g§:int = 0;
      
      public static var §?2§:§5X§;
      
      public static var §&!S§:§26§;
      
      public static var §`"&§:Boolean = false;
      
      public static var §!!g§:§8!0§ = null;
      
      public static var §%R§:§"!@§;
      
      public static var §4#§:Boolean = true;
      
      public static var §`!f§:Number = 1;
      
      public static var §&!_§:Number = 1;
      
      public static var §6S§:Number = 1;
      
      private static var §0I§:§&!4§ = null;
      
      private static var §7!g§:Boolean = false;
       
      
      public function §8!0§()
      {
         super();
      }
      
      public static function §]f§() : Number
      {
         return §;"#§ * §&!_§;
      }
      
      public static function §4!;§() : Number
      {
         return §3g§ * §6S§;
      }
      
      public static function pause() : void
      {
         if(!§7!g§)
         {
            §7!g§ = true;
            if(§^d§.§,"'§)
            {
               §^d§.§,"'§.isPaused = true;
            }
            if(§^d§.§+!f§)
            {
               §^d§.§+!f§.§3G§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§7!g§)
         {
            §7!g§ = false;
            if(§^d§.§,"'§)
            {
               §^d§.§,"'§.isPaused = false;
            }
            if(§^d§.§+!f§)
            {
               §^d§.§+!f§.§3G§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §7!g§;
      }
      
      public static function init(param1:§"!@§, param2:int, param3:int) : void
      {
         §%R§ = param1;
         §;"#§ = param2;
         §3g§ = param3;
         §&!S§ = new §26§(true,param1.canvas);
      }
      
      public static function §,-§(param1:XML, param2:XML) : void
      {
         §7V§.§,-§(param1,param2);
      }
      
      public static function §4!I§(param1:§9!X§, param2:Array, param3:Function = null) : void
      {
         §?2§.§4!I§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§@!l§) : void
      {
         §?2§.init(param1);
      }
      
      public static function §#8§(param1:§&!4§) : void
      {
         §0I§ = param1;
         §?2§.§#8§(param1);
      }
      
      public static function get §00§() : §&!4§
      {
         return §0I§;
      }
      
      public static function §4s§(param1:Boolean) : void
      {
         §4#§ = param1;
         §?2§.background.§4s§(param1);
      }
      
      public static function §9!n§() : Boolean
      {
         return §4#§;
      }
      
      public static function §,",§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.§#%§ = new Rectangle(param1,param2,param3,param4);
            §^d§.§+!f§.setCanvasSize(param3,param4);
         }
         §`!f§ = Math.min(param3 / §;"#§,param4 / §3g§);
         §&!_§ = param3 / §;"#§;
         §6S§ = param4 / §3g§;
         §?2§.§#!g§(param3,param4);
      }
   }
}
