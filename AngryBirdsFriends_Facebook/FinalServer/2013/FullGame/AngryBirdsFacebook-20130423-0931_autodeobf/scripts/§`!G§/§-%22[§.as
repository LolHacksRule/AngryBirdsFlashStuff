package §`!G§
{
   import §4!<§.§^!Z§;
   
   public class §-"[§ extends §6!M§
   {
      
      public static const §9h§:int = 6;
      
      public static const §]""§:int = 7;
      
      private static var §`!X§:§6!M§ = new §-"[§(0,0,§^!Z§.§'!?§,§^!Z§.§#"-§,§^!Z§.§5l§,§^!Z§.§0!]§,§9h§);
      
      private static var §!!M§:§6!M§ = new §-"[§(0,0,2,3,1,2.5,§]""§);
       
      
      public function §-"[§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§[!8§> = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : §6!M§
      {
         var _loc5_:§6!M§ = null;
         switch(param1)
         {
            case §9h§:
               _loc5_ = §`!X§;
               break;
            case §]""§:
               _loc5_ = §!!M§;
               break;
            default:
               return §6!M§.createExplosion(param1,param2,param3,param4);
         }
         return new §6!M§(param2,param3,_loc5_.§0p§,_loc5_.push,_loc5_.§7!m§,_loc5_.damage,param1,param4);
      }
   }
}
