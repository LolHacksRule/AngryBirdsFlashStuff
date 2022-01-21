package §@!M§
{
   import §'!`§.§6!5§;
   import §55§.§7!k§;
   
   public class §@X§ extends §6!5§
   {
      
      private static const §7t§:Number = 10;
      
      private static const § $§:Number = 200;
      
      private static const §[o§:Number = 1.3;
      
      private static const §7T§:Number = 0;
      
      private static const §[H§:Number = 0;
      
      public static const §^k§:int = 5;
      
      public static const § P§:int = 6;
      
      private static var §"!C§:§6!5§ = new §@X§(0,0,§7!k§.§6!3§,§7!k§.§&@§,§7!k§.§"!d§,§7!k§.§'!%§,§^k§);
      
      private static var §&!$§:§6!5§ = new §@X§(0,0,§7t§,§ $§,§7T§,§[H§,§ P§);
       
      
      public function §@X§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §6!5§
      {
         var _loc4_:§6!5§ = null;
         switch(param1)
         {
            case §^k§:
               _loc4_ = §"!C§;
               break;
            case § P§:
               _loc4_ = §&!$§;
               break;
            default:
               return §6!5§.createExplosion(param1,param2,param3);
         }
         return new §6!5§(param2,param3,_loc4_.§@!C§,_loc4_.push,_loc4_.§^!T§,_loc4_.damage,param1);
      }
   }
}
