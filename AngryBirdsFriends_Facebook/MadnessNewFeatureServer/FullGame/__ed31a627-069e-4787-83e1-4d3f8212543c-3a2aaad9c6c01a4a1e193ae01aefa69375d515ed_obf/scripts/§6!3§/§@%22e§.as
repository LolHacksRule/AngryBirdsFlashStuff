package §6!3§
{
   import §>2§.§!!W§;
   
   public class §@"e§ extends §>#x§
   {
      
      public static const §,"k§:int = 6;
      
      public static const §=#N§:int = 7;
      
      public static const §=$B§:int = 8;
      
      public static const §61§:int = 9;
      
      private static var §""#§:§>#x§ = new §@"e§(0,0,§!!W§.§9!I§,§!!W§.§8!e§,§!!W§.§#"-§,§!!W§.§`# §,§,"k§);
      
      private static var §<#O§:§>#x§ = new §@"e§(0,0,2,3,1,2.5,§=#N§);
      
      private static var §3$+§:§>#x§ = new §@"e§(0,0,15,1500,5,800,§=$B§);
      
      private static var §[!z§:§>#x§ = new §@"e§(0,0,25,1750,5,800,§61§);
       
      
      public function §@"e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:int) : §>#x§
      {
         var _loc5_:§>#x§ = null;
         switch(param1)
         {
            case §,"k§:
               _loc5_ = §""#§;
               break;
            case §=#N§:
               _loc5_ = §<#O§;
               break;
            case §=$B§:
               _loc5_ = §3$+§;
               break;
            case §61§:
               _loc5_ = §[!z§;
               break;
            default:
               return §>#x§.createExplosion(param1,param2,param3);
         }
         return new §>#x§(param2,param3,_loc5_.§;C§,_loc5_.push,_loc5_.damageRadius,_loc5_.damage,param1,param4);
      }
   }
}
