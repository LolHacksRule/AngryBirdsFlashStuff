package §?!8§
{
   import §`!4§.§=Z§;
   
   public class §2[§ extends §2-§
   {
      
      public static const §-^§:int = 6;
      
      private static var §+!8§:§2-§ = new §2[§(0,0,§=Z§.§,d§,§=Z§.§#!D§,§=Z§.§<0§,§=Z§.§^#§,§-^§);
       
      
      public function §2[§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§]f§> = null) : §2-§
      {
         var _loc5_:§2-§ = null;
         switch(param1)
         {
            case §-^§:
               _loc5_ = §+!8§;
               return new §2-§(param2,param3,_loc5_.§`!>§,_loc5_.push,_loc5_.§super§,_loc5_.damage,param1,param4);
            default:
               return §2-§.createExplosion(param1,param2,param3,param4);
         }
      }
   }
}
