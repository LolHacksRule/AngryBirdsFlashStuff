package §`!f§
{
   import §%Q§.§=N§;
   import §,!5§.§0;§;
   
   public class §-%§ extends §=N§
   {
      
      public static const §%!9§:int = 5;
      
      private static var §'!A§:§=N§ = new §-%§(0,0,§0;§.§@!f§,§0;§.§5E§,§0;§.§,!'§,§0;§.§+Z§,§%!9§);
       
      
      public function §-%§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=N§
      {
         var _loc4_:§=N§ = null;
         switch(param1)
         {
            case §%!9§:
               _loc4_ = §'!A§;
               return new §=N§(param2,param3,_loc4_.§@!§,_loc4_.push,_loc4_.§8!K§,_loc4_.damage,param1);
            default:
               return §=N§.createExplosion(param1,param2,param3);
         }
      }
   }
}
