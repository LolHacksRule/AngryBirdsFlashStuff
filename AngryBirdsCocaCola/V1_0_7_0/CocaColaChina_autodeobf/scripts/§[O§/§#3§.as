package §[O§
{
   import §9C§.§+!]§;
   
   public class §#3§ extends §+!]§
   {
      
      public static const §9!0§:int = 5;
      
      private static var § !3§:§+!]§ = new §#3§(0,0,200,1000,0,0,§9!0§);
       
      
      public function §#3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §+!]§
      {
         var _loc4_:§+!]§ = null;
         switch(param1)
         {
            case §9!0§:
               _loc4_ = § !3§;
               return new §+!]§(param2,param3,_loc4_.§&F§,_loc4_.push,_loc4_.§3'§,_loc4_.damage,param1);
            default:
               return §+!]§.createExplosion(param1,param2,param3);
         }
      }
   }
}
