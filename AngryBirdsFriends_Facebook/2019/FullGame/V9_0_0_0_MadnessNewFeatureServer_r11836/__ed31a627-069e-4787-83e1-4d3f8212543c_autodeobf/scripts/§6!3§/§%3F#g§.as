package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §?#g§ extends §,s§
   {
      
      private static const §2V§:int = 2000;
       
      
      private var §&#G§:Number = -1;
      
      private var §"$%§:Number = -1;
      
      private var §<$&§:Boolean = false;
      
      public function §?#g§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§<$&§;
      }
      
      override public function activateSpecialPower(param1:§8$B§, param2:Number, param3:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§<3§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(!this.specialPowerUsed && param3 && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§<3§(§2V§,param2);
         }
         return _loc6_;
      }
      
      protected function §<3§(param1:Number, param2:§8$B§) : void
      {
         if(param1 != 0 && this.§"$%§ > 0)
         {
            return;
         }
         this.§&#G§ = 0;
         if(param1 == 0)
         {
            this.§"$%§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§"$%§ = param1;
         }
         else
         {
            this.§"$%§ = §2V§;
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(this.§&#G§ >= 0)
         {
            this.§&#G§ += param1;
            if(this.§&#G§ >= this.§"$%§)
            {
               this.§<$&§ = true;
               this.§&#G§ = -1;
               param2.addExplosion(§>#x§.§,"p§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§&#G§ < 0)
         {
            return true;
         }
         if(this.§&#G§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&#G§ > 0)
         {
            return this.§&#G§ / this.§"$%§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return isFlying || this.§"$%§ > 0;
      }
   }
}
