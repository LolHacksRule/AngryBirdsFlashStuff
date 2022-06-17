package §-!!§
{
   import § !D§.§;#W§;
   
   public class §"#6§ extends §]" §
   {
      
      public static const §3$C§:int = 6;
      
      public static const §90§:int = 7;
      
      public static const §6#]§:int = 8;
      
      public static const §`"#§:int = 9;
      
      private static var §=!n§:§]" § = new §"#6§(0,0,§;#W§.§7!6§,§;#W§.§,!a§,§;#W§.§ !'§,§;#W§.§6#i§,§3$C§);
      
      private static var §##R§:§]" § = new §"#6§(0,0,2,3,1,2.5,§90§);
      
      private static var §4S§:§]" § = new §"#6§(0,0,15,1500,5,800,§6#]§);
      
      private static var §4#w§:§]" § = new §"#6§(0,0,25,1750,5,800,§`"#§);
       
      
      public function §"#6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §]" §
      {
         var _loc5_:§]" § = null;
         switch(param1)
         {
            case §3$C§:
               _loc5_ = §=!n§;
               break;
            case §90§:
               _loc5_ = §##R§;
               break;
            case §6#]§:
               _loc5_ = §4S§;
               break;
            case §`"#§:
               _loc5_ = §4#w§;
               break;
            default:
               return §]" §.createExplosion(param1,param2,param3);
         }
         return new §]" §(param2,param3,_loc5_.§&$7§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
