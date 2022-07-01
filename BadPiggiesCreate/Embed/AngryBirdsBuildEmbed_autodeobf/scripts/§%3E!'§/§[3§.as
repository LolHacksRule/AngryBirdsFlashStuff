package §>!'§
{
   import §<!<§.§;J§;
   
   public class §[3§ extends §'T§
   {
      
      public static const §[+§:int = 5;
      
      private static var §#!K§:§'T§ = new §[3§(0,0,§;J§.§-!<§,§;J§.§=!r§,§;J§.§`5§,§;J§.§ +§,§[+§);
       
      
      public function §[3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'T§
      {
         var _loc4_:§'T§ = null;
         switch(param1)
         {
            case §[+§:
               _loc4_ = §#!K§;
               return new §'T§(param2,param3,_loc4_.§>!d§,_loc4_.push,_loc4_.§while§,_loc4_.damage,param1);
            default:
               return §'T§.createExplosion(param1,param2,param3);
         }
      }
   }
}
