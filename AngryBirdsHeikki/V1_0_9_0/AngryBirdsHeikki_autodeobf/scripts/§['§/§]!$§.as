package §['§
{
   import §"W§.§<!#§;
   
   public class §]!$§ extends §<!#§
   {
      
      public static const §`z§:int = 5;
      
      private static var §,D§:§<!#§ = new §]!$§(0,0,200,1000,0,0,§`z§);
       
      
      public function §]!$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §<!#§
      {
         var _loc4_:§<!#§ = null;
         switch(param1)
         {
            case §`z§:
               _loc4_ = §,D§;
               return new §<!#§(param2,param3,_loc4_.§1o§,_loc4_.push,_loc4_.§4!c§,_loc4_.damage,param1);
            default:
               return §<!#§.createExplosion(param1,param2,param3);
         }
      }
   }
}
