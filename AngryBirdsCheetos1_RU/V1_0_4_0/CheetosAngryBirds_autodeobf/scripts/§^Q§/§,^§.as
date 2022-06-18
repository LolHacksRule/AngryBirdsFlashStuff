package §^Q§
{
   import § !b§.§&!'§;
   import § A§.§#K§;
   import § N§.§+l§;
   import §&C§.§[b§;
   import §0V§.§`!O§;
   import §39§.§=R§;
   import §94§.§&!7§;
   import §^!O§.§8q§;
   import flash.geom.Rectangle;
   
   public class §,^§
   {
      
      public static var §=!#§:int = 0;
      
      public static var §,n§:int = 0;
      
      public static var §0K§:§`!O§;
      
      public static var §?X§:§+l§;
      
      public static var §#[§:Boolean = false;
      
      public static var §+!W§:§,^§ = null;
      
      public static var §?D§:§8q§;
      
      public static var §0§:Boolean = true;
      
      public static var §&2§:Number = 1;
      
      public static var §^!a§:Number = 1;
      
      public static var §=%§:Number = 1;
      
      private static var §]!b§:§#K§ = null;
      
      private static var §6q§:Boolean = false;
       
      
      public function §,^§()
      {
         super();
      }
      
      public static function §[+§() : Number
      {
         return §=!#§ * §^!a§;
      }
      
      public static function §72§() : Number
      {
         return §,n§ * §=%§;
      }
      
      public static function §9!§() : void
      {
         if(!§6q§)
         {
            §6q§ = true;
            if(§&!7§.§ h§)
            {
               §&!7§.§ h§.isPaused = true;
            }
            if(§&!7§.§>!M§)
            {
               §&!7§.§>!M§.§`!E§(false);
            }
         }
      }
      
      public static function §5H§() : void
      {
         if(§6q§)
         {
            §6q§ = false;
            if(§&!7§.§ h§)
            {
               §&!7§.§ h§.isPaused = false;
            }
            if(§&!7§.§>!M§)
            {
               §&!7§.§>!M§.§`!E§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §6q§;
      }
      
      public static function init(param1:§8q§, param2:int, param3:int) : void
      {
         §?D§ = param1;
         §=!#§ = param2;
         §,n§ = param3;
         §?X§ = new §+l§(true,param1.canvas);
      }
      
      public static function §,Z§(param1:XML, param2:XML) : void
      {
         §[b§.§,Z§(param1,param2);
      }
      
      public static function §;!W§(param1:§&!'§, param2:Array, param3:Function = null) : void
      {
         §0K§.§;!W§(param1,param2,param3);
      }
      
      public static function §#N§(param1:§=R§) : void
      {
         §0K§.init(param1);
      }
      
      public static function §"1§(param1:§#K§) : void
      {
         §]!b§ = param1;
         §0K§.§"1§(param1);
      }
      
      public static function get §;§() : §#K§
      {
         return §]!b§;
      }
      
      public static function § !F§(param1:Boolean) : void
      {
         §0§ = param1;
         §0K§.background.§ !F§(param1);
      }
      
      public static function §2w§() : Boolean
      {
         return §0§;
      }
      
      public static function §6!H§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.§!O§ = new Rectangle(param1,param2,param3,param4);
            §&!7§.§>!M§.setCanvasSize(param3,param4);
         }
         §&2§ = Math.min(param3 / §=!#§,param4 / §,n§);
         §^!a§ = param3 / §=!#§;
         §=%§ = param4 / §,n§;
         §0K§.§]!J§(param3,param4);
      }
   }
}
