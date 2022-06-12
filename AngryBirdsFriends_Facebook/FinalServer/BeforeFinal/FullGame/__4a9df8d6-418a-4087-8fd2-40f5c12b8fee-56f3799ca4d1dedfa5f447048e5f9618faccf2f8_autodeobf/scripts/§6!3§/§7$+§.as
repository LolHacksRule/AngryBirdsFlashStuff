package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §7$+§ extends §^#x§
   {
       
      
      public function §7$+§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§8$B§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = _loc5_ / (12 - 1) * Math.PI;
            _loc7_ = 0.5 * 15 + 15 * (Math.random() * 0.5);
            (§7n§.§6#K§.particles as §%6§).§'!?§(x,y,_loc7_,_loc6_,_loc3_);
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
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            §`!?§(-§6"k§);
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
