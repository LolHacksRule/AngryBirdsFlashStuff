package §3-§
{
   import § !"§.§%!6§;
   import §"!G§.§^x§;
   import §+!R§.§8!0§;
   import §+D§.§5!P§;
   import §1!K§.§06§;
   import §8!I§.§=]§;
   import §=X§.§"!6§;
   import §>Q§.§5!5§;
   import flash.geom.Rectangle;
   
   public class §1L§
   {
      
      public static var §6w§:int = 0;
      
      public static var §[S§:int = 0;
      
      public static var §"f§:§5!P§;
      
      public static var §-G§:§06§;
      
      public static var §&P§:Boolean = false;
      
      public static var §0]§:§1L§ = null;
      
      public static var §<!,§:§%!6§;
      
      public static var §]y§:Boolean = true;
      
      public static var §&>§:Number = 1;
      
      public static var §%v§:Number = 1;
      
      public static var §1t§:Number = 1;
      
      private static var §"u§:§^x§ = null;
      
      private static var §%!&§:Boolean = false;
       
      
      public function §1L§()
      {
         super();
      }
      
      public static function §]!E§() : Number
      {
         return §6w§ * §%v§;
      }
      
      public static function §<!J§() : Number
      {
         return §[S§ * §1t§;
      }
      
      public static function §;!Q§() : void
      {
         if(!§%!&§)
         {
            §%!&§ = true;
            if(§5!5§.§!J§)
            {
               §5!5§.§!J§.isPaused = true;
            }
            if(§5!5§.§5F§)
            {
               §5!5§.§5F§.§9!K§(false);
            }
         }
      }
      
      public static function §'!Q§() : void
      {
         if(§%!&§)
         {
            §%!&§ = false;
            if(§5!5§.§!J§)
            {
               §5!5§.§!J§.isPaused = false;
            }
            if(§5!5§.§5F§)
            {
               §5!5§.§5F§.§9!K§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §%!&§;
      }
      
      public static function init(param1:§%!6§, param2:int, param3:int) : void
      {
         §<!,§ = param1;
         §6w§ = param2;
         §[S§ = param3;
         §-G§ = new §06§(true,param1.canvas);
      }
      
      public static function §%S§(param1:XML, param2:XML) : void
      {
         §=]§.§%S§(param1,param2);
      }
      
      public static function §!!,§(param1:§8!0§, param2:Array, param3:Function = null) : void
      {
         §"f§.§!!,§(param1,param2,param3);
      }
      
      public static function §^!>§(param1:§"!6§) : void
      {
         §"f§.init(param1);
      }
      
      public static function §=c§(param1:§^x§) : void
      {
         §"u§ = param1;
         §"f§.§=c§(param1);
      }
      
      public static function get §[>§() : §^x§
      {
         return §"u§;
      }
      
      public static function §#y§(param1:Boolean) : void
      {
         §]y§ = param1;
         §"f§.background.§#y§(param1);
      }
      
      public static function §"I§() : Boolean
      {
         return §]y§;
      }
      
      public static function §4!H§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§5!5§.§5F§)
         {
            §5!5§.§5F§.§;S§ = new Rectangle(param1,param2,param3,param4);
            §5!5§.§5F§.setCanvasSize(param3,param4);
         }
         §&>§ = Math.min(param3 / §6w§,param4 / §[S§);
         §%v§ = param3 / §6w§;
         §1t§ = param4 / §[S§;
         §"f§.§?B§(param3,param4);
      }
   }
}
