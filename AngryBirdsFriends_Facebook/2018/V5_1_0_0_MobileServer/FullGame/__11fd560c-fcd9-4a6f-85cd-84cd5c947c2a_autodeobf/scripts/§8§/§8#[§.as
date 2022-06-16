package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §8#[§ extends §?$%§
   {
      
      private static const §'"U§:int = 2000;
       
      
      private var §6y§:Number = -1;
      
      private var §>"I§:Number = -1;
      
      private var §""G§:Boolean = false;
      
      public function §8#[§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§""G§;
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§^#U§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§^#U§(§'"U§,param2);
         }
         return _loc5_;
      }
      
      protected function §^#U§(param1:Number, param2:§&#V§) : void
      {
         if(param1 != 0 && this.§>"I§ > 0)
         {
            return;
         }
         this.§6y§ = 0;
         if(param1 == 0)
         {
            this.§>"I§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§>"I§ = param1;
         }
         else
         {
            this.§>"I§ = §'"U§;
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(this.§6y§ >= 0)
         {
            this.§6y§ += param1;
            if(this.§6y§ >= this.§>"I§)
            {
               this.§""G§ = true;
               this.§6y§ = -1;
               param2.addExplosion(§2#%§.§+"H§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§6y§ < 0)
         {
            return true;
         }
         if(this.§6y§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§6y§ > 0)
         {
            return this.§6y§ / this.§>"I§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return isFlying || this.§>"I§ > 0;
      }
   }
}
