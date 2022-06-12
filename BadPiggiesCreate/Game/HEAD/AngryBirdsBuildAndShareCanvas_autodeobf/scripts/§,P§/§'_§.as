package §,P§
{
   import §%!0§.§,4§;
   import §%!j§.§%K§;
   import §6!k§.§@!L§;
   import §6]§.§?!N§;
   import §8s§.§=!d§;
   import §<i§.§'!e§;
   import §]";§.§!<§;
   import §]§.§7!K§;
   import flash.geom.Rectangle;
   
   public class §'_§
   {
      
      public static var §["3§:int = 0;
      
      public static var §7$§:int = 0;
      
      public static var §=M§:§,4§;
      
      public static var §5k§:§?!N§;
      
      public static var §^q§:Boolean = false;
      
      public static var §;a§:§'_§ = null;
      
      public static var §+1§:§@!L§;
      
      public static var §2!@§:Boolean = true;
      
      public static var §0!J§:Number = 1;
      
      public static var §=!c§:Number = 1;
      
      public static var §<e§:Number = 1;
      
      private static var §,p§:§7!K§ = null;
      
      private static var §+!e§:Boolean = false;
       
      
      public function §'_§()
      {
         super();
      }
      
      public static function §implements§() : Number
      {
         return §["3§ * §=!c§;
      }
      
      public static function §6l§() : Number
      {
         return §7$§ * §<e§;
      }
      
      public static function pause() : void
      {
         if(!§+!e§)
         {
            §+!e§ = true;
            if(§%K§.§^!d§)
            {
               §%K§.§^!d§.isPaused = true;
            }
            if(§%K§.§`9§)
            {
               §%K§.§`9§.§1!>§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§+!e§)
         {
            §+!e§ = false;
            if(§%K§.§^!d§)
            {
               §%K§.§^!d§.isPaused = false;
            }
            if(§%K§.§`9§)
            {
               §%K§.§`9§.§1!>§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §+!e§;
      }
      
      public static function init(param1:§@!L§, param2:int, param3:int) : void
      {
         §+1§ = param1;
         §["3§ = param2;
         §7$§ = param3;
         §5k§ = new §?!N§(true,param1.canvas);
      }
      
      public static function §#R§(param1:XML, param2:XML) : void
      {
         §!<§.§#R§(param1,param2);
      }
      
      public static function §6h§(param1:§=!d§, param2:Array, param3:Function = null) : void
      {
         §=M§.§6h§(param1,param2,param3);
      }
      
      public static function loadLevel(param1:§'!e§) : void
      {
         §=M§.init(param1);
      }
      
      public static function §^`§(param1:§7!K§) : void
      {
         §,p§ = param1;
         §=M§.§^`§(param1);
      }
      
      public static function get §=R§() : §7!K§
      {
         return §,p§;
      }
      
      public static function §?R§(param1:Boolean) : void
      {
         §2!@§ = param1;
         §=M§.background.§?R§(param1);
      }
      
      public static function §&R§() : Boolean
      {
         return §2!@§;
      }
      
      public static function §=!R§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§%K§.§`9§)
         {
            §%K§.§`9§.§<!J§ = new Rectangle(param1,param2,param3,param4);
            §%K§.§`9§.setCanvasSize(param3,param4);
         }
         §0!J§ = Math.min(param3 / §["3§,param4 / §7$§);
         §=!c§ = param3 / §["3§;
         §<e§ = param4 / §7$§;
         §=M§.§`a§(param3,param4);
      }
   }
}
