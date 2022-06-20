package §'_§
{
   import §3,§.§`a§;
   
   public class §!!O§ extends §7!E§
   {
      
      public static const §?!o§:int = 5;
      
      private static var §[u§:§7!E§ = new §!!O§(0,0,§`a§.§%X§,§`a§.§#"6§,§`a§.§]9§,§`a§.§,!C§,§?!o§);
       
      
      public function §!!O§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7!E§
      {
         var _loc4_:§7!E§ = null;
         switch(param1)
         {
            case §?!o§:
               _loc4_ = §[u§;
               return new §7!E§(param2,param3,_loc4_.§&!E§,_loc4_.push,_loc4_.§2"3§,_loc4_.damage,param1);
            default:
               return §7!E§.createExplosion(param1,param2,param3);
         }
      }
   }
}
