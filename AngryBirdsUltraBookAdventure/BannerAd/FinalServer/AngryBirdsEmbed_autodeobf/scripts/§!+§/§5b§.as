package §!+§
{
   import §?b§.§&z§;
   
   public class §5b§ extends §%!=§
   {
      
      public static const §4!D§:int = 5;
      
      private static var §0D§:§%!=§ = new §5b§(0,0,§&z§.§'g§,§&z§.§&S§,§&z§.§-^§,§&z§.§var§,§4!D§);
       
      
      public function §5b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%!=§
      {
         var _loc4_:§%!=§ = null;
         switch(param1)
         {
            case §4!D§:
               _loc4_ = §0D§;
               return new §%!=§(param2,param3,_loc4_.§?>§,_loc4_.push,_loc4_.§'b§,_loc4_.damage,param1);
            default:
               return §%!=§.createExplosion(param1,param2,param3);
         }
      }
   }
}
