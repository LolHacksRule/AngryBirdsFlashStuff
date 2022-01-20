package §5U§
{
   import § !J§.§,![§;
   import §4j§.§%!?§;
   
   public class §1!`§ extends §%!?§
   {
      
      private static const §4!N§:Number = 10;
      
      private static const §65§:Number = 200;
      
      private static const §#L§:Number = 1.3;
      
      private static const §"!@§:Number = 0;
      
      private static const §+!U§:Number = 0;
      
      public static const §>_§:int = 5;
      
      public static const §"s§:int = 6;
      
      private static var §]!q§:§%!?§ = new §1!`§(0,0,§,![§.§7D§,§,![§.§0!"§,§,![§.§>!C§,§,![§.§3!R§,§>_§);
      
      private static var §+&§:§%!?§ = new §1!`§(0,0,§4!N§,§65§,§"!@§,§+!U§,§"s§);
       
      
      public function §1!`§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%!?§
      {
         var _loc4_:§%!?§ = null;
         switch(param1)
         {
            case §>_§:
               _loc4_ = §]!q§;
               break;
            case §"s§:
               _loc4_ = §+&§;
               break;
            default:
               return §%!?§.createExplosion(param1,param2,param3);
         }
         return new §%!?§(param2,param3,_loc4_.§8q§,_loc4_.push,_loc4_.§0g§,_loc4_.damage,param1);
      }
   }
}
