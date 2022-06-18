package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §6"§ extends §[!k§
   {
      
      private static const §9#R§:int = 2000;
       
      
      private var §,!P§:Number = -1;
      
      private var §-"U§:Number = -1;
      
      private var §4D§:Boolean = false;
      
      public function §6"§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§4D§;
      }
      
      override public function activateSpecialPower(param1:§]!m§, param2:Number, param3:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§<",§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(!this.specialPowerUsed && param3 && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§<",§(§9#R§,param2);
         }
         return _loc6_;
      }
      
      protected function §<",§(param1:Number, param2:§]!m§) : void
      {
         if(param1 != 0 && this.§-"U§ > 0)
         {
            return;
         }
         this.§,!P§ = 0;
         if(param1 == 0)
         {
            this.§-"U§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§-"U§ = param1;
         }
         else
         {
            this.§-"U§ = §9#R§;
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(this.§,!P§ >= 0)
         {
            this.§,!P§ += param1;
            if(this.§,!P§ >= this.§-"U§)
            {
               this.§4D§ = true;
               this.§,!P§ = -1;
               param2.addExplosion(§-!J§.§'"$§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§,!P§ < 0)
         {
            return true;
         }
         if(this.§,!P§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,!P§ > 0)
         {
            return this.§,!P§ / this.§-"U§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return isFlying || this.§-"U§ > 0;
      }
   }
}
