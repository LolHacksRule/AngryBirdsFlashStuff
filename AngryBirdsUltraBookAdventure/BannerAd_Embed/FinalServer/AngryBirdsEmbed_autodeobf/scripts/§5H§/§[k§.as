package §5H§
{
   import §#!;§.§;T§;
   import §#'§.§0X§;
   import §+!"§.§3<§;
   import §0!5§.include;
   import §6J§.§&!;§;
   import §7!0§.§9!0§;
   import §?b§.§7!,§;
   import §@!H§.§!!1§;
   import flash.geom.Rectangle;
   
   public class §[k§
   {
      
      public static var §>§:int = 0;
      
      public static var §%i§:int = 0;
      
      public static var §&@§:§7!,§;
      
      public static var §+S§:§3<§;
      
      public static var §,#§:Boolean = false;
      
      public static var §?T§:§[k§ = null;
      
      public static var §;!+§:§0X§;
      
      public static var §9!-§:Boolean = true;
      
      public static var §9U§:Number = 1;
      
      public static var §3!5§:Number = 1;
      
      public static var §@$§:Number = 1;
      
      private static var §+1§:§!!1§ = null;
      
      private static var §[!B§:Boolean = false;
       
      
      public function §[k§()
      {
         super();
      }
      
      public static function §>!2§() : Number
      {
         return §>§ * §3!5§;
      }
      
      public static function §`&§() : Number
      {
         return §%i§ * §@$§;
      }
      
      public static function pause() : void
      {
         if(!§[!B§)
         {
            §[!B§ = true;
            if(§;T§.§1I§)
            {
               §;T§.§1I§.isPaused = true;
            }
            if(§;T§.§,H§)
            {
               §;T§.§,H§.§4-§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§[!B§)
         {
            §[!B§ = false;
            if(§;T§.§1I§)
            {
               §;T§.§1I§.isPaused = false;
            }
            if(§;T§.§,H§)
            {
               §;T§.§,H§.§4-§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §[!B§;
      }
      
      public static function init(param1:§0X§, param2:int, param3:int) : void
      {
         §;!+§ = param1;
         §>§ = param2;
         §%i§ = param3;
         §+S§ = new §3<§(true,param1.canvas);
      }
      
      public static function §2!F§(param1:XML, param2:XML) : void
      {
         §9!0§.§2!F§(param1,param2);
      }
      
      public static function § <§(param1:include, param2:Array, param3:Function = null) : void
      {
         §&@§.§ <§(param1,param2,param3);
      }
      
      public static function §#8§(param1:§&!;§) : void
      {
         §&@§.init(param1);
      }
      
      public static function §^L§(param1:§!!1§) : void
      {
         §+1§ = param1;
         §&@§.§^L§(param1);
      }
      
      public static function get controller() : §!!1§
      {
         return §+1§;
      }
      
      public static function §^v§(param1:Boolean) : void
      {
         §9!-§ = param1;
         §&@§.background.§^v§(param1);
      }
      
      public static function §,V§() : Boolean
      {
         return §9!-§;
      }
      
      public static function §%e§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§;T§.§,H§)
         {
            §;T§.§,H§.§2!&§ = new Rectangle(param1,param2,param3,param4);
            §;T§.§,H§.setCanvasSize(param3,param4);
         }
         §9U§ = Math.min(param3 / §>§,param4 / §%i§);
         §3!5§ = param3 / §>§;
         §@$§ = param4 / §%i§;
         §&@§.§"&§(param3,param4);
      }
   }
}
