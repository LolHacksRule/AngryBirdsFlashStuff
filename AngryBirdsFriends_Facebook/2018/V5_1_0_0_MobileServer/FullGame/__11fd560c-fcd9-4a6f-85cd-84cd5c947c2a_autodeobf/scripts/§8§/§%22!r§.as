package §8§#8
{
   import §!'§.§7#c§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §"!r§ extends §]o§
   {
       
      
      public function §"!r§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = _loc5_ / (12 - 1) * Math.PI;
            _loc7_ = 0.5 * 15 + 15 * (Math.random() * 0.5);
            (§3#U§.§#$4§.particles as §7#c§).§8!N§(x,y,_loc7_,_loc6_,_loc3_);
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
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(this.canActivateSpecialPower)
         {
            §^"h§(-§""5§);
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
