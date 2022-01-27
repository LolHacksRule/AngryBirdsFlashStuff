package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §34§ extends §"!h§
   {
      
      private static const §&"9§:Number = 10000;
      
      private static const §]!U§:Number = 2000;
       
      
      protected var §?]§:Number = 10000;
      
      public function §34§(param1:Sprite, param2:§^5§, param3:b2World, param4:§9`§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playDestroyedSound() : void
      {
      }
      
      override protected function playDamagedSound() : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
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
         return !specialPowerUsed && §!!a§;
      }
      
      public function updateOutOfCamera() : void
      {
      }
      
      override public function updateBeforeRemoving(param1:§0!5§) : void
      {
         §'!m§.playSoundLua("bird_destroyed");
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(this.§?]§ > 0)
         {
            this.§?]§ -= param1;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§?]§ < 0 && (§8!Y§() || !§%E§))
         {
            this.§?]§ -= param1;
            if(this.§?]§ < -§]!U§)
            {
               §6"5§ = true;
               health = 0;
            }
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
