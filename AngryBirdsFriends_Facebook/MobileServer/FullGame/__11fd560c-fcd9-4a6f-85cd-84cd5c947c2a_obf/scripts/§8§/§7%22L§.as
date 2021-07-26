package §8§#8
{
   import §@0§.§1§;
   
   public class §7"L§ extends §2#%§
   {
      
      public static const §6<§:int = 6;
      
      public static const §]"2§:int = 7;
      
      public static const §^"%§:int = 8;
      
      public static const §<"r§:int = 9;
      
      private static var §&#]§:§2#%§ = new §7"L§(0,0,§1#7§.§]#z§,§1#7§.§,"`§,§1#7§.§1"4§,§1#7§.§>,§,§6<§);
      
      private static var §3!a§:§2#%§ = new §7"L§(0,0,2,3,1,2.5,§]"2§);
      
      private static var §,"-§:§2#%§ = new §7"L§(0,0,15,1500,5,800,§^"%§);
      
      private static var §2"[§:§2#%§ = new §7"L§(0,0,25,1750,5,800,§<"r§);
       
      
      public function §7"L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §2#%§
      {
         var _loc5_:§2#%§ = null;
         switch(param1)
         {
            case §6<§:
               _loc5_ = §&#]§;
               break;
            case §]"2§:
               _loc5_ = §3!a§;
               break;
            case §^"%§:
               _loc5_ = §,"-§;
               break;
            case §<"r§:
               _loc5_ = §2"[§;
               break;
            default:
               return §2#%§.createExplosion(param1,param2,param3);
         }
         return new §2#%§(param2,param3,_loc5_.§7"-§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
