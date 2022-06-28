package §5!L§
{
   import §1!-§.§@Z§;
   import §3a§.§3T§;
   import §6A§.§ !§;
   import §7j§.§8P§;
   import §=!0§.§>I§;
   import §>!7§.§;b§;
   import §>k§.§5$§;
   import §^!L§.§6<§;
   import flash.geom.Rectangle;
   
   public class §=w§
   {
      
      public static var §9!#§:int = 0;
      
      public static var §0i§:int = 0;
      
      public static var § o§:§ !§;
      
      public static var §?!L§:§3T§;
      
      public static var §%Z§:Boolean = false;
      
      public static var §=! §:§=w§ = null;
      
      public static var § !H§:§8P§;
      
      public static var §@J§:Boolean = true;
      
      public static var §44§:Number = 1;
      
      public static var §continue§:Number = 1;
      
      public static var §'c§:Number = 1;
      
      private static var §>B§:§;b§ = null;
      
      private static var §6q§:Boolean = false;
       
      
      public function §=w§()
      {
         super();
      }
      
      public static function §;!B§() : Number
      {
         return §9!#§ * §continue§;
      }
      
      public static function §0E§() : Number
      {
         return §0i§ * §'c§;
      }
      
      public static function pause() : void
      {
         if(!§6q§)
         {
            §6q§ = true;
            if(§>I§.§2!@§)
            {
               §>I§.§2!@§.isPaused = true;
            }
            if(§>I§.§`S§)
            {
               §>I§.§`S§.§ !I§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§6q§)
         {
            §6q§ = false;
            if(§>I§.§2!@§)
            {
               §>I§.§2!@§.isPaused = false;
            }
            if(§>I§.§`S§)
            {
               §>I§.§`S§.§ !I§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §6q§;
      }
      
      public static function init(param1:§8P§, param2:int, param3:int) : void
      {
         § !H§ = param1;
         §9!#§ = param2;
         §0i§ = param3;
         §?!L§ = new §3T§(true,param1.canvas);
      }
      
      public static function §?!"§(param1:XML, param2:XML) : void
      {
         §6<§.§?!"§(param1,param2);
      }
      
      public static function §5!B§(param1:§5$§, param2:Array, param3:Function = null) : void
      {
         § o§.§5!B§(param1,param2,param3);
      }
      
      public static function §]a§(param1:§@Z§) : void
      {
         § o§.init(param1);
      }
      
      public static function §>@§(param1:§;b§) : void
      {
         §>B§ = param1;
         § o§.§>@§(param1);
      }
      
      public static function get controller() : §;b§
      {
         return §>B§;
      }
      
      public static function §9C§(param1:Boolean) : void
      {
         §@J§ = param1;
         § o§.background.§9C§(param1);
      }
      
      public static function §-!;§() : Boolean
      {
         return §@J§;
      }
      
      public static function §8'§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §44§ = Math.min(param3 / §9!#§,param4 / §0i§);
         §continue§ = param3 / §9!#§;
         §'c§ = param4 / §0i§;
         §>I§.§+2§ = new Rectangle(param1,param2,param3,param4);
         §>I§.§6+§ = true;
         § o§.§&!5§(param3,param4);
      }
   }
}
