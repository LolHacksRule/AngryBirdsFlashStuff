package §&c§
{
   import §#;§.§<!+§;
   
   public class §@p§ extends §'$§
   {
      
      public static const §"!?§:int = 5;
      
      private static var §9o§:§'$§ = new §@p§(0,0,§<!+§.§86§,§<!+§.§`&§,§<!+§.§!s§,§<!+§.§7B§,§"!?§);
       
      
      public function §@p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'$§
      {
         var _loc4_:§'$§ = null;
         switch(param1)
         {
            case §"!?§:
               _loc4_ = §9o§;
               return new §'$§(param2,param3,_loc4_.§'p§,_loc4_.push,_loc4_.§8X§,_loc4_.damage,param1);
            default:
               return §'$§.createExplosion(param1,param2,param3);
         }
      }
   }
}
