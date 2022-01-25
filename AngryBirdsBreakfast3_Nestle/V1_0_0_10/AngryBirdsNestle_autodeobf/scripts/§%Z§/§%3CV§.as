package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §<V§ extends §=!V§
   {
      
      private static const §8"6§:int = 2000;
       
      
      private var §-!-§:Number = -1;
      
      private var §#!7§:Number = -1;
      
      private var §'!<§:Boolean = false;
      
      public function §<V§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§'!<§;
      }
      
      override public function activateSpecialPower(param1:§8!m§, param2:Number, param3:Number) : Boolean
      {
         if(§4c§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§]!N§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§8!m§, param3:§&!-§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§]!N§(§8"6§,param2);
         }
         return _loc5_;
      }
      
      protected function §]!N§(param1:Number, param2:§8!m§) : void
      {
         if(param1 != 0 && this.§#!7§ > 0)
         {
            return;
         }
         this.§-!-§ = 0;
         if(param1 == 0)
         {
            this.§#!7§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§#!7§ = param1;
         }
         else
         {
            this.§#!7§ = §8"6§;
         }
      }
      
      override public function update(param1:Number, param2:§8!m§) : void
      {
         super.update(param1,param2);
         if(this.§-!-§ >= 0)
         {
            this.§-!-§ += param1;
            if(this.§-!-§ >= this.§#!7§)
            {
               this.§'!<§ = true;
               this.§-!-§ = -1;
               param2.§8!U§(§9!,§.§#L§,§-!N§().GetPosition().x,§-!N§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§-!-§ < 0)
         {
            return true;
         }
         if(this.§-!-§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§-!-§ > 0)
         {
            return this.§-!-§ / this.§#!7§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §4c§ || this.§#!7§ > 0;
      }
   }
}
