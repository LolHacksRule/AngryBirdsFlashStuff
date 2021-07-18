package §]">§
{
   import §"!&§.§+W§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §6!y§ extends §"!s§
   {
      
      private static const §'m§:Number = 10000;
      
      private static const §]4§:Number = 2000;
       
      
      protected var §<!B§:Number = 10000;
      
      public function §6!y§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playDestroyedSound() : void
      {
      }
      
      override protected function playDamagedSound() : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
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
         return !specialPowerUsed && §?!d§;
      }
      
      public function updateOutOfCamera() : void
      {
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         §2"!§.playSoundLua("bird_destroyed");
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(this.§<!B§ > 0)
         {
            this.§<!B§ -= param1;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§<!B§ < 0 && (§%!8§() || !§>""§))
         {
            this.§<!B§ -= param1;
            if(this.§<!B§ < -§]4§)
            {
               §-?§ = true;
               health = 0;
            }
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
