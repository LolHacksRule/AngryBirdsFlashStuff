package §,y§
{
   import §9!T§.§7!a§;
   
   public class §&o§ extends §7!a§
   {
      
      public static const §;!]§:int = 5;
      
      private static var §"!'§:§7!a§ = new §&o§(0,0,200,1000,0,0,§;!]§);
       
      
      public function §&o§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7!a§
      {
         var _loc4_:§7!a§ = null;
         switch(param1)
         {
            case §;!]§:
               _loc4_ = §"!'§;
               return new §7!a§(param2,param3,_loc4_.§4!b§,_loc4_.push,_loc4_.§0!0§,_loc4_.damage,param1);
            default:
               return §7!a§.createExplosion(param1,param2,param3);
         }
      }
   }
}
