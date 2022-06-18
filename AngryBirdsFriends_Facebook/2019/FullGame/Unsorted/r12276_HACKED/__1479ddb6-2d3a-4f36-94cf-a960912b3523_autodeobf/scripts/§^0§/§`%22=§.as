package §^0§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §`"=§ extends §[# §
   {
      
      private static const §%"R§:int = 2000;
       
      
      private var §&!;§:Number = -1;
      
      private var §]"V§:Number = -1;
      
      private var §`"h§:Boolean = false;
      
      public function §`"=§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§`"h§;
      }
      
      override public function activateSpecialPower(param1:§>"T§, param2:Number, param3:Number) : Boolean
      {
         if(isFlying)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§4!M§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number = super.applyDamage(param1,param2,param3,param4,param5);
         if(!this.specialPowerUsed && param3 && !param3.levelItem.specialtyAvailableAfterCollision)
         {
            this.§4!M§(§%"R§,param2);
         }
         return _loc6_;
      }
      
      protected function §4!M§(param1:Number, param2:§>"T§) : void
      {
         if(param1 != 0 && this.§]"V§ > 0)
         {
            return;
         }
         this.§&!;§ = 0;
         if(param1 == 0)
         {
            this.§]"V§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§]"V§ = param1;
         }
         else
         {
            this.§]"V§ = §%"R§;
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(this.§&!;§ >= 0)
         {
            this.§&!;§ += param1;
            if(this.§&!;§ >= this.§]"V§)
            {
               this.§`"h§ = true;
               this.§&!;§ = -1;
               param2.addExplosion(§0#;§.§ do§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§&!;§ < 0)
         {
            return true;
         }
         if(this.§&!;§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§&!;§ > 0)
         {
            return this.§&!;§ / this.§]"V§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return isFlying || this.§]"V§ > 0;
      }
   }
}
