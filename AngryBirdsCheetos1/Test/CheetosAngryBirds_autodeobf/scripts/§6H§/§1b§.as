package §6H§
{
   import §&!8§.§7@§;
   import §&!8§.§[g§;
   import §`h§.§@!Z§;
   
   public class §1b§ extends §7@§
   {
      
      public static const §4J§:int = 6;
      
      public static const §1=§:int = 7;
      
      private static var §#!6§:§7@§ = new §1b§(0,0,25,650,10,300,§4J§);
      
      private static var §%!Y§:§7@§ = new §1b§(0,0,10,200,6,800,§1=§);
       
      
      public function §1b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §7@§
      {
         var _loc4_:§7@§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:§[g§ = null;
         var _loc5_:Vector.<§[g§> = null;
         switch(param1)
         {
            case §4J§:
               _loc4_ = §#!6§;
               break;
            case §1=§:
               _loc4_ = §%!Y§;
               _loc5_ = new Vector.<§[g§>();
               _loc6_ = §@!Z§.§;!,§.§7!h§.§%!"§();
               _loc7_ = 0;
               while(_loc7_ < _loc6_)
               {
                  if((_loc8_ = §@!Z§.§;!,§.§7!h§.§0;§(_loc7_)).§>p§ == "CHEESE_STICKS")
                  {
                     _loc5_.push(_loc8_);
                  }
                  _loc7_++;
               }
               break;
            default:
               return §7@§.createExplosion(param1,param2,param3);
         }
         return new §7@§(param2,param3,_loc4_.§0!2§,_loc4_.push,_loc4_.§%e§,_loc4_.damage,param1,_loc5_);
      }
   }
}
