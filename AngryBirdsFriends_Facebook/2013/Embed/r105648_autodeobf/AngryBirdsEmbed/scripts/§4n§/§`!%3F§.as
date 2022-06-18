package §4n§
{
   import §;'§.§>-§;
   
   public class §`!?§ extends §!b§
   {
      
      public static const §6I§:int = 5;
      
      private static var §!1§:§!b§ = new §`!?§(0,0,§>-§.§;A§,§>-§.§#z§,§>-§.§6B§,§>-§.§<!G§,§6I§);
       
      
      public function §`!?§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §!b§
      {
         var _loc4_:§!b§ = null;
         switch(param1)
         {
            case §6I§:
               _loc4_ = §!1§;
               return new §!b§(param2,param3,_loc4_.§@$§,_loc4_.push,_loc4_.§5!7§,_loc4_.damage,param1);
            default:
               return §!b§.createExplosion(param1,param2,param3);
         }
      }
   }
}
