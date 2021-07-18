package §!Y§
{
   import §!F§.§!h§;
   import §-Z§.§?h§;
   import §3"§.§8+§;
   import §4N§.§&!@§;
   import §;8§.§<!"§;
   import §@!,§.§`!,§;
   import §[x§.§2^§;
   import §`g§.§[N§;
   import flash.geom.Rectangle;
   
   public class §[o§
   {
      
      public static var static:int = 0;
      
      public static var §for§:int = 0;
      
      public static var §='§:§2^§;
      
      public static var §#[§:§<!"§;
      
      public static var §'Q§:Boolean = false;
      
      public static var §4h§:§[o§ = null;
      
      public static var §&6§:§`!,§;
      
      public static var §9!D§:Boolean = true;
      
      public static var §#!9§:Number = 1;
      
      public static var §<T§:Number = 1;
      
      public static var §>k§:Number = 1;
      
      private static var §<Z§:§!h§ = null;
      
      private static var §10§:Boolean = false;
       
      
      public function §[o§()
      {
         super();
      }
      
      public static function §#%§() : Number
      {
         return static * §<T§;
      }
      
      public static function §=!&§() : Number
      {
         return §for§ * §>k§;
      }
      
      public static function pause() : void
      {
         if(!§10§)
         {
            §10§ = true;
            if(§?h§.§;B§)
            {
               §?h§.§;B§.§'Z§ = true;
            }
            if(§?h§.§ n§)
            {
               §?h§.§ n§.§>!@§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§10§)
         {
            §10§ = false;
            if(§?h§.§;B§)
            {
               §?h§.§;B§.§'Z§ = false;
            }
            if(§?h§.§ n§)
            {
               §?h§.§ n§.§>!@§(true);
            }
         }
      }
      
      public static function get §'Z§() : Boolean
      {
         return §10§;
      }
      
      public static function init(param1:§`!,§, param2:int, param3:int) : void
      {
         §&6§ = param1;
         static = param2;
         §for§ = param3;
         §#[§ = new §<!"§(true,param1.canvas);
      }
      
      public static function §'7§(param1:XML, param2:XML) : void
      {
         §&!@§.§'7§(param1,param2);
      }
      
      public static function §>&§(param1:§[N§, param2:Array, param3:Function = null) : void
      {
         §='§.§>&§(param1,param2,param3);
      }
      
      public static function §;4§(param1:§8+§) : void
      {
         §='§.init(param1);
      }
      
      public static function §%!<§(param1:§!h§) : void
      {
         §<Z§ = param1;
         §='§.§%!<§(param1);
      }
      
      public static function get controller() : §!h§
      {
         return §<Z§;
      }
      
      public static function §#i§(param1:Boolean) : void
      {
         §9!D§ = param1;
         §='§.background.§#i§(param1);
      }
      
      public static function §%!!§() : Boolean
      {
         return §9!D§;
      }
      
      public static function §6g§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§?h§.§ n§)
         {
            §?h§.§ n§.§"C§ = new Rectangle(param1,param2,param3,param4);
            §?h§.§ n§.setCanvasSize(param3,param4);
         }
         §#!9§ = Math.min(param3 / static,param4 / §for§);
         §<T§ = param3 / static;
         §>k§ = param4 / §for§;
         §='§.§&2§(param3,param4);
      }
   }
}
