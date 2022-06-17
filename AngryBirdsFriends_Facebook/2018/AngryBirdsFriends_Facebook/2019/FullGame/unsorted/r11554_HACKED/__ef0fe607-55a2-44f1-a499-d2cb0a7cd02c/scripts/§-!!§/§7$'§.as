package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §7$'§ extends §5"W§
   {
       
      
      private var §[G§:Boolean;
      
      public function §7$'§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§[G§ = false;
      }
      
      override protected function specialPower(param1:§ #'§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         this.§>#!§();
      }
      
      private function §>#!§() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.§[G§ = true;
            return;
         }
         this.§[G§ = false;
         §??§(launchForce);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            §]+§.setAnimation(§>!N§,false);
         }
         super.render(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(this.§[G§)
         {
            this.§>#!§();
         }
      }
   }
}
