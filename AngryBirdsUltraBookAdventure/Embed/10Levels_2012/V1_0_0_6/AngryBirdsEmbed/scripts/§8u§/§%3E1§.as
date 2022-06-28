package §8u§
{
   import §3G§.§&!"§;
   
   public class §>1§ extends §5<§
   {
      
      public static const §<!&§:int = 5;
      
      private static var §"N§:§5<§ = new §>1§(0,0,§&!"§.§9!-§,§&!"§.§&7§,§&!"§.§<!4§,§&!"§.§0k§,§<!&§);
       
      
      public function §>1§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5<§
      {
         var _loc4_:§5<§ = null;
         switch(param1)
         {
            case §<!&§:
               _loc4_ = §"N§;
               return new §5<§(param2,param3,_loc4_.§`T§,_loc4_.push,_loc4_.§#!9§,_loc4_.damage,param1);
            default:
               return §5<§.createExplosion(param1,param2,param3);
         }
      }
   }
}
