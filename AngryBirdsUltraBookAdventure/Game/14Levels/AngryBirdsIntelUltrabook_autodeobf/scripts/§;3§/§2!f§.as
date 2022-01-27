package §;3§
{
   import § var§.§3!b§;
   import §40§.§2!y§;
   
   public class §2!f§ extends §3!b§
   {
      
      public static const §^!"§:int = 5;
      
      private static var §%a§:§3!b§ = new §2!f§(0,0,§2!y§.§[a§,§2!y§.§%W§,§2!y§.§@H§,§2!y§.§'R§,§^!"§);
       
      
      public function §2!f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §3!b§
      {
         var _loc4_:§3!b§ = null;
         switch(param1)
         {
            case §^!"§:
               _loc4_ = §%a§;
               return new §3!b§(param2,param3,_loc4_.§61§,_loc4_.push,_loc4_.§0!0§,_loc4_.damage,param1);
            default:
               return §3!b§.createExplosion(param1,param2,param3);
         }
      }
   }
}
