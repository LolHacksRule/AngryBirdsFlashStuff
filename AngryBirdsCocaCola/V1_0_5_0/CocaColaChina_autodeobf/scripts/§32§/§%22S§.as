package §32§
{
   import §#B§.§ '§;
   
   public class §"S§ extends § '§
   {
      
      public static const §8!X§:int = 5;
      
      private static var §<!F§:§ '§ = new §"S§(0,0,200,1000,0,0,§8!X§);
       
      
      public function §"S§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : § '§
      {
         var _loc4_:§ '§ = null;
         switch(param1)
         {
            case §8!X§:
               _loc4_ = §<!F§;
               return new § '§(param2,param3,_loc4_.§7$§,_loc4_.push,_loc4_.§,u§,_loc4_.damage,param1);
            default:
               return § '§.createExplosion(param1,param2,param3);
         }
      }
   }
}
