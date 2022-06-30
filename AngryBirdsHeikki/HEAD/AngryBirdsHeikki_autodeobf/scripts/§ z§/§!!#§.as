package § z§
{
   import § !$§.§4!<§;
   
   public class §!!#§ extends §4!<§
   {
      
      public static const §+!+§:int = 5;
      
      private static var §"'§:§4!<§ = new §!!#§(0,0,200,1000,0,0,§+!+§);
       
      
      public function §!!#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §4!<§
      {
         var _loc4_:§4!<§ = null;
         switch(param1)
         {
            case §+!+§:
               _loc4_ = §"'§;
               return new §4!<§(param2,param3,_loc4_.§#6§,_loc4_.push,_loc4_.§'!P§,_loc4_.damage,param1);
            default:
               return §4!<§.createExplosion(param1,param2,param3);
         }
      }
   }
}
