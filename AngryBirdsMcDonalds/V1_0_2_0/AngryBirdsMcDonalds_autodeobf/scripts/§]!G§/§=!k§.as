package §]!G§
{
   import §%`§.§]!I§;
   import §'a§.§^N§;
   
   public class §=!k§ extends §]!I§
   {
      
      private static const §;!,§:Number = 10;
      
      private static const §>e§:Number = 200;
      
      private static const §<!$§:Number = 1.3;
      
      private static const §'!T§:Number = 0;
      
      private static const §2w§:Number = 0;
      
      public static const §&!n§:int = 5;
      
      public static const § ]§:int = 6;
      
      private static var § !!§:§]!I§ = new §=!k§(0,0,§^N§.§[!Z§,§^N§.§[!J§,§^N§.§`r§,§^N§.§<>§,§&!n§);
      
      private static var §+!d§:§]!I§ = new §=!k§(0,0,§;!,§,§>e§,§'!T§,§2w§,§ ]§);
       
      
      public function §=!k§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §]!I§
      {
         var _loc4_:§]!I§ = null;
         switch(param1)
         {
            case §&!n§:
               _loc4_ = § !!§;
               break;
            case § ]§:
               _loc4_ = §+!d§;
               break;
            default:
               return §]!I§.createExplosion(param1,param2,param3);
         }
         return new §]!I§(param2,param3,_loc4_.§+f§,_loc4_.push,_loc4_.§#i§,_loc4_.damage,param1);
      }
   }
}
