package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §7]§ extends §?$%§
   {
       
      
      private var §3"J§:Boolean;
      
      public function §7]§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§3"J§ = false;
      }
      
      override protected function specialPower(param1:§&#V§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         this.§3w§();
      }
      
      private function §3w§() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.§3"J§ = true;
            return;
         }
         this.§3"J§ = false;
         §9"O§(launchForce);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            §9"6§.setAnimation(§<#J§,false);
         }
         super.render(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(this.§3"J§)
         {
            this.§3w§();
         }
      }
   }
}
