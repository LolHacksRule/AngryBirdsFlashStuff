package §-!&§
{
   import §9T§.Tuner;
   
   public class §9r§ extends §%0§
   {
      
      public static const §4!H§:int = 5;
      
      private static var §3b§:§%0§ = new §9r§(0,0,Tuner.§87§,Tuner.§#9§,Tuner.§15§,Tuner.§'!&§,§4!H§);
       
      
      public function §9r§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%0§
      {
         var _loc4_:§%0§ = null;
         switch(param1)
         {
            case §4!H§:
               _loc4_ = §3b§;
               return new §%0§(param2,param3,_loc4_.§>!Q§,_loc4_.push,_loc4_.§7!F§,_loc4_.damage,param1);
            default:
               return §%0§.createExplosion(param1,param2,param3);
         }
      }
   }
}
