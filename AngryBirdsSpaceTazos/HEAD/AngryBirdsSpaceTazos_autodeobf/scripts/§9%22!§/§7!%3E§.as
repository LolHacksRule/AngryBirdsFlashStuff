package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§1!;§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   
   public class §7!>§ extends §1!s§
   {
      
      private static const §]!;§:Number = 10000;
      
      private static const §#,§:Number = 2000;
       
      
      protected var §&!$§:Number = 10000;
      
      public function §7!>§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§1!;§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playDestroyedSound() : void
      {
      }
      
      override protected function playDamagedSound() : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            playCollisionSound();
         }
         return _loc5_;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !specialPowerUsed && §8"?§;
      }
      
      public function updateOutOfCamera() : void
      {
      }
      
      override public function updateBeforeRemoving(param1:§0!s§) : void
      {
         §>!+§.playSoundLua("bird_destroyed");
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(this.§&!$§ > 0)
         {
            this.§&!$§ -= param1;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§&!$§ < 0 && (§ !W§() || !§7E§))
         {
            this.§&!$§ -= param1;
            if(this.§&!$§ < -§#,§)
            {
               §9!V§ = true;
               health = 0;
            }
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
