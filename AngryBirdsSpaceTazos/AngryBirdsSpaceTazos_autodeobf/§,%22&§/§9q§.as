package §,"&§
{
   import § M§.§`"B§;
   import §#!b§.§'y§;
   import §'4§.§^g§;
   import §0N§.§="=§;
   import §5Q§.§^!e§;
   import §`!j§.§#b§;
   import §`",§.§'8§;
   import flash.geom.Rectangle;
   
   public class §9q§
   {
      
      public static var §?[§:int = 0;
      
      public static var §3!h§:int = 0;
      
      public static var §>!L§:§^g§;
      
      public static var §2!x§:§="=§;
      
      public static var §-"<§:Boolean = false;
      
      public static var §64§:§9q§ = null;
      
      public static var §=!!§:§'y§;
      
      public static var §9"2§:Boolean = true;
      
      public static var §&D§:Number = 1;
      
      public static var §9!$§:Number = 1;
      
      public static var §+w§:Number = 1;
      
      private static var §3! §:§`"B§ = null;
      
      private static var §%!q§:Boolean = false;
       
      
      public function §9q§()
      {
         super();
      }
      
      public static function §]8§() : Number
      {
         return §?[§ * §9!$§;
      }
      
      public static function §&"-§() : Number
      {
         return §3!h§ * §+w§;
      }
      
      public static function pause() : void
      {
         if(!§%!q§)
         {
            §%!q§ = true;
            if(§^!e§.§1!P§)
            {
               §^!e§.§1!P§.isPaused = true;
            }
            if(§^!e§.§`?§)
            {
               §^!e§.§`?§.§=!g§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§%!q§)
         {
            §%!q§ = false;
            if(§^!e§.§1!P§)
            {
               §^!e§.§1!P§.isPaused = false;
            }
            if(§^!e§.§`?§)
            {
               §^!e§.§`?§.§=!g§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §%!q§;
      }
      
      public static function init(param1:§'y§, param2:int, param3:int) : void
      {
         §=!!§ = param1;
         §?[§ = param2;
         §3!h§ = param3;
         §2!x§ = new §="=§(true,param1.canvas);
      }
      
      public static function §&!&§(param1:§'8§, param2:Function = null) : void
      {
         §>!L§.§&!&§(param1,param2);
      }
      
      public static function loadLevel(param1:§#b§) : void
      {
         §>!L§.init(param1);
      }
      
      public static function §15§(param1:§`"B§) : void
      {
         §3! § = param1;
         §>!L§.§15§(param1);
      }
      
      public static function get §&!$§() : §`"B§
      {
         return §3! §;
      }
      
      public static function §]i§(param1:Boolean) : void
      {
         §9"2§ = param1;
         §>!L§.background.§]i§(param1);
      }
      
      public static function §&T§() : Boolean
      {
         return §9"2§;
      }
      
      public static function §<_§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §&D§ = Math.min(param3 / §?[§,param4 / §3!h§);
         §9!$§ = param3 / §?[§;
         §+w§ = param4 / §3!h§;
         §^!e§.§;b§ = new Rectangle(param1,param2,param3,param4);
         §^!e§.§4""§ = §9!$§ > §+w§;
         §>!L§.§!q§(param3,param4,§9!$§,§+w§);
      }
   }
}
