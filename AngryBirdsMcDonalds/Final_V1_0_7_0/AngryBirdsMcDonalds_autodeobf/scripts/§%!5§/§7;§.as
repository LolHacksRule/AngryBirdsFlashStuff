package §%!5§
{
   import §'!N§.§9!;§;
   import §,o§.§ !=§;
   import §-!F§.§`+§;
   import §0i§.§]y§;
   import §1f§.§'t§;
   import §3G§.§-s§;
   import §55§.§>![§;
   import §each §.§'!3§;
   import flash.geom.Rectangle;
   
   public class §7;§
   {
      
      public static var §`B§:int = 0;
      
      public static var §]!n§:int = 0;
      
      public static var §1h§:§>![§;
      
      public static var §;w§:§]y§;
      
      public static var §'!m§:Boolean = false;
      
      public static var §4!F§:§7;§ = null;
      
      public static var §8!D§:§ !=§;
      
      public static var §?!E§:Boolean = true;
      
      public static var §<0§:Number = 1;
      
      public static var §#!T§:Number = 1;
      
      public static var §,§:Number = 1;
      
      private static var §>U§:§9!;§ = null;
      
      private static var §&!2§:Boolean = false;
       
      
      public function §7;§()
      {
         super();
      }
      
      public static function §8!§() : Number
      {
         return §`B§ * §#!T§;
      }
      
      public static function §2h§() : Number
      {
         return §]!n§ * §,§;
      }
      
      public static function §-!3§() : void
      {
         if(!§&!2§)
         {
            §&!2§ = true;
            if(§'!3§.§ !i§)
            {
               §'!3§.§ !i§.isPaused = true;
            }
            if(§'!3§.§1!n§)
            {
               §'!3§.§1!n§.§5G§(false);
            }
         }
      }
      
      public static function §!!F§() : void
      {
         if(§&!2§)
         {
            §&!2§ = false;
            if(§'!3§.§ !i§)
            {
               §'!3§.§ !i§.isPaused = false;
            }
            if(§'!3§.§1!n§)
            {
               §'!3§.§1!n§.§5G§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §&!2§;
      }
      
      public static function init(param1:§ !=§, param2:int, param3:int) : void
      {
         §8!D§ = param1;
         §`B§ = param2;
         §]!n§ = param3;
         §;w§ = new §]y§(true,param1.canvas);
      }
      
      public static function §>§(param1:XML, param2:XML) : void
      {
         §-s§.§>§(param1,param2);
      }
      
      public static function §7!q§(param1:§'t§, param2:Array, param3:Function = null) : void
      {
         §1h§.§7!q§(param1,param2,param3);
      }
      
      public static function §'!T§(param1:§`+§) : void
      {
         §1h§.init(param1);
      }
      
      public static function setController(param1:§9!;§) : void
      {
         §>U§ = param1;
         §1h§.setController(param1);
      }
      
      public static function get §5F§() : §9!;§
      {
         return §>U§;
      }
      
      public static function §8!5§(param1:Boolean) : void
      {
         §?!E§ = param1;
         §1h§.background.§8!5§(param1);
      }
      
      public static function §2!b§() : Boolean
      {
         return §?!E§;
      }
      
      public static function §<!G§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§'!3§.§1!n§)
         {
            §'!3§.§1!n§.§7!V§ = new Rectangle(param1,param2,param3,param4);
            §'!3§.§1!n§.setCanvasSize(param3,param4);
         }
         §<0§ = Math.min(param3 / §`B§,param4 / §]!n§);
         §#!T§ = param3 / §`B§;
         §,§ = param4 / §]!n§;
         §1h§.§6!Y§(param3,param4);
      }
   }
}
