package §9_§
{
   import §[x§.§`5§;
   
   public class §59§ extends §7]§
   {
      
      public static const §+d§:int = 5;
      
      private static var §!R§:§7]§ = new §59§(0,0,§`5§.§@5§,§`5§.§`[§,§`5§.§[!$§,§`5§.§41§,§+d§);
       
      
      public function §59§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7]§
      {
         var _loc4_:§7]§ = null;
         switch(param1)
         {
            case §+d§:
               _loc4_ = §!R§;
               return new §7]§(param2,param3,_loc4_.§-q§,_loc4_.push,_loc4_.§`K§,_loc4_.damage,param1);
            default:
               return §7]§.createExplosion(param1,param2,param3);
         }
      }
   }
}
