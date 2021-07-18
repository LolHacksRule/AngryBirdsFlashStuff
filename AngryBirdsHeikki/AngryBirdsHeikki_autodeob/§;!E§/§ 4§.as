package §;!E§
{
   import §+!8§.§2!5§;
   
   public class § 4§ extends §2!5§
   {
      
      public static const §`!$§:int = 5;
      
      private static var §0W§:§2!5§ = new § 4§(0,0,200,1000,0,0,§`!$§);
       
      
      public function § 4§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §2!5§
      {
         var _loc4_:§2!5§ = null;
         switch(param1)
         {
            case §`!$§:
               _loc4_ = §0W§;
               return new §2!5§(param2,param3,_loc4_.§%!B§,_loc4_.push,_loc4_.§]!E§,_loc4_.damage,param1);
            default:
               return §2!5§.createExplosion(param1,param2,param3);
         }
      }
   }
}
