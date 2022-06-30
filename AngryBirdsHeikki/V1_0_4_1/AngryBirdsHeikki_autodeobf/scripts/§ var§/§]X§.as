package § var§
{
   import §`!X§.§0+§;
   
   public class §]X§ extends §0+§
   {
      
      public static const §6^§:int = 5;
      
      private static var §<M§:§0+§ = new §]X§(0,0,200,1000,0,0,§6^§);
       
      
      public function §]X§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §0+§
      {
         var _loc4_:§0+§ = null;
         switch(param1)
         {
            case §6^§:
               _loc4_ = §<M§;
               return new §0+§(param2,param3,_loc4_.§9x§,_loc4_.push,_loc4_.§]p§,_loc4_.damage,param1);
            default:
               return §0+§.createExplosion(param1,param2,param3);
         }
      }
   }
}
