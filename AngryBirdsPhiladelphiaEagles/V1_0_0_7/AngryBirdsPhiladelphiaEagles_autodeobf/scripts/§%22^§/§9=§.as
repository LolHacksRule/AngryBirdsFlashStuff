package §"^§
{
   import §!6§.§[e§;
   import §#!9§.§2$§;
   import §'d§.§,_§;
   import §+=§.§3!,§;
   import §,!F§.§#§;
   import §3!%§.§#!K§;
   import §5!'§.§9P§;
   import §>w§.;
   import flash.geom.Rectangle;
   
   public class §9=§
   {
      
      public static var §^&§:int = 0;
      
      public static var §"#§:int = 0;
      
      public static var §<!@§:§#§;
      
      public static var §1u§:§[e§;
      
      public static var §<y§:Boolean = false;
      
      public static var §]K§:§9=§ = null;
      
      public static var §'S§:§2$§;
      
      public static var §]!3§:Boolean = true;
      
      public static var §@&§:Number = 1;
      
      public static var §'j§:Number = 1;
      
      public static var §-m§:Number = 1;
      
      private static var §42§:§3!,§ = null;
      
      private static var §]6§:Boolean = false;
       
      
      public function §9=§()
      {
         super();
      }
      
      public static function §@!$§() : Number
      {
         return §^&§ * §'j§;
      }
      
      public static function §3c§() : Number
      {
         return §"#§ * §-m§;
      }
      
      public static function pause() : void
      {
         if(!§]6§)
         {
            §]6§ = true;
            if(§#0§.§]!=§)
            {
               §#0§.§]!=§.isPaused = true;
            }
            if(§#0§.§#4§)
            {
               §#0§.§#4§.§[]§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§]6§)
         {
            §]6§ = false;
            if(§#0§.§]!=§)
            {
               §#0§.§]!=§.isPaused = false;
            }
            if(§#0§.§#4§)
            {
               §#0§.§#4§.§[]§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §]6§;
      }
      
      public static function init(param1:§2$§, param2:int, param3:int) : void
      {
         §'S§ = param1;
         §^&§ = param2;
         §"#§ = param3;
         §1u§ = new §[e§(true,param1.canvas);
      }
      
      public static function §@!;§(param1:XML, param2:XML) : void
      {
         §,_§.§@!;§(param1,param2);
      }
      
      public static function §`W§(param1:§9P§, param2:Array, param3:Function = null) : void
      {
         §<!@§.§`W§(param1,param2,param3);
      }
      
      public static function §+p§(param1:§#!K§) : void
      {
         §<!@§.init(param1);
      }
      
      public static function §2R§(param1:§3!,§) : void
      {
         §42§ = param1;
         §<!@§.§2R§(param1);
      }
      
      public static function get controller() : §3!,§
      {
         return §42§;
      }
      
      public static function §=h§(param1:Boolean) : void
      {
         §]!3§ = param1;
         §<!@§.background.§=h§(param1);
      }
      
      public static function §?W§() : Boolean
      {
         return §]!3§;
      }
      
      public static function §2!+§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§#0§.§#4§)
         {
            §#0§.§#4§.§7!$§ = new Rectangle(param1,param2,param3,param4);
            §#0§.§#4§.setCanvasSize(param3,param4);
         }
         §@&§ = Math.min(param3 / §^&§,param4 / §"#§);
         §'j§ = param3 / §^&§;
         §-m§ = param4 / §"#§;
         §<!@§.§]!0§(param3,param4);
      }
   }
}
