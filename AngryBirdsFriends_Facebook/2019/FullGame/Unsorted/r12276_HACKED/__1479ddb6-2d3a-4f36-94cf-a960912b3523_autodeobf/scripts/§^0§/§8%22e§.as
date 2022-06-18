package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §8"e§ extends §%N§
   {
       
      
      public function §8"e§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = _loc5_ / (12 - 1) * Math.PI;
            _loc7_ = 0.5 * 15 + 15 * (Math.random() * 0.5);
            (§+!p§.§`?§.particles as §0E§).§'!d§(x,y,_loc7_,_loc6_,_loc3_);
            _loc5_++;
         }
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return !this.canActivateSpecialPower;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return health > 0;
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            §;!`§(-§,D§);
            return true;
         }
         return false;
      }
      
      override public function get isFlying() : Boolean
      {
         return true;
      }
   }
}
