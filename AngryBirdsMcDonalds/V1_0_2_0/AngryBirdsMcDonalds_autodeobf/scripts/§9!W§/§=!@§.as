package §9!W§
{
   import §'a§.§0!f§;
   import §+-§.§,K§;
   import §4!$§.§<!2§;
   import §4s§.§>!"§;
   import §8!M§.§,N§;
   import §=<§.§>d§;
   import §[#§.§[!A§;
   import §[r§.§3=§;
   import flash.geom.Rectangle;
   
   public class §=!@§
   {
      
      public static var §&"§:int = 0;
      
      public static var §+! §:int = 0;
      
      public static var §>!T§:§0!f§;
      
      public static var §3!U§:§>d§;
      
      public static var §>!%§:Boolean = false;
      
      public static var §#!D§:§=!@§ = null;
      
      public static var §4!X§:§,N§;
      
      public static var §9!S§:Boolean = true;
      
      public static var §,B§:Number = 1;
      
      public static var §',§:Number = 1;
      
      public static var §6d§:Number = 1;
      
      private static var §0n§:§[!A§ = null;
      
      private static var §>!Q§:Boolean = false;
       
      
      public function §=!@§()
      {
         super();
      }
      
      public static function §!3§() : Number
      {
         return §&"§ * §',§;
      }
      
      public static function § z§() : Number
      {
         return §+! § * §6d§;
      }
      
      public static function §%!&§() : void
      {
         if(!§>!Q§)
         {
            §>!Q§ = true;
            if(§<!2§.§!K§)
            {
               §<!2§.§!K§.isPaused = true;
            }
            if(§<!2§.§[!]§)
            {
               §<!2§.§[!]§.§,c§(false);
            }
         }
      }
      
      public static function §2f§() : void
      {
         if(§>!Q§)
         {
            §>!Q§ = false;
            if(§<!2§.§!K§)
            {
               §<!2§.§!K§.isPaused = false;
            }
            if(§<!2§.§[!]§)
            {
               §<!2§.§[!]§.§,c§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §>!Q§;
      }
      
      public static function init(param1:§,N§, param2:int, param3:int) : void
      {
         §4!X§ = param1;
         §&"§ = param2;
         §+! § = param3;
         §3!U§ = new §>d§(true,param1.canvas);
      }
      
      public static function §<!U§(param1:XML, param2:XML) : void
      {
         §>!"§.§<!U§(param1,param2);
      }
      
      public static function §`'§(param1:§3=§, param2:Array, param3:Function = null) : void
      {
         §>!T§.§`'§(param1,param2,param3);
      }
      
      public static function §[C§(param1:§,K§) : void
      {
         §>!T§.init(param1);
      }
      
      public static function setController(param1:§[!A§) : void
      {
         §0n§ = param1;
         §>!T§.setController(param1);
      }
      
      public static function get §>!b§() : §[!A§
      {
         return §0n§;
      }
      
      public static function §!C§(param1:Boolean) : void
      {
         §9!S§ = param1;
         §>!T§.background.§!C§(param1);
      }
      
      public static function §00§() : Boolean
      {
         return §9!S§;
      }
      
      public static function §6F§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§<!2§.§[!]§)
         {
            §<!2§.§[!]§.§%!l§ = new Rectangle(param1,param2,param3,param4);
            §<!2§.§[!]§.setCanvasSize(param3,param4);
         }
         §,B§ = Math.min(param3 / §&"§,param4 / §+! §);
         §',§ = param3 / §&"§;
         §6d§ = param4 / §+! §;
         §>!T§.§]u§(param3,param4);
      }
   }
}
