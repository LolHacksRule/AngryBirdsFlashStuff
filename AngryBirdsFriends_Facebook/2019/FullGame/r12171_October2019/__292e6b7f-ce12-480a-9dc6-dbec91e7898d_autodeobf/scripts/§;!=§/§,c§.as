package §;!=§
{
   import §#g§.§7#E§;
   
   public class §,c§ extends §-!J§
   {
      
      public static const §0#i§:int = 6;
      
      public static const §&!"§:int = 7;
      
      public static const §<"o§:int = 8;
      
      public static const §&l§:int = 9;
      
      private static var §`!>§:§-!J§ = new §,c§(0,0,§7#E§.§'#w§,§7#E§.§0#>§,§7#E§.§6"r§,§7#E§.§%!L§,§0#i§);
      
      private static var §'+§:§-!J§ = new §,c§(0,0,2,3,1,2.5,§&!"§);
      
      private static var §="j§:§-!J§ = new §,c§(0,0,15,1500,5,800,§<"o§);
      
      private static var §9#z§:§-!J§ = new §,c§(0,0,25,1750,5,800,§&l§);
       
      
      public function §,c§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §-!J§
      {
         var _loc5_:§-!J§ = null;
         switch(param1)
         {
            case §0#i§:
               _loc5_ = §`!>§;
               break;
            case §&!"§:
               _loc5_ = §'+§;
               break;
            case §<"o§:
               _loc5_ = §="j§;
               break;
            case §&l§:
               _loc5_ = §9#z§;
               break;
            default:
               return §-!J§.createExplosion(param1,param2,param3);
         }
         return new §-!J§(param2,param3,_loc5_.§2!E§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
