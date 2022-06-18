package §@!W§
{
   import §"P§.§9!L§;
   import §#b§.§85§;
   import §-A§.§%9§;
   import §1_§.§`!N§;
   import §2!P§.§6=§;
   import §3!,§.§1g§;
   import §6!P§.§`!;§;
   import §=g§.§4!A§;
   import flash.geom.Rectangle;
   
   public class §8!W§
   {
      
      public static var §34§:int = 0;
      
      public static var §!=§:int = 0;
      
      public static var §=X§:§%9§;
      
      public static var §0!4§:§4!A§;
      
      public static var §3!G§:Boolean = false;
      
      public static var §;!$§:§8!W§ = null;
      
      public static var §#!8§:§`!N§;
      
      public static var §7s§:Boolean = true;
      
      public static var §`![§:Number = 1;
      
      public static var §[w§:Number = 1;
      
      public static var §@!+§:Number = 1;
      
      private static var §5d§:§`!;§ = null;
      
      private static var §8!J§:Boolean = false;
       
      
      public function §8!W§()
      {
         super();
      }
      
      public static function §`;§() : Number
      {
         return §34§ * §[w§;
      }
      
      public static function §2!A§() : Number
      {
         return §!=§ * §@!+§;
      }
      
      public static function §-'§() : void
      {
         if(!§8!J§)
         {
            §8!J§ = true;
            if(§6=§.§6>§)
            {
               §6=§.§6>§.isPaused = true;
            }
            if(§6=§.§4!8§)
            {
               §6=§.§4!8§.§?R§(false);
            }
         }
      }
      
      public static function §?!,§() : void
      {
         if(§8!J§)
         {
            §8!J§ = false;
            if(§6=§.§6>§)
            {
               §6=§.§6>§.isPaused = false;
            }
            if(§6=§.§4!8§)
            {
               §6=§.§4!8§.§?R§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §8!J§;
      }
      
      public static function init(param1:§`!N§, param2:int, param3:int) : void
      {
         §#!8§ = param1;
         §34§ = param2;
         §!=§ = param3;
         §0!4§ = new §4!A§(true,param1.canvas);
      }
      
      public static function §]![§(param1:XML, param2:XML) : void
      {
         §9!L§.§]![§(param1,param2);
      }
      
      public static function §'r§(param1:§1g§, param2:Array, param3:Function = null) : void
      {
         §=X§.§'r§(param1,param2,param3);
      }
      
      public static function §6F§(param1:§85§) : void
      {
         §=X§.init(param1);
      }
      
      public static function §+!§(param1:§`!;§) : void
      {
         §5d§ = param1;
         §=X§.§+!§(param1);
      }
      
      public static function get §5!B§() : §`!;§
      {
         return §5d§;
      }
      
      public static function §?!§(param1:Boolean) : void
      {
         §7s§ = param1;
         §=X§.background.§?!§(param1);
      }
      
      public static function §>J§() : Boolean
      {
         return §7s§;
      }
      
      public static function §9o§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.§4r§ = new Rectangle(param1,param2,param3,param4);
            §6=§.§4!8§.setCanvasSize(param3,param4);
         }
         §`![§ = Math.min(param3 / §34§,param4 / §!=§);
         §[w§ = param3 / §34§;
         §@!+§ = param4 / §!=§;
         §=X§.§3W§(param3,param4);
      }
   }
}
