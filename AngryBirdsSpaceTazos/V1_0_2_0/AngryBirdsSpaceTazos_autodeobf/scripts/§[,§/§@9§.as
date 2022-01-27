package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§[e§;
   
   public class §@9§ extends §>!G§
   {
      
      private static const §4Y§:Number = 10000;
      
      private static const §!!]§:Number = 2000;
       
      
      protected var §]?§:Number = 10000;
      
      public function §@9§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§[e§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playDestroyedSound() : void
      {
      }
      
      override protected function playDamagedSound() : void
      {
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
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
         return !specialPowerUsed && §!!K§;
      }
      
      public function updateOutOfCamera() : void
      {
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         §^B§.playSoundLua("bird_destroyed");
         super.updateBeforeRemoving(param1);
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(this.§]?§ > 0)
         {
            this.§]?§ -= param1;
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.§]?§ < 0 && (§#"%§() || !§="C§))
         {
            this.§]?§ -= param1;
            if(this.§]?§ < -§!!]§)
            {
               set = true;
               health = 0;
            }
         }
         return super.isReadyToBeRemoved(param1);
      }
   }
}
