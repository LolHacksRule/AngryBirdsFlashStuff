package §'R§
{
   import §%"§.Tuner;
   
   public class §`<§ extends §<l§
   {
      
      public static const §?3§:int = 5;
      
      private static var §-!J§:§<l§ = new §`<§(0,0,Tuner.§?k§,Tuner.§5H§,Tuner.§;!D§,Tuner.§;!B§,§?3§);
       
      
      public function §`<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §<l§
      {
         var _loc4_:§<l§ = null;
         switch(param1)
         {
            case §?3§:
               _loc4_ = §-!J§;
               return new §<l§(param2,param3,_loc4_.§;w§,_loc4_.push,_loc4_.§7!8§,_loc4_.damage,param1);
            default:
               return §<l§.createExplosion(param1,param2,param3);
         }
      }
   }
}
