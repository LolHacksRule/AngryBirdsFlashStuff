package § !3§
{
   import §%x§.§#!;§;
   
   public class §5s§ extends §,-§
   {
      
      public static const §5D§:int = 5;
      
      private static var §9L§:§,-§ = new §5s§(0,0,§#!;§.§>u§,§#!;§.§5!2§,§#!;§.§<'§,§#!;§.§-3§,§5D§);
       
      
      public function §5s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §,-§
      {
         var _loc4_:§,-§ = null;
         switch(param1)
         {
            case §5D§:
               _loc4_ = §9L§;
               return new §,-§(param2,param3,_loc4_.§4w§,_loc4_.push,_loc4_.§+r§,_loc4_.damage,param1);
            default:
               return §,-§.createExplosion(param1,param2,param3);
         }
      }
   }
}
