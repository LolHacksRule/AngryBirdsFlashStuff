package §@w§
{
   import §"!J§.§]!E§;
   import §+!0§.§8l§;
   import §+!N§.§1[§;
   import §-!5§.§ !2§;
   import §5=§.§8G§;
   import §5J§.§>$§;
   import §<!F§.§,f§;
   import §>2§.§4h§;
   import flash.geom.Rectangle;
   
   public class §2G§
   {
      
      public static var §=!M§:int = 0;
      
      public static var §"!§:int = 0;
      
      public static var §7!,§:§4h§;
      
      public static var § z§:§ !2§;
      
      public static var §`T§:Boolean = false;
      
      public static var §case §:§2G§ = null;
      
      public static var §4T§:§,f§;
      
      public static var § 6§:Boolean = true;
      
      public static var §42§:Number = 1;
      
      public static var §8$§:Number = 1;
      
      public static var §;!P§:Number = 1;
      
      private static var §;L§:§]!E§ = null;
      
      private static var §^W§:Boolean = false;
       
      
      public function §2G§()
      {
         super();
      }
      
      public static function §%L§() : Number
      {
         return §=!M§ * §8$§;
      }
      
      public static function §2a§() : Number
      {
         return §"!§ * §;!P§;
      }
      
      public static function pause() : void
      {
         if(!§^W§)
         {
            §^W§ = true;
            if(§>$§.§3D§)
            {
               §>$§.§3D§.isPaused = true;
            }
            if(§>$§.§-U§)
            {
               §>$§.§-U§.§,s§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§^W§)
         {
            §^W§ = false;
            if(§>$§.§3D§)
            {
               §>$§.§3D§.isPaused = false;
            }
            if(§>$§.§-U§)
            {
               §>$§.§-U§.§,s§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §^W§;
      }
      
      public static function init(param1:§,f§, param2:int, param3:int) : void
      {
         §4T§ = param1;
         §=!M§ = param2;
         §"!§ = param3;
         § z§ = new § !2§(true,param1.canvas);
      }
      
      public static function §+;§(param1:XML, param2:XML) : void
      {
         §1[§.§+;§(param1,param2);
      }
      
      public static function § n§(param1:§8l§, param2:Array, param3:Function = null) : void
      {
         §7!,§.§ n§(param1,param2,param3);
      }
      
      public static function §4S§(param1:§8G§) : void
      {
         §7!,§.init(param1);
      }
      
      public static function §4!<§(param1:§]!E§) : void
      {
         §;L§ = param1;
         §7!,§.§4!<§(param1);
      }
      
      public static function get controller() : §]!E§
      {
         return §;L§;
      }
      
      public static function §38§(param1:Boolean) : void
      {
         § 6§ = param1;
         §7!,§.background.§38§(param1);
      }
      
      public static function §6y§() : Boolean
      {
         return § 6§;
      }
      
      public static function §3i§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§>$§.§-U§)
         {
            §>$§.§-U§.§%B§ = new Rectangle(param1,param2,param3,param4);
            §>$§.§-U§.setCanvasSize(param3,param4);
         }
         §42§ = Math.min(param3 / §=!M§,param4 / §"!§);
         §8$§ = param3 / §=!M§;
         §;!P§ = param4 / §"!§;
         §7!,§.§?b§(param3,param4);
      }
   }
}
