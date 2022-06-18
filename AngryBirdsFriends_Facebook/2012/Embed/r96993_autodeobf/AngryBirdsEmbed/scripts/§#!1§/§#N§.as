package §#!1§
{
   import §`i§.§+3§;
   
   public class §#N§ extends §]o§
   {
      
      public static const §`X§:int = 5;
      
      private static var §,§:§]o§ = new §#N§(0,0,§+3§.§catch§,§+3§.§[!§,§+3§.§8!E§,§+3§.§<&§,§`X§);
       
      
      public function §#N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §]o§
      {
         var _loc4_:§]o§ = null;
         switch(param1)
         {
            case §`X§:
               _loc4_ = §,§;
               return new §]o§(param2,param3,_loc4_.§6!%§,_loc4_.push,_loc4_.§7?§,_loc4_.damage,param1);
            default:
               return §]o§.createExplosion(param1,param2,param3);
         }
      }
   }
}
