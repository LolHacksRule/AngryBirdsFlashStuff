package §4!O§
{
   import §+!#§.§8&§;
   
   public class §4!G§ extends §8&§
   {
      
      public static const §4P§:int = 5;
      
      private static var §5B§:§8&§ = new §4!G§(0,0,200,1000,0,0,§4P§);
       
      
      public function §4!G§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §8&§
      {
         var _loc4_:§8&§ = null;
         switch(param1)
         {
            case §4P§:
               _loc4_ = §5B§;
               return new §8&§(param2,param3,_loc4_.§"!<§,_loc4_.push,_loc4_.§@w§,_loc4_.damage,param1);
            default:
               return §8&§.createExplosion(param1,param2,param3);
         }
      }
   }
}
