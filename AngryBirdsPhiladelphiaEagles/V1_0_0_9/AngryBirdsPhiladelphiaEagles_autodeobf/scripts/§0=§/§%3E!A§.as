package §0=§
{
   import §,T§.Tuner;
   
   public class §>!A§ extends §9!E§
   {
      
      public static const §2!4§:int = 5;
      
      private static var §@!3§:§9!E§ = new §>!A§(0,0,Tuner.§5%§,Tuner.§31§,Tuner.§5f§,Tuner.§]O§,§2!4§);
       
      
      public function §>!A§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §9!E§
      {
         var _loc4_:§9!E§ = null;
         switch(param1)
         {
            case §2!4§:
               _loc4_ = §@!3§;
               return new §9!E§(param2,param3,_loc4_.§;e§,_loc4_.push,_loc4_.§%r§,_loc4_.damage,param1);
            default:
               return §9!E§.createExplosion(param1,param2,param3);
         }
      }
   }
}
