package §3F§
{
   import §>2§.Tuner;
   
   public class §9T§ extends §>D§
   {
      
      public static const §[d§:int = 5;
      
      private static var §,!B§:§>D§ = new §9T§(0,0,Tuner.§?!&§,Tuner.§+!;§,Tuner.§3`§,Tuner.§ j§,§[d§);
       
      
      public function §9T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §>D§
      {
         var _loc4_:§>D§ = null;
         switch(param1)
         {
            case §[d§:
               _loc4_ = §,!B§;
               return new §>D§(param2,param3,_loc4_.§-!-§,_loc4_.push,_loc4_.§3W§,_loc4_.damage,param1);
            default:
               return §>D§.createExplosion(param1,param2,param3);
         }
      }
   }
}
