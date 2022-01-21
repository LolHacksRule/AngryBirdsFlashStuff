package §2G§
{
   import §3!@§.§'!0§;
   import §?!§.§5!$§;
   
   public class §6!5§ extends §5!$§
   {
      
      private static const §?!1§:Number = 10;
      
      private static const §1!%§:Number = 200;
      
      private static const §,!k§:Number = 1.3;
      
      private static const §5!,§:Number = 0;
      
      private static const §;!3§:Number = 0;
      
      public static const §@!H§:int = 5;
      
      public static const §?!V§:int = 6;
      
      private static var §<!8§:§5!$§ = new §6!5§(0,0,§'!0§.§;!N§,§'!0§.§5!p§,§'!0§.§;!=§,§'!0§.§;!a§,§@!H§);
      
      private static var §7!R§:§5!$§ = new §6!5§(0,0,§?!1§,§1!%§,§5!,§,§;!3§,§?!V§);
       
      
      public function §6!5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5!$§
      {
         var _loc4_:§5!$§ = null;
         switch(param1)
         {
            case §@!H§:
               _loc4_ = §<!8§;
               break;
            case §?!V§:
               _loc4_ = §7!R§;
               break;
            default:
               return §5!$§.createExplosion(param1,param2,param3);
         }
         return new §5!$§(param2,param3,_loc4_.§?!,§,_loc4_.push,_loc4_.§55§,_loc4_.damage,param1);
      }
   }
}
