package §&b§
{
   import §"! §.§<B§;
   import §1E§.§5T§;
   import §3!O§.§ !,§;
   import §3?§.§+!9§;
   import §4!-§.§%o§;
   import §<Z§.§ l§;
   import §@g§.§4!@§;
   import §@k§.§ '§;
   import flash.geom.Rectangle;
   
   public class §[F§
   {
      
      public static var §[!1§:int = 0;
      
      public static var §87§:int = 0;
      
      public static var §9u§:§%o§;
      
      public static var §1L§:§ !,§;
      
      public static var §9!-§:Boolean = false;
      
      public static var §&n§:§[F§ = null;
      
      public static var §-4§:§<B§;
      
      public static var §"T§:Boolean = true;
      
      public static var §2F§:Number = 1;
      
      public static var §9h§:Number = 1;
      
      public static var §9!M§:Number = 1;
      
      private static var §%!M§:§+!9§ = null;
      
      private static var §-7§:Boolean = false;
       
      
      public function §[F§()
      {
         super();
      }
      
      public static function §`A§() : Number
      {
         return §[!1§ * §9h§;
      }
      
      public static function §;'§() : Number
      {
         return §87§ * §9!M§;
      }
      
      public static function pause() : void
      {
         if(!§-7§)
         {
            §-7§ = true;
            if(§4!@§.§<!!§)
            {
               §4!@§.§<!!§.isPaused = true;
            }
            if(§4!@§.§ C§)
            {
               §4!@§.§ C§.§'A§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§-7§)
         {
            §-7§ = false;
            if(§4!@§.§<!!§)
            {
               §4!@§.§<!!§.isPaused = false;
            }
            if(§4!@§.§ C§)
            {
               §4!@§.§ C§.§'A§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §-7§;
      }
      
      public static function init(param1:§<B§, param2:int, param3:int) : void
      {
         §-4§ = param1;
         §[!1§ = param2;
         §87§ = param3;
         §1L§ = new § !,§(true,param1.canvas);
      }
      
      public static function §+B§(param1:XML, param2:XML) : void
      {
         § l§.§+B§(param1,param2);
      }
      
      public static function §9D§(param1:§ '§, param2:Array, param3:Function = null) : void
      {
         §9u§.§9D§(param1,param2,param3);
      }
      
      public static function §2!I§(param1:§5T§) : void
      {
         §9u§.init(param1);
      }
      
      public static function §0D§(param1:§+!9§) : void
      {
         §%!M§ = param1;
         §9u§.§0D§(param1);
      }
      
      public static function get controller() : §+!9§
      {
         return §%!M§;
      }
      
      public static function §'!%§(param1:Boolean) : void
      {
         §"T§ = param1;
         §9u§.background.§'!%§(param1);
      }
      
      public static function §3!;§() : Boolean
      {
         return §"T§;
      }
      
      public static function §true §(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.§9_§ = new Rectangle(param1,param2,param3,param4);
            §4!@§.§ C§.setCanvasSize(param3,param4);
         }
         §2F§ = Math.min(param3 / §[!1§,param4 / §87§);
         §9h§ = param3 / §[!1§;
         §9!M§ = param4 / §87§;
         §9u§.§?!&§(param3,param4);
      }
   }
}
