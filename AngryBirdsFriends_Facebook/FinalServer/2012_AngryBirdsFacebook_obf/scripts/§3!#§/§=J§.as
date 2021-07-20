package §3!#§
{
   import §0!2§.§3`§;
   
   public class §=J§ extends §0"A§
   {
      
      public static const §?!y§:int = 6;
      
      public static const §`!"§:int = 7;
      
      private static var §2T§:§0"A§ = new §=J§(0,0,§3`§.§[b§,§3`§.§3!o§,§3`§.§<!d§,§3`§.§"3§,§?!y§);
      
      private static var §^F§:§0"A§ = new §=J§(0,0,2,3,1,2.5,§`!"§);
       
      
      public function §=J§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§5"A§> = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§5"A§> = null) : §0"A§
      {
         var _loc5_:§0"A§ = null;
         switch(param1)
         {
            case §?!y§:
               _loc5_ = §2T§;
               break;
            case §`!"§:
               _loc5_ = §^F§;
               break;
            default:
               return §0"A§.createExplosion(param1,param2,param3,param4);
         }
         return new §0"A§(param2,param3,_loc5_.§3"H§,_loc5_.push,_loc5_.§%!§,_loc5_.damage,param1,param4);
      }
   }
}
