package §<[§
{
   import §+!%§.§use§;
   
   public class §5s§ extends §=t§
   {
      
      public static const §=!D§:int = 5;
      
      private static var §,!-§:§=t§ = new §5s§(0,0,§use§.§7F§,§use§.§`,§,§use§.§3a§,§use§.§6!=§,§=!D§);
       
      
      public function §5s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=t§
      {
         var _loc4_:§=t§ = null;
         switch(param1)
         {
            case §=!D§:
               _loc4_ = §,!-§;
               return new §=t§(param2,param3,_loc4_.§2!#§,_loc4_.push,_loc4_.§6^§,_loc4_.damage,param1);
            default:
               return §=t§.createExplosion(param1,param2,param3);
         }
      }
   }
}
