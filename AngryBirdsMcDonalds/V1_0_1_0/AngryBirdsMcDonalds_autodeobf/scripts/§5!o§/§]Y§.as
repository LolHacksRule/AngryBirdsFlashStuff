package §5!o§
{
   import §5!G§.§ !a§;
   import §@!b§.§0]§;
   
   public class §]Y§ extends § !a§
   {
      
      private static const §&!V§:Number = 10;
      
      private static const §`O§:Number = 200;
      
      private static const §'!e§:Number = 1.3;
      
      private static const §4!<§:Number = 0;
      
      private static const §-!1§:Number = 0;
      
      public static const §;!"§:int = 5;
      
      public static const §4!J§:int = 6;
      
      private static var §%!]§:§ !a§ = new §]Y§(0,0,§0]§.§?>§,§0]§.§2H§,§0]§.§9"§,§0]§.§ n§,§;!"§);
      
      private static var §`_§:§ !a§ = new §]Y§(0,0,§&!V§,§`O§,§4!<§,§-!1§,§4!J§);
       
      
      public function §]Y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : § !a§
      {
         var _loc4_:§ !a§ = null;
         switch(param1)
         {
            case §;!"§:
               _loc4_ = §%!]§;
               break;
            case §4!J§:
               _loc4_ = §`_§;
               break;
            default:
               return § !a§.createExplosion(param1,param2,param3);
         }
         return new § !a§(param2,param3,_loc4_.§+!#§,_loc4_.push,_loc4_.§^&§,_loc4_.damage,param1);
      }
   }
}
