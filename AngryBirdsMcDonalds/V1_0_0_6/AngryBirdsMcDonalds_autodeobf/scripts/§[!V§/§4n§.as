package §[!V§
{
   import §5!L§.§6c§;
   import §<L§.§6H§;
   
   public class §4n§ extends §6c§
   {
      
      private static const §2!-§:Number = 10;
      
      private static const §2!"§:Number = 200;
      
      private static const §1'§:Number = 1.3;
      
      private static const §8!o§:Number = 0;
      
      private static const §+b§:Number = 0;
      
      public static const §,!Z§:int = 5;
      
      public static const §3d§:int = 6;
      
      private static var §&!>§:§6c§ = new §4n§(0,0,§6H§.§7P§,§6H§.§[!§,§6H§.§>!7§,§6H§.§!6§,§,!Z§);
      
      private static var §5!W§:§6c§ = new §4n§(0,0,§2!-§,§2!"§,§8!o§,§+b§,§3d§);
       
      
      public function §4n§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §6c§
      {
         var _loc4_:§6c§ = null;
         switch(param1)
         {
            case §,!Z§:
               _loc4_ = §&!>§;
               break;
            case §3d§:
               _loc4_ = §5!W§;
               break;
            default:
               return §6c§.createExplosion(param1,param2,param3);
         }
         return new §6c§(param2,param3,_loc4_.§@!o§,_loc4_.push,_loc4_.§3!U§,_loc4_.damage,param1);
      }
   }
}
