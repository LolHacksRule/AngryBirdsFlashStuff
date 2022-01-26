package §;j§
{
   import §"o§.§ M§;
   import §'m§.§]y§;
   import §2!"§.§4!%§;
   import §7!4§.§-!$§;
   import §;f§.§^o§;
   import §=9§.§]!B§;
   import §@!%§.§+8§;
   import §`6§.§9!-§;
   import flash.geom.Rectangle;
   
   public class §8[§
   {
      
      public static var §!!"§:int = 0;
      
      public static var §2G§:int = 0;
      
      public static var §import§:§ M§;
      
      public static var §8!B§:§]y§;
      
      public static var §<! §:Boolean = false;
      
      public static var §<!7§:§8[§ = null;
      
      public static var §?v§:§]!B§;
      
      public static var §`!"§:Boolean = true;
      
      public static var §%A§:Number = 1;
      
      public static var §=h§:Number = 1;
      
      public static var §[!'§:Number = 1;
      
      private static var §=!#§:§-!$§ = null;
      
      private static var §9J§:Boolean = false;
       
      
      public function §8[§()
      {
         super();
      }
      
      public static function §2s§() : Number
      {
         return §!!"§ * §=h§;
      }
      
      public static function §'!F§() : Number
      {
         return §2G§ * §[!'§;
      }
      
      public static function pause() : void
      {
         if(!§9J§)
         {
            §9J§ = true;
            if(§+8§.§`!;§)
            {
               §+8§.§`!;§.§;!A§ = true;
            }
            if(§+8§.§-2§)
            {
               §+8§.§-2§.§'!3§(false);
            }
         }
      }
      
      public static function resume() : void
      {
         if(§9J§)
         {
            §9J§ = false;
            if(§+8§.§`!;§)
            {
               §+8§.§`!;§.§;!A§ = false;
            }
            if(§+8§.§-2§)
            {
               §+8§.§-2§.§'!3§(true);
            }
         }
      }
      
      public static function get §;!A§() : Boolean
      {
         return §9J§;
      }
      
      public static function init(param1:§]!B§, param2:int, param3:int) : void
      {
         §?v§ = param1;
         §!!"§ = param2;
         §2G§ = param3;
         §8!B§ = new §]y§(true,param1.canvas);
      }
      
      public static function §^!4§(param1:XML, param2:XML) : void
      {
         §4!%§.§^!4§(param1,param2);
      }
      
      public static function § e§(param1:§9!-§, param2:Array, param3:Function = null) : void
      {
         §import§.§ e§(param1,param2,param3);
      }
      
      public static function §9,§(param1:§^o§) : void
      {
         §import§.init(param1);
      }
      
      public static function §[r§(param1:§-!$§) : void
      {
         §=!#§ = param1;
         §import§.§[r§(param1);
      }
      
      public static function get controller() : §-!$§
      {
         return §=!#§;
      }
      
      public static function §"3§(param1:Boolean) : void
      {
         §`!"§ = param1;
         §import§.background.§"3§(param1);
      }
      
      public static function § set§() : Boolean
      {
         return §`!"§;
      }
      
      public static function §93§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         if(§+8§.§-2§)
         {
            §+8§.§-2§.§&<§ = new Rectangle(param1,param2,param3,param4);
            §+8§.§-2§.setCanvasSize(param3,param4);
         }
         §%A§ = Math.min(param3 / §!!"§,param4 / §2G§);
         §=h§ = param3 / §!!"§;
         §[!'§ = param4 / §2G§;
         §import§.§4T§(param3,param4);
      }
   }
}
