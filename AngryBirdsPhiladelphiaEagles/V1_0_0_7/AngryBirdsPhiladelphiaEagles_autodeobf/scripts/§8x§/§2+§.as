package §8x§
{
   import §,!F§.Tuner;
   
   public class §2+§ extends §>+§
   {
      
      public static const §"0§:int = 5;
      
      private static var §8!2§:§>+§ = new §2+§(0,0,Tuner.§^I§,Tuner.§#U§,Tuner.§%Q§,Tuner.§[!E§,§"0§);
       
      
      public function §2+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §>+§
      {
         var _loc4_:§>+§ = null;
         switch(param1)
         {
            case §"0§:
               _loc4_ = §8!2§;
               return new §>+§(param2,param3,_loc4_.§?d§,_loc4_.push,_loc4_.§9g§,_loc4_.damage,param1);
            default:
               return §>+§.createExplosion(param1,param2,param3);
         }
      }
   }
}
