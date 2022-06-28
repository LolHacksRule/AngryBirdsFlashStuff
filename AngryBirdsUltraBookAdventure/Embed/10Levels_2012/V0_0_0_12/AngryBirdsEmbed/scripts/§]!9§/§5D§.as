package §]!9§
{
   import §%x§.§#!;§;
   
   public class §5D§ extends §5V§
   {
      
      public static const §9L§:int = 5;
      
      private static var §0!F§:§5V§ = new §5D§(0,0,§#!;§.§>u§,§#!;§.§5!2§,§#!;§.§<'§,§#!;§.§-3§,§9L§);
       
      
      public function §5D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5V§
      {
         var _loc4_:§5V§ = null;
         switch(param1)
         {
            case §9L§:
               _loc4_ = §0!F§;
               return new §5V§(param2,param3,_loc4_.§+r§,_loc4_.push,_loc4_.§+@§,_loc4_.damage,param1);
            default:
               return §5V§.createExplosion(param1,param2,param3);
         }
      }
   }
}
