package §5!b§
{
   import §4!O§.§1!Q§;
   
   public class §9!O§ extends §1!Q§
   {
      
      public static const §`;§:int = 5;
      
      private static var §[;§:§1!Q§ = new §9!O§(0,0,200,1000,0,0,§`;§);
       
      
      public function §9!O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1!Q§
      {
         var _loc4_:§1!Q§ = null;
         switch(param1)
         {
            case §`;§:
               _loc4_ = §[;§;
               return new §1!Q§(param2,param3,_loc4_.§8N§,_loc4_.push,_loc4_.§4?§,_loc4_.damage,param1);
            default:
               return §1!Q§.createExplosion(param1,param2,param3);
         }
      }
   }
}
