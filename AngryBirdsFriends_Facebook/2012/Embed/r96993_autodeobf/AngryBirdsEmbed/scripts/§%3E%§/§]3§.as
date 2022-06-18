package §>%§
{
   import § !'§.§"6§;
   import §-!C§.§3!H§;
   import §3v§.§^Y§;
   import §4c§.§]!%§;
   import §8!#§.§<n§;
   import §<!<§.§6t§;
   import §>A§.§`!6§;
   import §`i§.§2W§;
   import flash.geom.Rectangle;
   
   public class §]3§
   {
      
      public static var §1!D§:int = 0;
      
      public static var §#A§:int = 0;
      
      public static var §;v§:§2W§;
      
      public static var §^!,§:§^Y§;
      
      public static var §;!9§:Boolean = false;
      
      public static var §;g§:§]3§ = null;
      
      public static var §4#§:§]!%§;
      
      public static var §do §:Boolean = true;
      
      public static var §#1§:Number = 1;
      
      public static var §3=§:Number = 1;
      
      public static var §>F§:Number = 1;
      
      private static var §<;§:§`!6§ = null;
      
      private static var § T§:Boolean = false;
       
      
      public function §]3§()
      {
         super();
      }
      
      public static function §0$§() : Number
      {
         return §1!D§ * §3=§;
      }
      
      public static function §]!-§() : Number
      {
         return §#A§ * §>F§;
      }
      
      public static function pause() : void
      {
         if(!§ T§)
         {
            § T§ = true;
            if(§<n§.§6f§)
            {
               §<n§.§6f§.isPaused = true;
            }
            if(§<n§.§?@§)
            {
               §<n§.§?@§.§&!§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§ T§)
         {
            § T§ = false;
            if(§<n§.§6f§)
            {
               §<n§.§6f§.isPaused = false;
            }
            if(§<n§.§?@§)
            {
               §<n§.§?@§.§&!§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return § T§;
      }
      
      public static function init(param1:§]!%§, param2:int, param3:int) : void
      {
         §4#§ = param1;
         §1!D§ = param2;
         §#A§ = param3;
         §^!,§ = new §^Y§(true,param1.canvas);
      }
      
      public static function §0t§(param1:XML, param2:XML) : void
      {
         §6t§.§0t§(param1,param2);
      }
      
      public static function §5!$§(param1:§"6§, param2:Array, param3:Function = null) : void
      {
         §;v§.§5!$§(param1,param2,param3);
      }
      
      public static function §=I§(param1:§3!H§) : void
      {
         §;v§.init(param1);
      }
      
      public static function §1_§(param1:§`!6§) : void
      {
         §<;§ = param1;
         §;v§.§1_§(param1);
      }
      
      public static function get controller() : §`!6§
      {
         return §<;§;
      }
      
      public static function §@S§(param1:Boolean) : void
      {
         §do § = param1;
         §;v§.background.§@S§(param1);
      }
      
      public static function §[L§() : Boolean
      {
         return §do §;
      }
      
      public static function §,!2§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§<n§.§?@§)
         {
            §<n§.§?@§.§"c§ = new Rectangle(param1,param2,param3,param4);
            §<n§.§?@§.setCanvasSize(param3,param4);
         }
         §#1§ = Math.min(param3 / §1!D§,param4 / §#A§);
         §3=§ = param3 / §1!D§;
         §>F§ = param4 / §#A§;
         §;v§.§ +§(param3,param4);
      }
   }
}
