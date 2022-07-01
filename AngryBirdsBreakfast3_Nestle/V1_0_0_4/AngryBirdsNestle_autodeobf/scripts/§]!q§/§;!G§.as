package §]!q§
{
   import §-!f§.Sprite;
   import §5!7§.§3!Y§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class §;!G§ extends §,6§
   {
      
      private static const §9-§:int = 2000;
       
      
      private var §,§:Number = -1;
      
      private var §]0§:Number = -1;
      
      private var §5!j§:Boolean = false;
      
      public function §;!G§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function get specialPowerUsed() : Boolean
      {
         return super.specialPowerUsed || this.§5!j§;
      }
      
      override public function activateSpecialPower(param1:§5z§, param2:Number, param3:Number) : Boolean
      {
         if(§[z§)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               return false;
            }
         }
         this.§<q§(0,param1);
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§5z§, param3:§,[§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(!this.specialPowerUsed)
         {
            this.§<q§(§9-§,param2);
         }
         return _loc5_;
      }
      
      protected function §<q§(param1:Number, param2:§5z§) : void
      {
         if(param1 != 0 && this.§]0§ > 0)
         {
            return;
         }
         this.§,§ = 0;
         if(param1 == 0)
         {
            this.§]0§ = 0;
            this.update(0,param2);
         }
         else if(param1 > 0)
         {
            this.§]0§ = param1;
         }
         else
         {
            this.§]0§ = §9-§;
         }
      }
      
      override public function update(param1:Number, param2:§5z§) : void
      {
         super.update(param1,param2);
         if(this.§,§ >= 0)
         {
            this.§,§ += param1;
            if(this.§,§ >= this.§]0§)
            {
               this.§5!j§ = true;
               this.§,§ = -1;
               param2.§9!§(§6!m§.§7!L§,§4!7§().GetPosition().x,§4!7§().GetPosition().y);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(this.specialPowerUsed && this.§,§ < 0)
         {
            return true;
         }
         if(this.§,§ >= 0)
         {
            return false;
         }
         return super.isReadyToBeRemoved(param1);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         if(this.§,§ > 0)
         {
            return this.§,§ / this.§]0§;
         }
         return -1;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return !§&!n§ || this.§]0§ > 0;
      }
   }
}
