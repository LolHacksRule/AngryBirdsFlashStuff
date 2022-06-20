package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §"$6§ extends §[# §
   {
       
      
      private var §5!v§:Boolean;
      
      public function §"$6§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§5!v§ = false;
      }
      
      override protected function specialPower(param1:§>"T§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         this.§@!Q§();
      }
      
      private function §@!Q§() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.§5!v§ = true;
            return;
         }
         this.§5!v§ = false;
         §1"v§(launchForce);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            §-"p§.setAnimation(§6!t§,false);
         }
         super.render(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(this.§5!v§)
         {
            this.§@!Q§();
         }
      }
   }
}
