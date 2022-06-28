package §_-QI§
{
   import §_-TG§.§_-L8§;
   import §_-lt§.§_-wS§;
   
   public class §_-KZ§ extends §_-wS§
   {
      
      public static const §_-0Aa§:int = 5;
      
      private static var §_-5G§:§_-wS§ = new §_-KZ§(0,0,§_-L8§.§_-qf§,§_-L8§.§_-tu§,§_-L8§.§_-Qv§,§_-L8§.§_-0-S§,§_-0Aa§);
       
      
      public function §_-KZ§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §_-wS§
      {
         var _loc4_:§_-wS§ = null;
         switch(param1)
         {
            case §_-0Aa§:
               _loc4_ = §_-5G§;
               return new §_-wS§(param2,param3,_loc4_.§_-0EY§,_loc4_.push,_loc4_.§_-Lf§,_loc4_.damage,param1);
            default:
               return §_-wS§.createExplosion(param1,param2,param3);
         }
      }
   }
}
