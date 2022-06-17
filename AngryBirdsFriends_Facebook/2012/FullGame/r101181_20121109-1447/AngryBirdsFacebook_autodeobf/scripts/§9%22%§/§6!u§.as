package §9"%§
{
   import §9"!§.§4"F§;
   
   public class §6!u§ extends §^!x§
   {
      
      public static const §1"?§:int = 6;
      
      private static var §;q§:§^!x§ = new §6!u§(0,0,§4"F§.§,!w§,§4"F§.§`C§,§4"F§.§6"A§,§4"F§.§1I§,§1"?§);
       
      
      public function §6!u§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§&!r§> = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : §^!x§
      {
         var _loc5_:§^!x§ = null;
         switch(param1)
         {
            case §1"?§:
               _loc5_ = §;q§;
               return new §^!x§(param2,param3,_loc5_.§2!q§,_loc5_.push,_loc5_.§[!F§,_loc5_.damage,param1,param4);
            default:
               return §^!x§.createExplosion(param1,param2,param3,param4);
         }
      }
   }
}
