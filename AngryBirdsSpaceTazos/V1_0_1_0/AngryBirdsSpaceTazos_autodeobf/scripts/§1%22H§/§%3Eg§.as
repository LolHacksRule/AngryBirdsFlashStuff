package §1"H§
{
   import §"!&§.§"v§;
   import §'4§.§^g§;
   
   public class §>g§
   {
       
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      private var §`$§:Number;
      
      private var §5>§:Number;
      
      private var §'6§:Number;
      
      private var §%=§:Number;
      
      protected var §"X§:Number;
      
      private var §+!R§:Number;
      
      protected var §=T§:Number;
      
      private var §`"4§:Number;
      
      private var §0! §:Number;
      
      private var §3!4§:Boolean = true;
      
      private var §9S§:Number;
      
      private var §@n§:Number;
      
      public function §>g§(param1:Number, param2:Number, param3:Number, param4:§"v§, param5:Number = 1)
      {
         super();
         this.§""4§ = param1;
         this.§%W§ = param2;
         this.§"X§ = this.§!9§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§+!R§ = this.§!9§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§!9§(param4.minVel,param4.maxVel) / 1000 * §^g§.§5!-§;
         this.§`$§ = Math.cos(this.§"X§) * _loc6_;
         this.§5>§ = Math.sin(this.§"X§) * _loc6_;
         this.§`"4§ = this.§!9§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§0! § = this.§!9§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§=T§ = this.§`"4§;
         this.§'6§ = this.§!9§(param4.gravityX,param4.gravityX) / 1000000 * §^g§.§5!-§;
         this.§%=§ = this.§!9§(param4.gravityY,param4.gravityY) / 1000000 * §^g§.§5!-§;
         this.§@n§ = param4.lifeTime * 1000;
         this.§9S§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§3!4§;
      }
      
      public function get §=!c§() : Number
      {
         return this.§9S§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§`$§ += this.§'6§ * param1;
         this.§5>§ += this.§%=§ * param1;
         this.§""4§ += this.§`$§ * param1;
         this.§%W§ += this.§5>§ * param1;
         if(this.§9S§ < this.§@n§)
         {
            this.§=T§ = this.§`"4§ + (this.§0! § - this.§`"4§) * (this.§9S§ / this.§@n§);
         }
         else
         {
            this.§=T§ = this.§0! §;
         }
         this.§"X§ += this.§+!R§ * param1;
         this.§9S§ += param1;
         if(this.§9S§ >= this.§@n§)
         {
            this.§3!4§ = false;
         }
         return this.§3!4§;
      }
      
      protected function §!9§(param1:Number, param2:Number) : Number
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
