package §%A§
{
   import § !D§.§'"u§;
   import §?§.§6!M§;
   
   public class §6"I§
   {
       
      
      protected var §-##§:Number;
      
      protected var §0#[§:Number;
      
      private var §^!_§:Number;
      
      private var §%"Z§:Number;
      
      private var §,!v§:Number;
      
      private var §0#_§:Number;
      
      protected var §?+§:Number;
      
      private var §9#e§:Number;
      
      protected var §6z§:Number;
      
      private var §8$9§:Number;
      
      private var §`"J§:Number;
      
      private var §##v§:Boolean = true;
      
      private var §5#w§:Number;
      
      private var §=!O§:Number;
      
      public function §6"I§(param1:Number, param2:Number, param3:Number, param4:§6!M§, param5:Number = 1)
      {
         super();
         this.§-##§ = param1;
         this.§0#[§ = param2;
         this.§?+§ = this.§8$D§(param4.minAngleEmitter,param4.maxAngleEmitter);
         if(!param4.useAbsoluteAngle)
         {
            this.§?+§ += param3;
         }
         this.§9#e§ = this.§8$D§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§8$D§(param4.minVel,param4.maxVel) / 1000 * §'"u§.§'#e§;
         this.§^!_§ = Math.cos(this.§?+§) * _loc6_;
         this.§%"Z§ = Math.sin(this.§?+§) * _loc6_;
         this.§8$9§ = this.§8$D§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§`"J§ = this.§8$D§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§6z§ = this.§8$9§;
         this.§,!v§ = param4.gravityX / 1000000 * §'"u§.§'#e§;
         this.§0#_§ = param4.gravityY / 1000000 * §'"u§.§'#e§;
         this.§=!O§ = param4.lifeTime * 1000;
         this.§5#w§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§##v§;
      }
      
      public function get §>"&§() : Number
      {
         return this.§5#w§;
      }
      
      public function get §?#c§() : Number
      {
         return this.§=!O§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§^!_§ += this.§,!v§ * param1;
         this.§%"Z§ += this.§0#_§ * param1;
         this.§-##§ += this.§^!_§ * param1;
         this.§0#[§ += this.§%"Z§ * param1;
         if(this.§5#w§ < this.§=!O§)
         {
            this.§6z§ = this.§8$9§ + (this.§`"J§ - this.§8$9§) * (this.§5#w§ / this.§=!O§);
         }
         else
         {
            this.§6z§ = this.§`"J§;
         }
         this.§?+§ += this.§9#e§ * param1;
         this.§5#w§ += param1;
         if(this.§5#w§ >= this.§=!O§)
         {
            this.§##v§ = false;
         }
         return this.§##v§;
      }
      
      protected function §8$D§(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(isNaN(param2))
         {
            param2 = 0;
         }
         return param1 + (param2 - param1) * Math.random();
      }
   }
}
