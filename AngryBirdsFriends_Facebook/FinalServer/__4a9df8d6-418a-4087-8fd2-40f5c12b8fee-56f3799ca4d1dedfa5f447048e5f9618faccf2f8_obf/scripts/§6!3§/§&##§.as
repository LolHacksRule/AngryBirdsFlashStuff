package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §&##§ extends §,s§
   {
       
      
      private var §&"H§:Boolean;
      
      public function §&##§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§&"H§ = false;
      }
      
      override protected function specialPower(param1:§8$B§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         this.§1#V§();
      }
      
      private function §1#V§() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.§&"H§ = true;
            return;
         }
         this.§&"H§ = false;
         §&!Q§(launchForce);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            §="!§.setAnimation(§,#c§,false);
         }
         super.render(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(this.§&"H§)
         {
            this.§1#V§();
         }
      }
   }
}
