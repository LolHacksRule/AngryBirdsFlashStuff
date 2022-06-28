package §true§
{
   import §"m§.§3!`§;
   import §&A§.§ !f§;
   import §,!5§.§^g§;
   import §0!M§.§#!d§;
   import §0!N§.§=+§;
   import §<!1§.§<F§;
   import §<&§.§^b§;
   import §^_§.§6!y§;
   import flash.geom.Rectangle;
   
   public class § _§
   {
      
      public static var §[o§:int = 0;
      
      public static var §-S§:int = 0;
      
      public static var §!6§:§^g§;
      
      public static var §2u§:§6!y§;
      
      public static var §[!d§:Boolean = false;
      
      public static var §%=§:§ _§ = null;
      
      public static var §1s§:§ !f§;
      
      public static var §]!M§:Boolean = true;
      
      public static var §9§:Number = 1;
      
      public static var §0!2§:Number = 1;
      
      public static var §[!Y§:Number = 1;
      
      private static var §,!V§:§3!`§ = null;
      
      private static var §2!8§:Boolean = false;
       
      
      public function § _§()
      {
         super();
      }
      
      public static function §#!t§() : Number
      {
         return §[o§ * §0!2§;
      }
      
      public static function §?!6§() : Number
      {
         return §-S§ * §[!Y§;
      }
      
      public static function pause() : void
      {
         if(!§2!8§)
         {
            §2!8§ = true;
            if(§^b§.§&#§)
            {
               §^b§.§&#§.isPaused = true;
            }
            if(§^b§.§9E§)
            {
               §^b§.§9E§.§6!a§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§2!8§)
         {
            §2!8§ = false;
            if(§^b§.§&#§)
            {
               §^b§.§&#§.isPaused = false;
            }
            if(§^b§.§9E§)
            {
               §^b§.§9E§.§6!a§(true);
            }
         }
      }
      
      public static function get isPaused() : Boolean
      {
         return §2!8§;
      }
      
      public static function init(param1:§ !f§, param2:int, param3:int) : void
      {
         §1s§ = param1;
         §[o§ = param2;
         §-S§ = param3;
         §2u§ = new §6!y§(true,param1.canvas);
      }
      
      public static function §'!w§(param1:XML, param2:XML) : void
      {
         §<F§.§'!w§(param1,param2);
      }
      
      public static function §#!"§(param1:§#!d§, param2:Array, param3:Function = null) : void
      {
         §!6§.§#!"§(param1,param2,param3);
      }
      
      public static function §1!+§(param1:§=+§) : void
      {
         §!6§.init(param1);
      }
      
      public static function setController(param1:§3!`§) : void
      {
         §,!V§ = param1;
         §!6§.setController(param1);
      }
      
      public static function get §?!]§() : §3!`§
      {
         return §,!V§;
      }
      
      public static function §"$§(param1:Boolean) : void
      {
         §]!M§ = param1;
         §!6§.background.§"$§(param1);
      }
      
      public static function §1_§() : Boolean
      {
         return §]!M§;
      }
      
      public static function §%L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§^b§.§9E§)
         {
            §^b§.§9E§.§5t§ = new Rectangle(param1,param2,param3,param4);
            §^b§.§9E§.setCanvasSize(param3,param4);
         }
         §9§ = Math.min(param3 / §[o§,param4 / §-S§);
         §0!2§ = param3 / §[o§;
         §[!Y§ = param4 / §-S§;
         §!6§.§5!]§(param3,param4);
      }
   }
}
