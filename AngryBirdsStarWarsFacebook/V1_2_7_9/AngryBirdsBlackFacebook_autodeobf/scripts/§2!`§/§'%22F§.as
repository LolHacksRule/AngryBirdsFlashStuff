package §2!`§
{
   import §5!q§.§3"X§;
   import §>P§.§?L§;
   
   public class §'"F§
   {
       
      
      protected var §]!_§:Number;
      
      protected var §#j§:Number;
      
      private var §[!c§:Number;
      
      private var §<"e§:Number;
      
      private var §!d§:Number;
      
      private var §1!u§:Number;
      
      protected var §`"j§:Number;
      
      private var §=,§:Number;
      
      protected var §"r§:Number;
      
      private var §;"_§:Number;
      
      private var §6o§:Number;
      
      private var §]9§:Boolean = true;
      
      private var §?B§:Number;
      
      private var §%"i§:Number;
      
      public function §'"F§(param1:Number, param2:Number, param3:Number, param4:§?L§, param5:Number = 1)
      {
         super();
         this.§]!_§ = param1;
         this.§#j§ = param2;
         this.§`"j§ = this.§2"'§(param4.minAngleEmitter,param4.maxAngleEmitter) + param3;
         this.§=,§ = this.§2"'§(param4.minAngleVel,param4.maxAngleVel) / 1000;
         var _loc6_:Number = this.§2"'§(param4.minVel,param4.maxVel) / 1000 * §3"X§.§;"l§;
         this.§[!c§ = Math.cos(this.§`"j§) * _loc6_;
         this.§<"e§ = Math.sin(this.§`"j§) * _loc6_;
         this.§;"_§ = this.§2"'§(param4.minScaleBegin,param4.maxScaleBegin) * param5;
         this.§6o§ = this.§2"'§(param4.minScaleEnd,param4.maxScaleEnd) * param5;
         this.§"r§ = this.§;"_§;
         this.§!d§ = this.§2"'§(param4.gravityX,param4.gravityX) / 1000000 * §3"X§.§;"l§;
         this.§1!u§ = this.§2"'§(param4.gravityY,param4.gravityY) / 1000000 * §3"X§.§;"l§;
         this.§%"i§ = param4.lifeTime * 1000;
         this.§?B§ = 0;
      }
      
      public function get isAlive() : Boolean
      {
         return this.§]9§;
      }
      
      public function get §-=§() : Number
      {
         return this.§?B§;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§[!c§ += this.§!d§ * param1;
         this.§<"e§ += this.§1!u§ * param1;
         this.§]!_§ += this.§[!c§ * param1;
         this.§#j§ += this.§<"e§ * param1;
         if(this.§?B§ < this.§%"i§)
         {
            this.§"r§ = this.§;"_§ + (this.§6o§ - this.§;"_§) * (this.§?B§ / this.§%"i§);
         }
         else
         {
            this.§"r§ = this.§6o§;
         }
         this.§`"j§ += this.§=,§ * param1;
         this.§?B§ += param1;
         if(this.§?B§ >= this.§%"i§)
         {
            this.§]9§ = false;
         }
         return this.§]9§;
      }
      
      protected function §2"'§(param1:Number, param2:Number) : Number
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
