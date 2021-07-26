package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §%"V§ extends §?$%§
   {
       
      
      private var §[#u§:Boolean;
      
      public function §%"V§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§[#u§ = false;
      }
      
      override protected function get shouldShowCloudOnSpecialPowerUse() : Boolean
      {
         return false;
      }
      
      override protected function addTrailParticles(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = -1 * Math.sin(§`$"§());
         var _loc4_:Number = 1 * Math.cos(§`$"§());
         super.addTrailParticles(param1 + _loc3_,param2 + _loc4_);
      }
      
      override protected function specialPower(param1:§&#V§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(!this.§[#u§)
         {
            this.§[#u§ = true;
            §5#C§();
            return true;
         }
         return false;
      }
      
      override protected function normalize() : void
      {
         if(isFlying)
         {
            §9"6§.setAnimation(§7=§);
         }
         else
         {
            super.normalize();
         }
      }
   }
}
