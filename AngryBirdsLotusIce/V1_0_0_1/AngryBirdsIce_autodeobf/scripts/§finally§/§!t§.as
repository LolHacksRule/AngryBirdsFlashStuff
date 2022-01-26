package §finally§
{
   import §"o§.§,J§;
   
   public class §!t§ extends §=%§
   {
      
      public static const §"m§:int = 5;
      
      private static var §?9§:§=%§ = new §!t§(0,0,§,J§.§4-§,§,J§.§#@§,§,J§.§?!8§,§,J§.§`o§,§"m§);
       
      
      public function §!t§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=%§
      {
         var _loc4_:§=%§ = null;
         switch(param1)
         {
            case §"m§:
               _loc4_ = §?9§;
               return new §=%§(param2,param3,_loc4_.§=!8§,_loc4_.push,_loc4_.§>q§,_loc4_.damage,param1);
            default:
               return §=%§.createExplosion(param1,param2,param3);
         }
      }
   }
}
