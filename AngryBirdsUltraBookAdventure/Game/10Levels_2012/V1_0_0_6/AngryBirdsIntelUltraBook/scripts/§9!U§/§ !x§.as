package §9!U§
{
   import §2_§.§,L§;
   import §=b§.§9#§;
   
   public class § !x§ extends §9#§
   {
      
      public static const §-h§:int = 5;
      
      private static var §^!8§:§9#§ = new § !x§(0,0,§,L§.§?@§,§,L§.§@!f§,§,L§.§`!9§,§,L§.§`y§,§-h§);
       
      
      public function § !x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §9#§
      {
         var _loc4_:§9#§ = null;
         switch(param1)
         {
            case §-h§:
               _loc4_ = §^!8§;
               return new §9#§(param2,param3,_loc4_.§1!H§,_loc4_.push,_loc4_.§,7§,_loc4_.damage,param1);
            default:
               return §9#§.createExplosion(param1,param2,param3);
         }
      }
   }
}
