package §>!5§
{
   import §+!C§.§1!$§;
   
   public class §?$'§ extends §+!H§
   {
      
      public static const §6"s§:int = 6;
      
      public static const §=$+§:int = 7;
      
      private static var §=!X§:§+!H§ = new §?$'§(0,0,§1!$§.§"r§,§1!$§.§,$,§,§1!$§.§#a§,§1!$§.§[p§,§6"s§);
      
      private static var §-#_§:§+!H§ = new §?$'§(0,0,2,3,1,2.5,§=$+§);
       
      
      public function §?$'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §+!H§
      {
         var _loc5_:§+!H§ = null;
         switch(param1)
         {
            case §6"s§:
               _loc5_ = §=!X§;
               break;
            case §=$+§:
               _loc5_ = §-#_§;
               break;
            default:
               return §+!H§.createExplosion(param1,param2,param3);
         }
         return new §+!H§(param2,param3,_loc5_.§0"P§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
