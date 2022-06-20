package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §&#u§ extends §"7§
   {
       
      
      private var §'"+§:Boolean;
      
      public function §&#u§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§'"+§ = false;
      }
      
      override protected function specialPower(param1:§-!S§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         this.§&"@§();
      }
      
      private function §&"@§() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.§'"+§ = true;
            return;
         }
         this.§'"+§ = false;
         §["u§(launchForce);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!§ ^§ && specialPowerUsed)
         {
            §implements§.setAnimation(§5!G§,false);
         }
         super.render(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(this.§'"+§)
         {
            this.§&"@§();
         }
      }
   }
}
