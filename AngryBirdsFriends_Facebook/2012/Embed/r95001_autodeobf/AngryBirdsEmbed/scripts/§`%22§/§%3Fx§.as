package §`"§
{
   import §9!?§.§,a§;
   
   public class §?x§ extends §1p§
   {
      
      public static const §9!;§:int = 5;
      
      private static var §82§:§1p§ = new §?x§(0,0,§,a§.§8h§,§,a§.§ §,§,a§.§>!§,§,a§.§+,§,§9!;§);
       
      
      public function §?x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1p§
      {
         var _loc4_:§1p§ = null;
         switch(param1)
         {
            case §9!;§:
               _loc4_ = §82§;
               return new §1p§(param2,param3,_loc4_.§0j§,_loc4_.push,_loc4_.§[Z§,_loc4_.damage,param1);
            default:
               return §1p§.createExplosion(param1,param2,param3);
         }
      }
   }
}
