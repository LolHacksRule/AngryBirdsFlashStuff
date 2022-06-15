package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §7"i§ extends §[!k§
   {
       
      
      private var §,$#§:Boolean;
      
      public function §7"i§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§,$#§ = false;
      }
      
      override protected function specialPower(param1:§]!m§, param2:Number = 0, param3:Number = 0) : void
      {
         super.specialPower(param1,param2,param3);
         this.§4`§();
      }
      
      private function §4`§() : void
      {
         if(getBody().GetLinearVelocity().x == 0 && getBody().GetLinearVelocity().y == 0)
         {
            this.§,$#§ = true;
            return;
         }
         this.§,$#§ = false;
         §9#O§(launchForce);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(!isFlying && specialPowerUsed)
         {
            §]$"§.setAnimation(§+$=§,false);
         }
         super.render(param1,param2,param3);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(this.§,$#§)
         {
            this.§4`§();
         }
      }
   }
}
