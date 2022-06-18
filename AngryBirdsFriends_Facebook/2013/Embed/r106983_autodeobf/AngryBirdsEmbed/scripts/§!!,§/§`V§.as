package §!!,§
{
   import §9s§.§^u§;
   
   public class §`V§ extends §-n§
   {
      
      public static const §&E§:int = 5;
      
      private static var §[#§:§-n§ = new §`V§(0,0,§^u§.§?;§,§^u§.§'y§,§^u§.§&r§,§^u§.§<#§,§&E§);
       
      
      public function §`V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §-n§
      {
         var _loc4_:§-n§ = null;
         switch(param1)
         {
            case §&E§:
               _loc4_ = §[#§;
               return new §-n§(param2,param3,_loc4_.§%!"§,_loc4_.push,_loc4_.§^!'§,_loc4_.damage,param1);
            default:
               return §-n§.createExplosion(param1,param2,param3);
         }
      }
   }
}
