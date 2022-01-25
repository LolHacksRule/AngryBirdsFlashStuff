package §2!G§
{
   import §^!$§.§;Y§;
   
   public class §;W§ extends §;Y§
   {
      
      public static const § u§:int = 5;
      
      private static var §5m§:§;Y§ = new §;W§(0,0,200,1000,0,0,§ u§);
       
      
      public function §;W§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §;Y§
      {
         var _loc4_:§;Y§ = null;
         switch(param1)
         {
            case § u§:
               _loc4_ = §5m§;
               return new §;Y§(param2,param3,_loc4_.§>>§,_loc4_.push,_loc4_.§%A§,_loc4_.damage,param1);
            default:
               return §;Y§.createExplosion(param1,param2,param3);
         }
      }
   }
}
