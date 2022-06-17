package §^0§
{
   import §?$#§.§&$0§;
   
   public class §1!M§ extends §0#;§
   {
      
      public static const §,!3§:int = 6;
      
      public static const §%!v§:int = 7;
      
      public static const §="X§:int = 8;
      
      public static const §;#E§:int = 9;
      
      private static var §%d§:§0#;§ = new §1!M§(0,0,§&$0§.§4"B§,§&$0§.§2$&§,§&$0§.§"!F§,§&$0§.§[" §,§,!3§);
      
      private static var §'#a§:§0#;§ = new §1!M§(0,0,2,3,1,2.5,§%!v§);
      
      private static var §%$<§:§0#;§ = new §1!M§(0,0,15,1500,5,800,§="X§);
      
      private static var §3"k§:§0#;§ = new §1!M§(0,0,25,1750,5,800,§;#E§);
       
      
      public function §1!M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §0#;§
      {
         var _loc5_:§0#;§ = null;
         switch(param1)
         {
            case §,!3§:
               _loc5_ = §%d§;
               break;
            case §%!v§:
               _loc5_ = §'#a§;
               break;
            case §="X§:
               _loc5_ = §%$<§;
               break;
            case §;#E§:
               _loc5_ = §3"k§;
               break;
            default:
               return §0#;§.createExplosion(param1,param2,param3);
         }
         return new §0#;§(param2,param3,_loc5_.§ "E§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
