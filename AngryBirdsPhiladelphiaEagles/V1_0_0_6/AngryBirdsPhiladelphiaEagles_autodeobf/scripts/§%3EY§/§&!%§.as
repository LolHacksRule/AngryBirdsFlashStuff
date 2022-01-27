package §>Y§
{
   import §4!-§.Tuner;
   
   public class §&!%§ extends §'D§
   {
      
      public static const §#!#§:int = 5;
      
      private static var §@!F§:§'D§ = new §&!%§(0,0,Tuner.§ D§,Tuner.§+!O§,Tuner.§`[§,Tuner.§"^§,§#!#§);
       
      
      public function §&!%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'D§
      {
         var _loc4_:§'D§ = null;
         switch(param1)
         {
            case §#!#§:
               _loc4_ = §@!F§;
               return new §'D§(param2,param3,_loc4_.§'K§,_loc4_.push,_loc4_.§]?§,_loc4_.damage,param1);
            default:
               return §'D§.createExplosion(param1,param2,param3);
         }
      }
   }
}
