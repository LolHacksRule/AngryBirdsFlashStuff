package § !$§
{
   import §;+§.§ !M§;
   
   public class §`@§ extends § !M§
   {
      
      public static const §,!+§:int = 5;
      
      private static var §<W§:§ !M§ = new §`@§(0,0,200,1000,0,0,§,!+§);
       
      
      public function §`@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : § !M§
      {
         var _loc4_:§ !M§ = null;
         switch(param1)
         {
            case §,!+§:
               _loc4_ = §<W§;
               return new § !M§(param2,param3,_loc4_.§3'§,_loc4_.push,_loc4_.§1!T§,_loc4_.damage,param1);
            default:
               return § !M§.createExplosion(param1,param2,param3);
         }
      }
   }
}
