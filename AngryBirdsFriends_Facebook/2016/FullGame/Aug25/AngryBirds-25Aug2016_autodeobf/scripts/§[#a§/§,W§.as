package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §,W§ extends §-k§
   {
      
      private static const §4"$§:int = 2000;
       
      
      private var §5#8§:Number = -1;
      
      private var §?#m§:Number = -1;
      
      private var §@#>§:Boolean = false;
      
      public function §,W§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§@#>§;
      }
      
      override public function activateSpecialPower(param1:§7!O§, param2:Number, param3:Number) : Boolean
      {
         if(§>6§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§9#<§(0,param1);
         handleLevelEndCheck();
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§9#<§(§4"$§,param2);
         }
         return _loc5_;
      }
      
      protected function §9#<§(param1:Number, param2:§7!O§) : void
      {
         if(param1 != 0 && this.§?#m§ > 0)
         {
            return;
         }
         this.§5#8§ = 0;
         if(param1 == 0)
         {
            this.§?#m§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§?#m§ = param1;
         }
         else
         {
            this.§?#m§ = §4"$§;
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(this.§5#8§ >= 0)
         {
            this.§5#8§ += param1;
            if(this.§5#8§ >= this.§?#m§)
            {
               this.§@#>§ = true;
               this.§5#8§ = -1;
               param2.§#Q§(§<#;§.§,"%§,getBody().GetPosition().x,getBody().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§5#8§ < 0)
         {
            return true;
         }
         if(this.§5#8§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§5#8§ > 0)
         {
            return this.§5#8§ / this.§?#m§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return §>6§ || this.§?#m§ > 0;
      }
   }
}
