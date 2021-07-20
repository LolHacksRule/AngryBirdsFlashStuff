package §^!A§
{
   import §6A§.§#!E§;
   
   public class §]v§ extends §[!N§
   {
      
      public static const §+l§:int = 5;
      
      private static var §&?§:§[!N§ = new §]v§(0,0,§#!E§.§+"§,§#!E§.§"q§,§#!E§.§4!M§,§#!E§.§]!B§,§+l§);
       
      
      public function §]v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §[!N§
      {
         var _loc4_:§[!N§ = null;
         switch(param1)
         {
            case §+l§:
               _loc4_ = §&?§;
               return new §[!N§(param2,param3,_loc4_.§!i§,_loc4_.push,_loc4_.§[!I§,_loc4_.damage,param1);
            default:
               return §[!N§.createExplosion(param1,param2,param3);
         }
      }
   }
}
